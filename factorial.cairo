#[starknet::contract]
mod Factorial {
    use starknet::{ContractAddress, SyscallResult, SyscallResultTraitImpl};
    use starknet::syscalls::call_contract_syscall;

    #[storage]
    struct Storage{}

    #[external(v0)]
    fn main(ref self: ContractState, a: felt252) -> felt252 {
        a
    }
}