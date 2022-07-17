contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 stor151;
address factoryAddress;
uint256 stor201;
uint32 stor202;
address routerAddress;
uint256 stor202;
mapping of uint8 stor203;

function owner() payable {
    return owner
}

function factory() payable {
    return address(factoryAddress)
}

function router() payable {
    return address(routerAddress)
}

function sub_fa826478(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor203[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x728be007: owner, arg1
    owner = arg1
}

function sub_7c5bdf49(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 203
        stor203[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0x728be007: 0, msg.sender
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0x728be007: 0, msg.sender
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0x728be007: 0, msg.sender
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0x728be007: 0, msg.sender
                    stor151 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0x728be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0xe0436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor151 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor151 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    require ext_code.size(arg1)
    staticcall arg1.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor201) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor201))
    address(routerAddress) = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 203
    if not stor203[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x645370697269747377617053747261746567794c69717569646174653a3a6f6e6c7957686974656c6973746564576f726b6572733a3a2062616420776f726b65
    if not stor151:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 0
    require arg3.length >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.baseToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.farmingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(factoryAddress))
    staticcall address(factoryAddress).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(routerAddress), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x735370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20756e61626c6520746f20617070726f7665204c5020746f6b65,
                    mem[229 len 31]
    mem[132] = address(routerAddress)
    mem[164] = -1
    mem[96] = 68
    mem[132 len 28] = Mask(224, 0, stor202)
    mem[128 len 4] = approve(address arg1, uint256 arg2)
    mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor202), uint32(stor202), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[288 len 4] = test266151307()
    call address(ext_call.return_data[0]) with:
       funct uint32(stor202)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor202), uint32(stor202), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
            revert with 0, '!safeApprove'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[196] = 2
        mem[228] = address(ext_call.return_data[0])
        mem[260] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[292] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[296] = ext_call.return_data[0]
        mem[328] = 0
        mem[392] = this.address
        mem[424] = block.timestamp
        mem[360] = 160
        mem[456] = 2
        mem[488 len 0] = None
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[488 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 292
        require return_data.size >= 32
        _1481 = mem[292 len 4], ext_call.return_data[0 len 28]
        require mem[292 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[292 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[292 len 4], ext_call.return_data[0 len 28] + 292] <= 4294967296 and mem[292 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[292 len 4], ext_call.return_data[0 len 28] + 292]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], ext_call.return_data[0 len 28] + 292]
        _1492 = mem[_1481 + 292]
        mem[ceil32(return_data.size) + 324 len floor32(mem[_1481 + 292])] = mem[_1481 + 324 len floor32(mem[_1481 + 292])]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[(arg3 + 36)]:
            revert with 0, 
                        32,
                        70,
                        0xfe5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20696e73756666696369656e742062617365546f6b656e2072656365697665,
                        mem[(32 * _1492) + ceil32(return_data.size) + 462 len 26]
        mem[(32 * _1492) + ceil32(return_data.size) + 424 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call address(ext_call.return_data[0]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1492) + ceil32(return_data.size) + 488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
                revert with 0, '!safeTransfer'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(routerAddress), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            72,
                            0x6e5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20756e61626c6520746f207265736574204c5020746f6b656e20617070726f7661,
                            mem[(32 * _1492) + ceil32(return_data.size) + 564 len 24]
            mem[(32 * _1492) + ceil32(return_data.size) + 524 len 64] = 0, address(routerAddress), 0
            call address(ext_call.return_data[0]) with:
               funct uint32(stor202)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(routerAddress), 0) >> 32, mem[(32 * _1492) + ceil32(return_data.size) + 588 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
                    revert with 0, '!safeApprove'
            else:
                mem[(32 * _1492) + ceil32(return_data.size) + 556 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1492) + ceil32(return_data.size) + 556]:
                        revert with 0, '!safeApprove'
        else:
            mem[(32 * _1492) + ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _1492) + ceil32(return_data.size) + 456]:
                    revert with 0, '!safeTransfer'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(routerAddress), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            72,
                            0x6e5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20756e61626c6520746f207265736574204c5020746f6b656e20617070726f7661,
                            mem[(32 * _1492) + ceil32(return_data.size) + ceil32(return_data.size) + 565 len 24]
            mem[(32 * _1492) + ceil32(return_data.size) + ceil32(return_data.size) + 525 len 64] = 0, address(routerAddress), 0
            call address(ext_call.return_data[0]) with:
               funct uint32(stor202)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(routerAddress), 0) >> 32, mem[(32 * _1492) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
                    revert with 0, '!safeApprove'
            else:
                mem[(32 * _1492) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1492) + ceil32(return_data.size) + ceil32(return_data.size) + 557]:
                        revert with 0, '!safeApprove'
        stor151 = 1
    mem[196] = return_data.size
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!safeApprove'
    if not return_data.size:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(routerAddress))
        call address(routerAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[ceil32(return_data.size) + 197] = 2
        mem[ceil32(return_data.size) + 229] = address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 261] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 297] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 329] = 0
        mem[ceil32(return_data.size) + 393] = this.address
        mem[ceil32(return_data.size) + 425] = block.timestamp
        mem[ceil32(return_data.size) + 361] = 160
        mem[ceil32(return_data.size) + 457] = 2
        mem[ceil32(return_data.size) + 489 len 0] = None
        require ext_code.size(address(routerAddress))
        call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 489 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
        require return_data.size >= 32
        _1483 = mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= 4294967296 and mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
        _1493 = mem[ceil32(return_data.size) + _1483 + 293]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[ceil32(return_data.size) + _1483 + 293])] = mem[ceil32(return_data.size) + _1483 + 325 len floor32(mem[ceil32(return_data.size) + _1483 + 293])]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[(arg3 + 36)]:
            revert with 0, 
                        32,
                        70,
                        0xfe5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20696e73756666696369656e742062617365546f6b656e2072656365697665,
                        mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 463 len 26]
        mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4] = ext_call.return_data[20 len 4]
        call address(ext_call.return_data[0]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeTransfer'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
                revert with 0, '!safeTransfer'
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(routerAddress), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 
                            32,
                            72,
                            0x6e5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20756e61626c6520746f207265736574204c5020746f6b656e20617070726f7661,
                            mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 565 len 24]
            mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 525 len 64] = 0, address(routerAddress), 0
            call address(ext_call.return_data[0]) with:
               funct uint32(stor202)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, address(routerAddress), 0) >> 32, mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
                    revert with 0, '!safeApprove'
            else:
                mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 557]:
                        revert with 0, '!safeApprove'
        else:
            mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
            mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 430] = 32
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 462] = 13
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 494] = 0x21736166655472616e7366657200000000000000000000000000000000000000
                revert with memory
                  from (32 * _1493) + (4 * ceil32(return_data.size)) + 426
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 430] = address(routerAddress)
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 462] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 430 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 430] = 32
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 462] = 72
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 494 len 72] = 0x6e5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20756e61626c6520746f207265736574204c5020746f6b656e20617070726f7661
                    revert with memory
                      from (32 * _1493) + (4 * ceil32(return_data.size)) + 426
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 164
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 526 len 64] = 0, address(routerAddress), 0
                call address(ext_call.return_data[0]) with:
                   funct uint32(stor202)
                     gas gas_remaining wei
                    args 0, Mask(224, 32, 0, address(routerAddress), 0) >> 32, mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 590 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
                        revert with 0, '!safeApprove'
                else:
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!safeApprove'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 558]:
                            revert with 0, '!safeApprove'
            else:
                require return_data.size >= 32
                if not mem[(32 * _1493) + ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 430] = 32
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 462] = 13
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 494] = 0x21736166655472616e7366657200000000000000000000000000000000000000
                    revert with memory
                      from (32 * _1493) + (4 * ceil32(return_data.size)) + 426
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 430] = address(routerAddress)
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 462] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 430 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 430] = 32
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 462] = 72
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 494 len 72] = 0x6e5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20756e61626c6520746f207265736574204c5020746f6b656e20617070726f7661
                    revert with memory
                      from (32 * _1493) + (4 * ceil32(return_data.size)) + 426
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 164
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 526 len 64] = 0, address(routerAddress), 0
                call address(ext_call.return_data[0]) with:
                   funct uint32(stor202)
                     gas gas_remaining wei
                    args mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 530 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not return_data.size:
                    if ext_call.success:
                        if approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
                            stor151 = 1
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 526] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 530] = 32
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 562] = 12
                    mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 594] = '!safeApprove' << 160
                    revert with memory
                      from (32 * _1493) + (4 * ceil32(return_data.size)) + 526
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _1493) + (4 * ceil32(return_data.size)) + 558]:
                        revert with 0, '!safeApprove'
        stor151 = 1
    require return_data.size >= 32
    if not mem[228]:
        revert with 0, '!safeApprove'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(routerAddress))
    call address(routerAddress).removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 197] = 2
    mem[ceil32(return_data.size) + 229] = address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 261] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 293] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 297] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 329] = 0
    mem[ceil32(return_data.size) + 393] = this.address
    mem[ceil32(return_data.size) + 425] = block.timestamp
    mem[ceil32(return_data.size) + 361] = 160
    mem[ceil32(return_data.size) + 457] = 2
    mem[ceil32(return_data.size) + 489 len 0] = None
    require ext_code.size(address(routerAddress))
    call address(routerAddress).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 489 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
    require return_data.size >= 32
    _1485 = mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293] <= 4294967296 and mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], ext_call.return_data[0 len 28] + 293]
    _1494 = mem[ceil32(return_data.size) + _1485 + 293]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[ceil32(return_data.size) + _1485 + 293])] = mem[ceil32(return_data.size) + _1485 + 325 len floor32(mem[ceil32(return_data.size) + _1485 + 293])]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[(arg3 + 36)]:
        revert with 0, 
                    32,
                    70,
                    0xfe5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20696e73756666696369656e742062617365546f6b656e2072656365697665,
                    mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 463 len 26]
    mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 489 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
            revert with 0, '!safeTransfer'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(routerAddress), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 
                        32,
                        72,
                        0x6e5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20756e61626c6520746f207265736574204c5020746f6b656e20617070726f7661,
                        mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 565 len 24]
        mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 525 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor202), uint32(stor202), 0
        mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 617 len 4] = 0
        call address(ext_call.return_data[0]) with:
           funct uint32(stor202)
             gas gas_remaining wei
            args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor202), uint32(stor202), 0) << 256, mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
                revert with 0, '!safeApprove'
            stor151 = 1
        mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 525] = return_data.size
        mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if not return_data.size:
                stor151 = 1
            require return_data.size >= 32
            if mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 557]:
                stor151 = 1
        mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 526] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 530] = 32
        mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 562] = 12
        mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 594] = '!safeApprove' << 160
        revert with memory
          from (32 * _1494) + (4 * ceil32(return_data.size)) + 526
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, '!safeTransfer'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(32 * _1494) + ceil32(return_data.size) + ceil32(return_data.size) + 457]:
            revert with 0, '!safeTransfer'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(routerAddress), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 
                    32,
                    72,
                    0x6e5370697269747377617053747261746567794c69717569646174653a3a657865637574653a3a20756e61626c6520746f207265736574204c5020746f6b656e20617070726f7661,
                    mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 566 len 24]
    mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 526 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor202), uint32(stor202), 0
    mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 618 len 4] = 0
    call address(ext_call.return_data[0]) with:
       funct uint32(stor202)
         gas gas_remaining wei
        args 0, mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 590 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor202):
            revert with 0, '!safeApprove'
        stor151 = 1
    mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 558 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if ext_call.success:
        if not return_data.size:
            stor151 = 1
        require return_data.size >= 32
        if mem[(32 * _1494) + (4 * ceil32(return_data.size)) + 558]:
            stor151 = 1
    mem[(32 * _1494) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 527] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _1494) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 531] = 32
    mem[(32 * _1494) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 563] = 12
    mem[(32 * _1494) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 595] = '!safeApprove' << 160
    revert with memory
      from (32 * _1494) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 527
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
