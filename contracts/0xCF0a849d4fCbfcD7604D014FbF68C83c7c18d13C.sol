contract main {




// =====================  Runtime code  =====================


address owner;
address sub_4fb3ccc5Address;
uint256 stor2;
mapping of struct withdrawals;

function viewWithdrawal(uint256 arg1) {
    require calldata.size - 4 >= 32
    return withdrawals[arg1].field_0, withdrawals[arg1].field_256, withdrawals[arg1].field_512, bool(withdrawals[arg1].field_768)
}

function sub_4fb3ccc5(?) {
    return sub_4fb3ccc5Address
}

function withdrawals(uint256 arg1) {
    require calldata.size - 4 >= 32
    return withdrawals[arg1].field_0, withdrawals[arg1].field_256, withdrawals[arg1].field_512, bool(withdrawals[arg1].field_768)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_48ea7127(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4fb3ccc5Address = arg1
    return 1
}

function sub_cdbf8656(?) {
    require calldata.size - 4 >= 32
    if sub_4fb3ccc5Address != msg.sender:
        revert with 0, 'not authorized'
    withdrawals[arg1].field_768 = 1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawFTM(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    withdrawals[stor2].field_0 = arg2
    withdrawals[stor2].field_256 = 0
    withdrawals[stor2].field_512 = 0
    withdrawals[stor2].field_512 = block.timestamp
    withdrawals[stor2].field_768 = 0
    stor2++
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = arg1
    mem[160] = block.timestamp
    mem[192] = 0
    withdrawals[stor2].field_0 = arg3
    withdrawals[stor2].field_256 = arg1
    withdrawals[stor2].field_512 = block.timestamp
    withdrawals[stor2].field_768 = 0
    stor2++
    mem[260] = arg2
    mem[292] = arg3
    mem[224] = 68
    mem[260 len 28] = address(arg2) << 64
    mem[256 len 4] = unknown_0xa9059cbb(?????)
    mem[324] = 32
    mem[356] = 'SafeERC20: low-level call failed'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[388 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    mem[480 len 4] = 0
    mem[452 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[452 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg3 > 0:
                revert with memory
                  from 128
                   len arg3
            revert with 0, 'SafeERC20: low-level call failed'
        if arg3 > 0:
            require arg3 >= 32
            if not arg1:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[498 len 22]
    else:
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
}



}
