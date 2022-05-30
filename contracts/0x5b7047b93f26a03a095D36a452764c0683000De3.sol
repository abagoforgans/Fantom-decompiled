contract main {




// =====================  Runtime code  =====================


address sub_b8c6ec08Address;
address sub_b47cd7b3Address;
uint32 stor2;
address owner;
uint256 stor2;
address sub_c44421c9Address;

function owner() {
    return address(owner)
}

function sub_b47cd7b3(?) {
    return sub_b47cd7b3Address
}

function sub_b8c6ec08(?) {
    return sub_b8c6ec08Address
}

function sub_c44421c9(?) {
    return sub_c44421c9Address
}

function _fallback() payable {
    revert
}

function sub_2a685436(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(sub_c44421c9Address)
    call sub_c44421c9Address.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferTokens(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
