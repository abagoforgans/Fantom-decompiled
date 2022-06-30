contract main {




// =====================  Runtime code  =====================


#
#  - exchange(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint8 arg12, bytes32 arg13, bytes32 arg14, uint256 arg15, uint8 arg16, bytes32 arg17, bytes32 arg18, uint256 arg19, address arg20)
#
const sub_55eda4e8(?) = 57005


address owner;
address wethAddress;
address beneficiaryAddress;
address buyerFeeSignerAddress;
mapping of uint8 stor5;
mapping of struct sub_ecb688bc;
address transferProxyAddress;
address transferProxyForDeprecatedAddress;
address erc20TransferProxyAddress;
address stateAddress;
address ordersHolderAddress;

function transferProxyForDeprecated() {
    return transferProxyForDeprecatedAddress
}

function sub_184046c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function beneficiary() {
    return beneficiaryAddress
}

function weth() {
    return wethAddress
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

function sub_ecb688bc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require sub_ecb688bc[arg1][arg2].field_1024 < 2
    return sub_ecb688bc[arg1][arg2].field_0, 
           sub_ecb688bc[arg1][arg2].field_512,
           sub_ecb688bc[arg1][arg2].field_768,
           sub_ecb688bc[arg1][arg2].field_1024
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

function setWeth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'weth error'
    wethAddress = arg1
}

function setNonStandardERC165Contract(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(arg2)
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

function sub_9c17b9a2(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ecb688bc[address(arg1)][address(arg2)].field_0 = 0
    sub_ecb688bc[address(arg1)][address(arg2)].field_256 = 0
    idx = 0
    while sub_ecb688bc[address(arg1)][address(arg2)].field_256 > idx:
        sub_ecb688bc[address(arg1)][address(arg2)][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    sub_ecb688bc[address(arg1)][address(arg2)].field_512 = 0
    sub_ecb688bc[address(arg1)][address(arg2)].field_768 = 0
    sub_ecb688bc[address(arg1)][address(arg2)].field_1024 = 0
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
    mem[1024 len 64] = code.data[23639 len 64]
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
    mem[1056 len 64] = code.data[23639 len 64]
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

function sub_3aba08a4(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 160
    require ('cd', 36).length == address(('cd', 36).length)
    require ('cd', 36)[0] <= test266151307()
    require cd[36] + ('cd', 36)[0] + 35 < calldata.size
    require cd[(cd[36] + ('cd', 36)[0] + 4)] <= test266151307()
    require (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 288 <= test266151307() and (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 288 >= 256
    require cd[36] + ('cd', 36)[0] + (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36)[0] + 36
    t = 288
    while idx < cd[(cd[36] + ('cd', 36)[0] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36)[1] == ('cd', 36)[1]
    require ('cd', 36)[2] == ('cd', 36)[2]
    require ('cd', 36)[3] < 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'wrong address'
    require cd[(cd[36] + ('cd', 36)[0] + 4)] - 1 < cd[(cd[36] + ('cd', 36)[0] + 4)]
    if not mem[(32 * cd[(cd[36] + ('cd', 36)[0] + 4)] - 1) + 300 len 20]:
        revert with 0, 'wrong asset'
    require 0 < cd[(cd[36] + ('cd', 36)[0] + 4)]
    sub_ecb688bc[address(cd[4])][mem[300 len 20]].field_0 = address(('cd', 36).length)
    sub_ecb688bc[address(cd[4])][mem[300 len 20]].field_256 = cd[(cd[36] + ('cd', 36)[0] + 4)]
    if not cd[(cd[36] + ('cd', 36)[0] + 4)]:
        idx = 0
        while sub_ecb688bc[address(cd[4])][mem[300 len 20]].field_256 > idx:
            sub_ecb688bc[address(cd[4])][mem[300 len 20]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 288
        while (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 288 > idx:
            sub_ecb688bc[address(cd[4])][mem[300 len 20]][s + 1].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * cd[(cd[36] + ('cd', 36)[0] + 4)]) + 31) >> 5
        while sub_ecb688bc[address(cd[4])][mem[300 len 20]].field_256 > idx:
            sub_ecb688bc[address(cd[4])][mem[300 len 20]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_ecb688bc[address(cd[4])][mem[300 len 20]].field_512 = ('cd', 36)[1]
    sub_ecb688bc[address(cd[4])][mem[300 len 20]].field_768 = ('cd', 36)[2]
    require ('cd', 36)[3] <= 1
    sub_ecb688bc[address(cd[4])][mem[300 len 20]].field_1024 = ('cd', 36)[3] or Mask(248, 8, sub_ecb688bc[address(cd[4])][mem[300 len 20]].field_1024)
}



}
