#[starknet::contract]
mod Factorial {
    #[storage]
    struct Storage{}

    #[external(v0)]
    fn factorial(ref self: ContractState) -> felt252 {
        let a = 0x1;
        let b = 0x2;
        let c = a * b;
        c
    }
}
