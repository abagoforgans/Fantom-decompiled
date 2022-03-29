contract main {




// =====================  Runtime code  =====================


const CALLBACK_SUCCESS = 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9


address factoryAddress;
address stor1;
uint256 stor1;
address stor2;
address stor3;

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function getPairAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    if stor3 == arg1:
        staticcall factoryAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args stor2, stor3
    else:
        if stor2 == arg1:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor3
        else:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function flashFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(factoryAddress)
    if stor3 == arg1:
        staticcall factoryAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args stor2, stor3
    else:
        if stor2 == arg1:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor3
        else:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Unsupported currency'
    return ((3 * arg2 / 997) + 1)
}

function maxFlashLoan(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    if stor3 == arg1:
        staticcall factoryAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args stor2, stor3
    else:
        if stor2 == arg1:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor3
        else:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    return (ext_call.return_data[0] - 1)
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if address(stor1) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 128
    require cd[(arg4 + 132)] <= 4294967296
    require cd[(arg4 + 132)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= 4294967296 and cd[(arg4 + 132)] + cd[(arg4 + cd[(arg4 + 132)] + 36)] + 68 <= arg4.length + 36
    require ext_code.size(factoryAddress)
    if stor3 == address(cd[(arg4 + 100)]):
        staticcall factoryAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args stor2, stor3
    else:
        if stor2 == address(cd[(arg4 + 100)]):
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[(arg4 + 100)]), stor3
        else:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[(arg4 + 100)]), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Unsupported currency'
    require ext_code.size(address(cd[(arg4 + 100)]))
    if arg2 > 0:
        call address(cd[(arg4 + 100)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)]), arg2, (3 * arg2 / 997) + 1, Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len cd[(arg4 + cd[(arg4 + 132)] + 36)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9:
            revert with 0, 'Callback failed'
        if (3 * arg2 / 997) + arg2 + 1 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), address(this.address), (3 * arg2 / 997) + arg2 + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (3 * arg2 / 997) + arg2 + 1 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, (3 * arg2 / 997) + arg2 + 1
    else:
        call address(cd[(arg4 + 100)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), address(cd[(arg4 + 100)]), arg3, (3 * arg3 / 997) + 1, Array(len=cd[(arg4 + cd[(arg4 + 132)] + 36)], data=call.data[arg4 + cd[(arg4 + 132)] + 68 len cd[(arg4 + cd[(arg4 + 132)] + 36)]])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9:
            revert with 0, 'Callback failed'
        if (3 * arg3 / 997) + arg3 + 1 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 68)]), address(this.address), (3 * arg3 / 997) + arg3 + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (3 * arg3 / 997) + arg3 + 1 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args msg.sender, (3 * arg3 / 997) + arg3 + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require ext_code.size(factoryAddress)
    if stor3 == arg2:
        staticcall factoryAddress.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args stor2, stor3
    else:
        if stor2 == arg2:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg2), stor3
        else:
            staticcall factoryAddress.getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg2), stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Unsupported currency'
    if address(stor1) != ext_call.return_data[12 len 20]:
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg4.length) + 160] = msg.sender
    mem[ceil32(arg4.length) + 192] = arg1
    mem[ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg4.length) + 256] = 128
    mem[ceil32(arg4.length) + 288] = arg4.length
    mem[ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if address(ext_call.return_data[0]) == arg2:
        if arg2 == ext_call.return_data[12 len 20]:
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + 128] = arg4.length + 160
                mem[64] = arg4.length + ceil32(arg4.length) + 320
                mem[arg4.length + ceil32(arg4.length) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[arg4.length + ceil32(arg4.length) + 324] = arg3
                mem[arg4.length + ceil32(arg4.length) + 356] = arg3
                mem[arg4.length + ceil32(arg4.length) + 388] = this.address
                mem[arg4.length + ceil32(arg4.length) + 420] = 128
                mem[arg4.length + ceil32(arg4.length) + 452] = 0, Mask(224, 0, arg4.length + 160)
                mem[arg4.length + ceil32(arg4.length) + 484 len ceil32(0, Mask(224, 0, arg4.length + 160))] = mem[ceil32(arg4.length) + 160 len ceil32(0, Mask(224, 0, arg4.length + 160))]
                if not arg4.length + 160 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[arg4.length + ceil32(arg4.length) + 324 len 0, Mask(224, 0, arg4.length + 160) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, arg4.length + 160)) + arg4.length + ceil32(arg4.length) + 484] = mem[floor32(0, Mask(224, 0, arg4.length + 160)) + arg4.length + ceil32(arg4.length) + -(arg4.length + 160 % 32) + 516 len arg4.length + 160 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[arg4.length + ceil32(arg4.length) + 324 len floor32(0, Mask(224, 0, arg4.length + 160)) + 192]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 192
                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 352
                mem[floor32(arg4.length) + ceil32(arg4.length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = arg3
                mem[floor32(arg4.length) + ceil32(arg4.length) + 388] = arg3
                mem[floor32(arg4.length) + ceil32(arg4.length) + 420] = this.address
                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = 128
                mem[floor32(arg4.length) + ceil32(arg4.length) + 484] = 0, Mask(224, 0, floor32(arg4.length) + 192)
                mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len ceil32(0, Mask(224, 0, floor32(arg4.length) + 192))] = mem[ceil32(arg4.length) + 160 len ceil32(0, Mask(224, 0, floor32(arg4.length) + 192))]
                if not floor32(arg4.length) + 192 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 0, Mask(224, 0, floor32(arg4.length) + 192) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + floor32(arg4.length) + ceil32(arg4.length) + 516] = mem[floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 192 % 32) + 548 len floor32(arg4.length) + 192 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + 192]
        else:
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + 128] = arg4.length + 160
                mem[64] = arg4.length + ceil32(arg4.length) + 320
                mem[arg4.length + ceil32(arg4.length) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[arg4.length + ceil32(arg4.length) + 324] = arg3
                mem[arg4.length + ceil32(arg4.length) + 356] = 0
                mem[arg4.length + ceil32(arg4.length) + 388] = this.address
                mem[arg4.length + ceil32(arg4.length) + 420] = 128
                mem[arg4.length + ceil32(arg4.length) + 452] = 0, Mask(224, 0, arg4.length + 160)
                mem[arg4.length + ceil32(arg4.length) + 484 len ceil32(0, Mask(224, 0, arg4.length + 160))] = mem[ceil32(arg4.length) + 160 len ceil32(0, Mask(224, 0, arg4.length + 160))]
                if not arg4.length + 160 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[arg4.length + ceil32(arg4.length) + 324 len 0, Mask(224, 0, arg4.length + 160) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, arg4.length + 160)) + arg4.length + ceil32(arg4.length) + 484] = mem[floor32(0, Mask(224, 0, arg4.length + 160)) + arg4.length + ceil32(arg4.length) + -(arg4.length + 160 % 32) + 516 len arg4.length + 160 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[arg4.length + ceil32(arg4.length) + 324 len floor32(0, Mask(224, 0, arg4.length + 160)) + 192]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 192
                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 352
                mem[floor32(arg4.length) + ceil32(arg4.length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = arg3
                mem[floor32(arg4.length) + ceil32(arg4.length) + 388] = 0
                mem[floor32(arg4.length) + ceil32(arg4.length) + 420] = this.address
                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = 128
                mem[floor32(arg4.length) + ceil32(arg4.length) + 484] = 0, Mask(224, 0, floor32(arg4.length) + 192)
                mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len ceil32(0, Mask(224, 0, floor32(arg4.length) + 192))] = mem[ceil32(arg4.length) + 160 len ceil32(0, Mask(224, 0, floor32(arg4.length) + 192))]
                if not floor32(arg4.length) + 192 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 0, Mask(224, 0, floor32(arg4.length) + 192) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + floor32(arg4.length) + ceil32(arg4.length) + 516] = mem[floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 192 % 32) + 548 len floor32(arg4.length) + 192 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + 192]
    else:
        if arg2 == ext_call.return_data[12 len 20]:
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + 128] = arg4.length + 160
                mem[64] = arg4.length + ceil32(arg4.length) + 320
                mem[arg4.length + ceil32(arg4.length) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[arg4.length + ceil32(arg4.length) + 324] = 0
                mem[arg4.length + ceil32(arg4.length) + 356] = arg3
                mem[arg4.length + ceil32(arg4.length) + 388] = this.address
                mem[arg4.length + ceil32(arg4.length) + 420] = 128
                mem[arg4.length + ceil32(arg4.length) + 452] = 0, Mask(224, 0, arg4.length + 160)
                mem[arg4.length + ceil32(arg4.length) + 484 len ceil32(0, Mask(224, 0, arg4.length + 160))] = mem[ceil32(arg4.length) + 160 len ceil32(0, Mask(224, 0, arg4.length + 160))]
                if not arg4.length + 160 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[arg4.length + ceil32(arg4.length) + 324 len 0, Mask(224, 0, arg4.length + 160) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, arg4.length + 160)) + arg4.length + ceil32(arg4.length) + 484] = mem[floor32(0, Mask(224, 0, arg4.length + 160)) + arg4.length + ceil32(arg4.length) + -(arg4.length + 160 % 32) + 516 len arg4.length + 160 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[arg4.length + ceil32(arg4.length) + 324 len floor32(0, Mask(224, 0, arg4.length + 160)) + 192]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 192
                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 352
                mem[floor32(arg4.length) + ceil32(arg4.length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = 0
                mem[floor32(arg4.length) + ceil32(arg4.length) + 388] = arg3
                mem[floor32(arg4.length) + ceil32(arg4.length) + 420] = this.address
                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = 128
                mem[floor32(arg4.length) + ceil32(arg4.length) + 484] = 0, Mask(224, 0, floor32(arg4.length) + 192)
                mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len ceil32(0, Mask(224, 0, floor32(arg4.length) + 192))] = mem[ceil32(arg4.length) + 160 len ceil32(0, Mask(224, 0, floor32(arg4.length) + 192))]
                if not floor32(arg4.length) + 192 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 0, Mask(224, 0, floor32(arg4.length) + 192) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + floor32(arg4.length) + ceil32(arg4.length) + 516] = mem[floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 192 % 32) + 548 len floor32(arg4.length) + 192 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + 192]
        else:
            if not arg4.length % 32:
                mem[ceil32(arg4.length) + 128] = arg4.length + 160
                mem[64] = arg4.length + ceil32(arg4.length) + 320
                mem[arg4.length + ceil32(arg4.length) + 320] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[arg4.length + ceil32(arg4.length) + 324] = 0
                mem[arg4.length + ceil32(arg4.length) + 356] = 0
                mem[arg4.length + ceil32(arg4.length) + 388] = this.address
                mem[arg4.length + ceil32(arg4.length) + 420] = 128
                mem[arg4.length + ceil32(arg4.length) + 452] = 0, Mask(224, 0, arg4.length + 160)
                mem[arg4.length + ceil32(arg4.length) + 484 len ceil32(0, Mask(224, 0, arg4.length + 160))] = mem[ceil32(arg4.length) + 160 len ceil32(0, Mask(224, 0, arg4.length + 160))]
                if not arg4.length + 160 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[arg4.length + ceil32(arg4.length) + 324 len 0, Mask(224, 0, arg4.length + 160) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, arg4.length + 160)) + arg4.length + ceil32(arg4.length) + 484] = mem[floor32(0, Mask(224, 0, arg4.length + 160)) + arg4.length + ceil32(arg4.length) + -(arg4.length + 160 % 32) + 516 len arg4.length + 160 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[arg4.length + ceil32(arg4.length) + 324 len floor32(0, Mask(224, 0, arg4.length + 160)) + 192]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
                mem[ceil32(arg4.length) + 128] = floor32(arg4.length) + 192
                mem[64] = floor32(arg4.length) + ceil32(arg4.length) + 352
                mem[floor32(arg4.length) + ceil32(arg4.length) + 352] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[floor32(arg4.length) + ceil32(arg4.length) + 356] = 0
                mem[floor32(arg4.length) + ceil32(arg4.length) + 388] = 0
                mem[floor32(arg4.length) + ceil32(arg4.length) + 420] = this.address
                mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = 128
                mem[floor32(arg4.length) + ceil32(arg4.length) + 484] = 0, Mask(224, 0, floor32(arg4.length) + 192)
                mem[floor32(arg4.length) + ceil32(arg4.length) + 516 len ceil32(0, Mask(224, 0, floor32(arg4.length) + 192))] = mem[ceil32(arg4.length) + 160 len ceil32(0, Mask(224, 0, floor32(arg4.length) + 192))]
                if not floor32(arg4.length) + 192 % 32:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len 0, Mask(224, 0, floor32(arg4.length) + 192) + 160]
                else:
                    mem[floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + floor32(arg4.length) + ceil32(arg4.length) + 516] = mem[floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 192 % 32) + 548 len floor32(arg4.length) + 192 % 32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args mem[floor32(arg4.length) + ceil32(arg4.length) + 356 len floor32(0, Mask(224, 0, floor32(arg4.length) + 192)) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
