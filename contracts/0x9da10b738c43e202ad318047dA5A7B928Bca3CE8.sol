contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1;
address stor1;
uint256 stor1;
address traderAddress;

function getTrader() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return traderAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_03fa1417(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    traderAddress = arg1
}

function withdrawERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getEstimatedMinAmount(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if traderAddress != msg.sender:
        revert with 0, 'Caller is not trader'
    mem[192] = arg3
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = arg1
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(address(stor1))
    staticcall address(stor1).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _25 = mem[224 len 4], Mask(224, 32, arg1) >> 32
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
    _28 = mem[_25 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_25 + 224])] = mem[_25 + 256 len floor32(mem[_25 + 224])]
    require 2 < mem[ceil32(return_data.size) + 224]
    mem[(32 * _28) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
    return memory
      from (32 * _28) + ceil32(return_data.size) + 256
       len 32
}

function sub_f475ef85(?) payable {
    require calldata.size - 4 >= 96
    if traderAddress != msg.sender:
        revert with 0, 'Caller is not trader'
    require ext_code.size(0x74b23882a30290451a17c44f4f05243b6b58c76d)
    staticcall 0x74b23882a30290451a17c44f4f05243b6b58c76d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe436f6e747261637420646f6573206e6f74206861766520656e6f7567682066756e647320666f7220746869732074726164,
                    mem[214 len 14]
    require ext_code.size(0x74b23882a30290451a17c44f4f05243b6b58c76d)
    staticcall 0x74b23882a30290451a17c44f4f05243b6b58c76d.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[132] = address(stor1)
    mem[164] = ext_call.return_data[0] + arg1
    mem[96] = 68
    mem[132 len 28] = Mask(224, 0, stor1)
    mem[128 len 4] = approve(address rg1, uint256 rg2)
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x74b23882a30290451a17c44f4f05243b6b58c76d) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
    mem[352 len 4] = 0
    call 0x74b23882a30290451a17c44f4f05243b6b58c76d with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] + arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0] + arg1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if traderAddress != msg.sender:
            revert with 0, 'Caller is not trader'
        mem[356] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        mem[388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[392] = arg1
        mem[424] = arg2
        mem[488] = this.address
        mem[520] = arg3
        mem[456] = 160
        mem[552] = 3
        mem[584 len 0] = None
        require ext_code.size(address(stor1))
        call address(stor1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=3, data=mem[584 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 388
        require return_data.size >= 32
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388] <= 4294967296 and mem[388 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 32 <= return_data.size
    else:
        mem[260] = return_data.size
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if traderAddress != msg.sender:
            revert with 0, 'Caller is not trader'
        mem[ceil32(return_data.size) + 357] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
        mem[ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 393] = arg1
        mem[ceil32(return_data.size) + 425] = arg2
        mem[ceil32(return_data.size) + 489] = this.address
        mem[ceil32(return_data.size) + 521] = arg3
        mem[ceil32(return_data.size) + 457] = 160
        mem[ceil32(return_data.size) + 553] = 3
        mem[ceil32(return_data.size) + 585 len 0] = None
        require ext_code.size(address(stor1))
        call address(stor1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=3, data=mem[ceil32(return_data.size) + 585 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
}

function sub_2746fbfc(?) payable {
    require calldata.size - 4 >= 96
    if traderAddress != msg.sender:
        revert with 0, 'Caller is not trader'
    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
    staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe436f6e747261637420646f6573206e6f74206861766520656e6f7567682066756e647320666f7220746869732074726164,
                    mem[214 len 14]
    require ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e)
    staticcall 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[132] = address(stor1)
    mem[164] = ext_call.return_data[0] + arg1
    mem[96] = 68
    mem[132 len 28] = Mask(224, 0, stor1)
    mem[128 len 4] = approve(address rg1, uint256 rg2)
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
    mem[352 len 4] = 0
    call 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] + arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0] + arg1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if traderAddress != msg.sender:
            revert with 0, 'Caller is not trader'
        mem[356] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        mem[388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[392] = arg1
        mem[424] = arg2
        mem[488] = this.address
        mem[520] = arg3
        mem[456] = 160
        mem[552] = 3
        mem[584 len 0] = None
        require ext_code.size(address(stor1))
        call address(stor1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=3, data=mem[584 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 388
        require return_data.size >= 32
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388] <= 4294967296 and mem[388 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 32 <= return_data.size
    else:
        mem[260] = return_data.size
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if traderAddress != msg.sender:
            revert with 0, 'Caller is not trader'
        mem[ceil32(return_data.size) + 357] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        mem[ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 393] = arg1
        mem[ceil32(return_data.size) + 425] = arg2
        mem[ceil32(return_data.size) + 489] = this.address
        mem[ceil32(return_data.size) + 521] = arg3
        mem[ceil32(return_data.size) + 457] = 160
        mem[ceil32(return_data.size) + 553] = 3
        mem[ceil32(return_data.size) + 585 len 0] = None
        require ext_code.size(address(stor1))
        call address(stor1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=3, data=mem[ceil32(return_data.size) + 585 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
}

function sub_a78f088b(?) payable {
    require calldata.size - 4 >= 96
    if traderAddress != msg.sender:
        revert with 0, 'Caller is not trader'
    require ext_code.size(0x74b23882a30290451a17c44f4f05243b6b58c76d)
    staticcall 0x74b23882a30290451a17c44f4f05243b6b58c76d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe436f6e747261637420646f6573206e6f74206861766520656e6f7567682066756e647320666f7220746869732074726164,
                    mem[214 len 14]
    require ext_code.size(0x74b23882a30290451a17c44f4f05243b6b58c76d)
    staticcall 0x74b23882a30290451a17c44f4f05243b6b58c76d.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[132] = address(stor1)
    mem[164] = ext_call.return_data[0] + arg1
    mem[96] = 68
    mem[132 len 28] = Mask(224, 0, stor1)
    mem[128 len 4] = approve(address rg1, uint256 rg2)
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x74b23882a30290451a17c44f4f05243b6b58c76d) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
    mem[352 len 4] = 0
    call 0x74b23882a30290451a17c44f4f05243b6b58c76d with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] + arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0] + arg1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if traderAddress != msg.sender:
            revert with 0, 'Caller is not trader'
        mem[356] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
        mem[388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[392] = arg1
        mem[424] = arg2
        mem[488] = this.address
        mem[520] = arg3
        mem[456] = 160
        mem[552] = 3
        mem[584 len 0] = None
        require ext_code.size(address(stor1))
        call address(stor1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=3, data=mem[584 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 388
        require return_data.size >= 32
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388] <= 4294967296 and mem[388 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 32 <= return_data.size
    else:
        mem[260] = return_data.size
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if traderAddress != msg.sender:
            revert with 0, 'Caller is not trader'
        mem[ceil32(return_data.size) + 357] = 0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e
        mem[ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 393] = arg1
        mem[ceil32(return_data.size) + 425] = arg2
        mem[ceil32(return_data.size) + 489] = this.address
        mem[ceil32(return_data.size) + 521] = arg3
        mem[ceil32(return_data.size) + 457] = 160
        mem[ceil32(return_data.size) + 553] = 3
        mem[ceil32(return_data.size) + 585 len 0] = None
        require ext_code.size(address(stor1))
        call address(stor1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=3, data=mem[ceil32(return_data.size) + 585 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
}

function swapUSDCForETH(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if traderAddress != msg.sender:
        revert with 0, 'Caller is not trader'
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe436f6e747261637420646f6573206e6f74206861766520656e6f7567682066756e647320666f7220746869732074726164,
                    mem[214 len 14]
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    mem[132] = address(stor1)
    mem[164] = ext_call.return_data[0] + arg1
    mem[96] = 68
    mem[132 len 28] = Mask(224, 0, stor1)
    mem[128 len 4] = approve(address rg1, uint256 rg2)
    mem[196] = 32
    mem[228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
    mem[352 len 4] = 0
    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] + arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0] + arg1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if traderAddress != msg.sender:
            revert with 0, 'Caller is not trader'
        mem[356] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        mem[388] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[392] = arg1
        mem[424] = arg2
        mem[488] = this.address
        mem[520] = arg3
        mem[456] = 160
        mem[552] = 3
        mem[584 len 0] = None
        require ext_code.size(address(stor1))
        call address(stor1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=3, data=mem[584 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 388
        require return_data.size >= 32
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[388 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388] <= 4294967296 and mem[388 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[388 len 4], Mask(224, 32, arg1) >> 32 + 388]) + 32 <= return_data.size
    else:
        mem[260] = return_data.size
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
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if traderAddress != msg.sender:
            revert with 0, 'Caller is not trader'
        mem[ceil32(return_data.size) + 357] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        mem[ceil32(return_data.size) + 389] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 393] = arg1
        mem[ceil32(return_data.size) + 425] = arg2
        mem[ceil32(return_data.size) + 489] = this.address
        mem[ceil32(return_data.size) + 521] = arg3
        mem[ceil32(return_data.size) + 457] = 160
        mem[ceil32(return_data.size) + 553] = 3
        mem[ceil32(return_data.size) + 585 len 0] = None
        require ext_code.size(address(stor1))
        call address(stor1).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=3, data=mem[ceil32(return_data.size) + 585 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], Mask(224, 32, arg1) >> 32 + ceil32(return_data.size) + 389]) + 32 <= return_data.size
}



}
