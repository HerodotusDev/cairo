#[starknet::contract]
mod Factorial {
    #[storage]
    struct Storage{}

    #[external(v0)]
    fn factorial(ref self: ContractState) -> felt252 {
        0xfffffff0f
    }
}
