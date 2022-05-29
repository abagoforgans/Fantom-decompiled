contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


array of struct stor0;
array of uint256 stor1;
uint256 stor2;
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f2324ef1(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require 0 < stor1.length
    require 1 < stor1.length
    require 0 < stor0.length
    require 1 < stor0.length
    require 0 < stor1.length
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor1.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed token0_dex0'
    require 1 < stor1.length
    require ext_code.size(address(stor0.field_256))
    call address(stor0.field_256).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor1.field_256), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed token1_dex1'
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    mem[196] = msg.sender
    mem[228] = stor2
    mem[164] = 160
    mem[260] = stor0.length
    if not stor0.length:
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(arg1), arg2, 160, msg.sender, stor2, stor0.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _23 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        _26 = mem[_23 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_23 + 96])] = mem[_23 + 128 len floor32(mem[_23 + 96])]
        require 1 < mem[ceil32(return_data.size) + 96]
        _47 = mem[ceil32(return_data.size) + 160]
        mem[(32 * _26) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _26) + ceil32(return_data.size) + 132] = _47
        mem[(32 * _26) + ceil32(return_data.size) + 164] = arg2
        mem[(32 * _26) + ceil32(return_data.size) + 228] = msg.sender
        mem[(32 * _26) + ceil32(return_data.size) + 260] = stor2
        mem[(32 * _26) + ceil32(return_data.size) + 196] = 160
        mem[(32 * _26) + ceil32(return_data.size) + 292] = stor0.length
        if not stor0.length:
            require ext_code.size(address(stor1.field_256))
            call address(stor1.field_256).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _47, arg2, 160, msg.sender, stor2, stor0.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _26) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _26) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _52 = mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32
            require mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 <= 4294967296
            require mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * _26) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * _26) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _26) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * _26) + ceil32(return_data.size) + 128]
            mem[(32 * _26) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_52 + (32 * _26) + ceil32(return_data.size) + 128])] = mem[_52 + (32 * _26) + ceil32(return_data.size) + 160 len floor32(mem[_52 + (32 * _26) + ceil32(return_data.size) + 128])]
        else:
            mem[0] = 0
            mem[(32 * _26) + ceil32(return_data.size) + 324] = address(stor0.field_0)
            idx = (32 * _26) + ceil32(return_data.size) + 324
            s = 0
            while (32 * _26) + ceil32(return_data.size) + (32 * stor0.length) + 324 > idx + 32:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(stor1.field_256))
            call address(stor1.field_256).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _47, arg2, Array(len=stor0.length, data=mem[(32 * _26) + ceil32(return_data.size) + 324 len 32 * stor0.length]), msg.sender, stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _26) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _26) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _100 = mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32
            require mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 <= 4294967296
            require mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * _26) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * _26) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _26) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _26) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _47) >> 32 + (32 * _26) + ceil32(return_data.size) + 128]
            mem[(32 * _26) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_100 + (32 * _26) + ceil32(return_data.size) + 128])] = mem[_100 + (32 * _26) + ceil32(return_data.size) + 160 len floor32(mem[_100 + (32 * _26) + ceil32(return_data.size) + 128])]
        require 1 < mem[(32 * _26) + (2 * ceil32(return_data.size)) + 128]
        emit 0x96356f9c: Array(len=15, data='amount_buy_dex0'), _47
        emit 0x96356f9c: Array(len=16, data='amount_sell_dex1'), mem[(32 * _26) + (2 * ceil32(return_data.size)) + 192]
    else:
        mem[0] = 0
        mem[292] = address(stor0.field_0)
        idx = 292
        s = 0
        while (32 * stor0.length) + 292 > idx + 32:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 0, uint32(arg1), arg2, 160, msg.sender, stor2, stor0.length, mem[292 len 32 * stor0.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _72 = mem[96 len 4], Mask(224, 32, arg1) >> 32
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        _75 = mem[_72 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_72 + 96])] = mem[_72 + 128 len floor32(mem[_72 + 96])]
        require 1 < mem[ceil32(return_data.size) + 96]
        _98 = mem[ceil32(return_data.size) + 160]
        mem[(32 * _75) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _75) + ceil32(return_data.size) + 132] = _98
        mem[(32 * _75) + ceil32(return_data.size) + 164] = arg2
        mem[(32 * _75) + ceil32(return_data.size) + 228] = msg.sender
        mem[(32 * _75) + ceil32(return_data.size) + 260] = stor2
        mem[(32 * _75) + ceil32(return_data.size) + 196] = 160
        mem[(32 * _75) + ceil32(return_data.size) + 292] = stor0.length
        if not stor0.length:
            require ext_code.size(address(stor1.field_256))
            call address(stor1.field_256).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _98, arg2, 160, msg.sender, stor2, stor0.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _75) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _75) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _107 = mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32
            require mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 <= 4294967296
            require mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + (32 * _75) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + (32 * mem[mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + (32 * _75) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _75) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + (32 * _75) + ceil32(return_data.size) + 128]
            mem[(32 * _75) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_107 + (32 * _75) + ceil32(return_data.size) + 128])] = mem[_107 + (32 * _75) + ceil32(return_data.size) + 160 len floor32(mem[_107 + (32 * _75) + ceil32(return_data.size) + 128])]
        else:
            mem[0] = 0
            mem[(32 * _75) + ceil32(return_data.size) + 324] = address(stor0.field_0)
            idx = (32 * _75) + ceil32(return_data.size) + 324
            s = 0
            while (32 * _75) + ceil32(return_data.size) + (32 * stor0.length) + 324 > idx + 32:
                mem[idx + 32] = stor0[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(address(stor1.field_256))
            call address(stor1.field_256).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args _98, arg2, Array(len=stor0.length, data=mem[(32 * _75) + ceil32(return_data.size) + 324 len 32 * stor0.length]), msg.sender, stor2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _75) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _75) + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _141 = mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32
            require mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 <= 4294967296
            require mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + (32 * _75) + ceil32(return_data.size) + 128] <= 4294967296 and mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + (32 * mem[mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + (32 * _75) + ceil32(return_data.size) + 128]) + 32 <= return_data.size
            mem[(32 * _75) + (2 * ceil32(return_data.size)) + 128] = mem[mem[(32 * _75) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _98) >> 32 + (32 * _75) + ceil32(return_data.size) + 128]
            mem[(32 * _75) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_141 + (32 * _75) + ceil32(return_data.size) + 128])] = mem[_141 + (32 * _75) + ceil32(return_data.size) + 160 len floor32(mem[_141 + (32 * _75) + ceil32(return_data.size) + 128])]
        require 1 < mem[(32 * _75) + (2 * ceil32(return_data.size)) + 128]
        emit 0x96356f9c: Array(len=15, data='amount_buy_dex0'), _98
        emit 0x96356f9c: Array(len=16, data='amount_sell_dex1'), mem[(32 * _75) + (2 * ceil32(return_data.size)) + 192]
}



}
