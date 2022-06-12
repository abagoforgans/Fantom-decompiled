contract main {




// =====================  Runtime code  =====================


#
#  - exchange(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint8 arg12, bytes32 arg13, bytes32 arg14, uint256 arg15, uint8 arg16, bytes32 arg17, bytes32 arg18, uint256 arg19, address arg20)
#
address owner;
address beneficiaryAddress;
address buyerFeeSignerAddress;
address transferProxyAddress;
address transferProxyForDeprecatedAddress;
address erc20TransferProxyAddress;
address stateAddress;
address ordersHolderAddress;

function transferProxyForDeprecated() {
    return transferProxyForDeprecatedAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function buyerFeeSigner() {
    return buyerFeeSignerAddress
}

function transferProxy() {
    return transferProxyAddress
}

function owner() {
    return owner
}

function ordersHolder() {
    return ordersHolderAddress
}

function state() {
    return stateAddress
}

function erc20TransferProxy() {
    return erc20TransferProxyAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beneficiaryAddress = arg1
}

function setBuyerFeeSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyerFeeSignerAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function cancel(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    if arg1 != msg.sender:
        revert with 0, 'not an owner'
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 < 5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 < 5
    require ext_code.size(stateAddress)
    call stateAddress.0x3a076e9a with:
         gas gas_remaining wei
        args 0, 0, arg2, address(arg3), arg4, arg5, address(arg6), arg7, arg8, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg3 == arg3
    require arg6 == arg6
    emit Cancel(address(msg.sender), address(arg6), arg7, arg2, arg3, arg4);
}

function prepareMessage(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8, uint256 arg9, uint256 arg10, uint256 arg11) {
    require calldata.size - 4 >= 352
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require calldata.size - 68 >= 96
    require arg3 == arg3
    require arg4 == arg4
    require arg5 < 5
    require calldata.size - 164 >= 96
    require arg6 == arg6
    require arg7 == arg7
    require arg8 < 5
    require arg9 == arg9
    require arg10 == arg10
    require arg11 == arg11
    require arg5 < 5
    require arg8 < 5
    mem[1024 len 64] = code.data[16598 len 64]
    idx = 0
    while idx < 32:
        require 2 * idx < 64
        mem[(2 * idx) + 1024 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < 32
        require (2 * idx) + 1 < 64
        mem[(2 * idx) + 1025 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, 64, mem[1024 len 64]
}

function prepareBuyerFeeMessage(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12) {
    require calldata.size - 4 >= 384
    require calldata.size - 4 >= 352
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require calldata.size - 68 >= 96
    require arg3 == arg3
    require arg4 == arg4
    require arg5 < 5
    require calldata.size - 164 >= 96
    require arg6 == arg6
    require arg7 == arg7
    require arg8 < 5
    require arg9 == arg9
    require arg10 == arg10
    require arg11 == arg11
    require arg12 == arg12
    require arg5 < 5
    require arg8 < 5
    mem[1056 len 64] = code.data[16598 len 64]
    idx = 0
    while idx < 32:
        require 2 * idx < 64
        mem[(2 * idx) + 1056 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < 32
        require (2 * idx) + 1 < 64
        mem[(2 * idx) + 1057 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, 64, mem[1056 len 64]
}



}
