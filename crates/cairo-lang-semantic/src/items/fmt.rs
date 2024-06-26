use cairo_lang_debug::DebugWithDb;
use cairo_lang_defs::ids::NamedLanguageElementId;
use cairo_lang_utils::Upcast;

use super::constant::ConstValue;
use crate::db::SemanticGroup;
use crate::{ConcreteVariant, MatchArmSelector};

impl<Db: ?Sized + Upcast<dyn SemanticGroup + 'static>> DebugWithDb<Db> for ConstValue {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>, db: &Db) -> std::fmt::Result {
        let db = db.upcast();
        match self {
            ConstValue::Int(value) => write!(f, "{}", value),
            ConstValue::Struct(inner) => {
                write!(f, "{{")?;
                let mut inner = inner.iter().peekable();
                while let Some((ty, value)) = inner.next() {
                    write!(f, " ")?;
                    value.fmt(f, db)?;
                    write!(f, ": ")?;
                    ty.fmt(f, db.elongate())?;
                    if inner.peek().is_some() {
                        write!(f, ",")?;
                    } else {
                        write!(f, " ")?;
                    }
                }
                write!(f, "}}")
            }
            ConstValue::Enum(variant, inner) => {
                variant.fmt(f, db)?;
                write!(f, "(")?;
                inner.fmt(f, db)?;
                write!(f, ")")
            }
            ConstValue::NonZero(_, value) => value.fmt(f, db),
            ConstValue::Boxed(_, value) => {
                value.fmt(f, db)?;
                write!(f, ".into_box()")
            }
            ConstValue::Missing(_) => write!(f, "missing"),
        }
    }
}

impl<Db: ?Sized + Upcast<dyn SemanticGroup + 'static>> DebugWithDb<Db> for ConcreteVariant {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>, db: &Db) -> std::fmt::Result {
        let db = db.upcast();
        let enum_name = self.concrete_enum_id.enum_id(db.upcast()).name(db.upcast());
        let variant_name = self.id.name(db.upcast());
        write!(f, "{enum_name}::{variant_name}")
    }
}

impl<Db: ?Sized + Upcast<dyn SemanticGroup + 'static>> DebugWithDb<Db> for MatchArmSelector {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>, db: &Db) -> std::fmt::Result {
        let db = db.upcast();
        match self {
            MatchArmSelector::VariantId(variant_id) => {
                write!(f, "{:?}", variant_id.debug(db))
            }
            MatchArmSelector::Value(s) => {
                write!(f, "{:?}", s.value)
            }
        }
    }
}
