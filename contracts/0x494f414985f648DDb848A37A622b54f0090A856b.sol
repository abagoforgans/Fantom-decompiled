contract main {




// =====================  Runtime code  =====================


array of address sub_e5c7eb4a;
mapping of struct sub_70e661b3;
mapping of struct sub_2b00a8d3;
mapping of address sub_7664a7e8;

function sub_2b00a8d3(?) payable {
    require calldata.size - 4 >= 32
    return sub_2b00a8d3[arg1].field_0, sub_2b00a8d3[arg1].field_256, sub_2b00a8d3[arg1].field_512, sub_2b00a8d3[arg1].field_768
}

function sub_70e661b3(?) payable {
    require calldata.size - 4 >= 32
    return sub_70e661b3[arg1].field_0, sub_70e661b3[arg1].field_256, sub_70e661b3[arg1].field_512, sub_70e661b3[arg1].field_768
}

function sub_7664a7e8(?) payable {
    require calldata.size - 4 >= 32
    return sub_7664a7e8[arg1]
}

function lockableToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e5c7eb4a.length
    return sub_e5c7eb4a[arg1]
}

function sub_e5c7eb4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e5c7eb4a.length
    return sub_e5c7eb4a[arg1]
}

function _fallback() payable {
    revert
}

function sub_acfb4272(?) payable {
    require calldata.size - 4 >= 96
    revert with 0, 'not implemented'
}

function lockedAmount(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_e5c7eb4a.length
    require ext_code.size(sub_7664a7e8[stor0[arg2]])
    staticcall sub_7664a7e8[stor0[arg2]].0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claimReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.poolAddress(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).claim_rewards() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.poolAddress(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x2e1a7d4d with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.poolAddress(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x79b846fd with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg3 + ext_call.return_data[0]) >> 32
    mem[324 len 0] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg3 + ext_call.return_data[0]) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64, 0, arg3 + ext_call.return_data[0]
        if not approve(address arg1, uint256 arg2), address(ext_call.return_data[0]) << 64:
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(arg1)
    staticcall arg1.poolAddress(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
