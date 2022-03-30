contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;
address stor13;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function balance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2349a086(?) payable {
    require calldata.size - 4 >= 256
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == bool(arg8)
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor13)
    staticcall stor13.flashFee(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, (2 * ext_call.return_data[0]) + arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor13)
    call stor13.flashLoan(address rg1, address rg2, uint256 rg3, bytes rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg1, 128, 224, bool(arg8), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), address(arg7)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor13 != msg.sender:
        revert with 0, 'FlashBorrower: Untrusted lender'
    if arg1 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashBorrower: Untrusted loan initiator'
    require arg5.length >= 224
    require cd[(arg5 + 36)] == bool(cd[(arg5 + 36)])
    mem[96] = cd[(arg5 + 36)]
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    mem[128] = cd[(arg5 + 68)]
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    mem[160] = cd[(arg5 + 100)]
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    mem[192] = cd[(arg5 + 132)]
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    mem[224] = cd[(arg5 + 164)]
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    mem[256] = cd[(arg5 + 196)]
    require cd[(arg5 + 228)] == address(cd[(arg5 + 228)])
    mem[288] = cd[(arg5 + 228)]
    if 1 == bool(cd[(arg5 + 36)]):
        mem[324] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg3
        if stor5 == address(cd[(arg5 + 164)]):
            mem[ceil32(return_data.size) + 320] = 2
            mem[ceil32(return_data.size) + 352] = address(cd[(arg5 + 68)])
            mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 100)])
            mem[ceil32(return_data.size) + 420] = stor5
            mem[ceil32(return_data.size) + 452] = -1
            require ext_code.size(address(cd[(arg5 + 68)]))
            call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor5, -1
            mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 420] = arg3
            mem[(2 * ceil32(return_data.size)) + 452] = 1
            mem[(2 * ceil32(return_data.size)) + 484] = 160
            mem[(2 * ceil32(return_data.size)) + 580] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 612
            t = ceil32(return_data.size) + 352
            while idx < mem[ceil32(return_data.size) + 320]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 516] = this.address
            mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp + 1
            require ext_code.size(stor10)
            call stor10.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _510 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _513 = mem[_510]
            require mem[_510] <= test266151307()
            require _510 + mem[_510] + 31 < _510 + return_data.size
            _516 = mem[_510 + mem[_510]]
            require mem[_510 + mem[_510]] <= test266151307()
            require (32 * mem[_510 + mem[_510]]) + 32 >= 0 and _510 + ceil32(return_data.size) + (32 * mem[_510 + mem[_510]]) + 32 <= test266151307()
            mem[64] = _510 + ceil32(return_data.size) + (32 * mem[_510 + mem[_510]]) + 32
            mem[_510 + ceil32(return_data.size)] = _516
            require return_data.size >= _513 + (32 * _516) + 32
            mem[_510 + ceil32(return_data.size) + 32 len 32 * _516] = mem[_510 + _513 + 32 len 32 * _516]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _636 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_636] <= 0:
                revert with 0, 'Contract has not recived Token B'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 68)]))
            staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _654 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_654] < arg3:
                revert with 0, 'Contract has not recived Token A'
        else:
            if stor6 != address(cd[(arg5 + 164)]):
                if stor7 == address(cd[(arg5 + 164)]):
                    require ext_code.size(address(cd[(arg5 + 68)]))
                    call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor7, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor11)
                    if stor1 == address(cd[(arg5 + 68)]):
                        call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args 1, 0, arg3, 1
                    else:
                        if stor2 != address(cd[(arg5 + 68)]):
                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, arg3, 1
                        else:
                            call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                 gas gas_remaining wei
                                args 0, 1, arg3, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if stor8 == address(cd[(arg5 + 164)]):
                        require ext_code.size(address(cd[(arg5 + 68)]))
                        call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor8, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor11)
                        if stor1 == address(cd[(arg5 + 68)]):
                            if stor1 == address(cd[(arg5 + 100)]):
                                call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args 1, 1, arg3, 1
                            else:
                                if stor2 == address(cd[(arg5 + 100)]):
                                    call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 1, 2, arg3, 1
                                else:
                                    call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 1, 0, arg3, 1
                        else:
                            if stor2 == address(cd[(arg5 + 68)]):
                                if stor1 == address(cd[(arg5 + 100)]):
                                    call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 2, 1, arg3, 1
                                else:
                                    if stor2 == address(cd[(arg5 + 100)]):
                                        call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 2, 2, arg3, 1
                                    else:
                                        call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 2, 0, arg3, 1
                            else:
                                if stor1 == address(cd[(arg5 + 100)]):
                                    call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args 0, 1, arg3, 1
                                else:
                                    if stor2 == address(cd[(arg5 + 100)]):
                                        call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 0, 2, arg3, 1
                                    else:
                                        call stor11.exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining wei
                                            args 0, 0, arg3, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[(arg5 + 100)]))
                staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Contract has not recived Token B'
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg3:
                    revert with 0, 'Contract has not recived Token A'
            else:
                mem[ceil32(return_data.size) + 320] = 2
                mem[ceil32(return_data.size) + 352] = address(cd[(arg5 + 68)])
                mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 100)])
                mem[ceil32(return_data.size) + 420] = stor6
                mem[ceil32(return_data.size) + 452] = -1
                require ext_code.size(address(cd[(arg5 + 68)]))
                call address(cd[(arg5 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor6, -1
                mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 416
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 420] = arg3
                mem[(2 * ceil32(return_data.size)) + 452] = 1
                mem[(2 * ceil32(return_data.size)) + 484] = 160
                mem[(2 * ceil32(return_data.size)) + 580] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 612
                t = ceil32(return_data.size) + 352
                while idx < mem[ceil32(return_data.size) + 320]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 516] = this.address
                mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp + 1
                require ext_code.size(stor9)
                call stor9.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _509 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _512 = mem[_509]
                require mem[_509] <= test266151307()
                require _509 + mem[_509] + 31 < _509 + return_data.size
                _515 = mem[_509 + mem[_509]]
                require mem[_509 + mem[_509]] <= test266151307()
                require (32 * mem[_509 + mem[_509]]) + 32 >= 0 and _509 + ceil32(return_data.size) + (32 * mem[_509 + mem[_509]]) + 32 <= test266151307()
                mem[64] = _509 + ceil32(return_data.size) + (32 * mem[_509 + mem[_509]]) + 32
                mem[_509 + ceil32(return_data.size)] = _515
                require return_data.size >= _512 + (32 * _515) + 32
                mem[_509 + ceil32(return_data.size) + 32 len 32 * _515] = mem[_509 + _512 + 32 len 32 * _515]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 100)]))
                staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_635] <= 0:
                    revert with 0, 'Contract has not recived Token B'
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 68)]))
                staticcall address(cd[(arg5 + 68)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _653 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_653] < arg3:
                    revert with 0, 'Contract has not recived Token A'
    else:
        if not cd[(arg5 + 36)]:
            mem[324] = this.address
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg3
            mem[ceil32(return_data.size) + 320] = 2
            mem[ceil32(return_data.size) + 352] = arg2
            mem[ceil32(return_data.size) + 384] = address(cd[(arg5 + 100)])
            mem[ceil32(return_data.size) + 420] = stor6
            mem[ceil32(return_data.size) + 452] = arg3
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor6, arg3
            mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 420] = arg3
            mem[(2 * ceil32(return_data.size)) + 452] = 1
            mem[(2 * ceil32(return_data.size)) + 484] = 160
            mem[(2 * ceil32(return_data.size)) + 580] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 612
            t = ceil32(return_data.size) + 352
            while idx < mem[ceil32(return_data.size) + 320]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 516] = this.address
            mem[(2 * ceil32(return_data.size)) + 548] = block.timestamp + 1
            require ext_code.size(stor9)
            call stor9.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 672]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _508 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _511 = mem[_508]
            require mem[_508] <= test266151307()
            require _508 + mem[_508] + 31 < _508 + return_data.size
            _514 = mem[_508 + mem[_508]]
            require mem[_508 + mem[_508]] <= test266151307()
            require (32 * mem[_508 + mem[_508]]) + 32 >= 0 and _508 + ceil32(return_data.size) + (32 * mem[_508 + mem[_508]]) + 32 <= test266151307()
            mem[64] = _508 + ceil32(return_data.size) + (32 * mem[_508 + mem[_508]]) + 32
            mem[_508 + ceil32(return_data.size)] = _514
            require return_data.size >= _511 + (32 * _514) + 32
            mem[_508 + ceil32(return_data.size) + 32 len 32 * _514] = mem[_508 + _511 + 32 len 32 * _514]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[(arg5 + 100)]))
            staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _634 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _637 = mem[_634]
            if mem[_634] <= 0:
                revert with 0, 'Contract has not recived Token B'
            mem[mem[64] + 4] = stor7
            mem[mem[64] + 36] = -1
            require ext_code.size(address(cd[(arg5 + 100)]))
            call address(cd[(arg5 + 100)]).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor7, -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _652 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_652] == bool(mem[_652])
            if stor1 != address(cd[(arg5 + 100)]):
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _637
                mem[mem[64] + 100] = 1
                require ext_code.size(stor11)
                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 1, 0, _637, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _676 = mem[_674]
                if mem[_674] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                _678 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_678]
                mem[_678 + 32] = address(cd[(arg5 + 132)])
                require 1 < mem[_678]
                mem[_678 + 64] = arg2
                mem[_678 + 100] = stor6
                mem[_678 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor6, -1
                mem[_678 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _678 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_678 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_678 + ceil32(return_data.size) + 100] = _676
                mem[_678 + ceil32(return_data.size) + 132] = 1
                mem[_678 + ceil32(return_data.size) + 164] = 160
                mem[_678 + ceil32(return_data.size) + 260] = mem[_678]
                idx = 0
                s = _678 + ceil32(return_data.size) + 292
                t = _678 + 32
                while idx < mem[_678]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_678 + ceil32(return_data.size) + 196] = this.address
                mem[_678 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(stor9)
                call stor9.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _676, 1, 160, address(this.address), block.timestamp + 1, mem[_678 + ceil32(return_data.size) + 260 len (32 * mem[_678]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_678 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _678 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _736 = mem[_678 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _676) >> 32
                require mem[_678 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _676) >> 32 <= test266151307()
                require _678 + ceil32(return_data.size) + mem[_678 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _676) >> 32 + 127 < _678 + ceil32(return_data.size) + return_data.size + 96
                _738 = mem[_678 + ceil32(return_data.size) + mem[_678 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _676) >> 32 + 96]
                require mem[_678 + ceil32(return_data.size) + mem[_678 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _676) >> 32 + 96] <= test266151307()
                require (32 * mem[_678 + ceil32(return_data.size) + mem[_678 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _676) >> 32 + 96]) + 32 >= 0 and _678 + (2 * ceil32(return_data.size)) + (32 * mem[_678 + ceil32(return_data.size) + mem[_678 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _676) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = _678 + (2 * ceil32(return_data.size)) + (32 * mem[_678 + ceil32(return_data.size) + mem[_678 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _676) >> 32 + 96]) + 128
                mem[_678 + (2 * ceil32(return_data.size)) + 96] = _738
                require return_data.size >= _736 + (32 * _738) + 32
                mem[_678 + (2 * ceil32(return_data.size)) + 128 len 32 * _738] = mem[_678 + ceil32(return_data.size) + _736 + 128 len 32 * _738]
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _766 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_766] <= 0:
                    revert with 0, 'Contract has not recived Token A'
            else:
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = _637
                mem[mem[64] + 100] = 1
                require ext_code.size(stor11)
                call stor11.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args 0, 1, _637, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[(arg5 + 132)]))
                staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _677 = mem[_675]
                if mem[_675] <= 0:
                    revert with 0, 'Contract has not recived Token C'
                _681 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require 0 < mem[_681]
                mem[_681 + 32] = address(cd[(arg5 + 132)])
                require 1 < mem[_681]
                mem[_681 + 64] = arg2
                mem[_681 + 100] = stor6
                mem[_681 + 132] = -1
                require ext_code.size(address(cd[(arg5 + 132)]))
                call address(cd[(arg5 + 132)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args stor6, -1
                mem[_681 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _681 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_681 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_681 + ceil32(return_data.size) + 100] = _677
                mem[_681 + ceil32(return_data.size) + 132] = 1
                mem[_681 + ceil32(return_data.size) + 164] = 160
                mem[_681 + ceil32(return_data.size) + 260] = mem[_681]
                idx = 0
                s = _681 + ceil32(return_data.size) + 292
                t = _681 + 32
                while idx < mem[_681]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_681 + ceil32(return_data.size) + 196] = this.address
                mem[_681 + ceil32(return_data.size) + 228] = block.timestamp + 1
                require ext_code.size(stor9)
                call stor9.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _677, 1, 160, address(this.address), block.timestamp + 1, mem[_681 + ceil32(return_data.size) + 260 len (32 * mem[_681]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_681 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _681 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _737 = mem[_681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _677) >> 32
                require mem[_681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _677) >> 32 <= test266151307()
                require _681 + ceil32(return_data.size) + mem[_681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _677) >> 32 + 127 < _681 + ceil32(return_data.size) + return_data.size + 96
                _739 = mem[_681 + ceil32(return_data.size) + mem[_681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _677) >> 32 + 96]
                require mem[_681 + ceil32(return_data.size) + mem[_681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _677) >> 32 + 96] <= test266151307()
                require (32 * mem[_681 + ceil32(return_data.size) + mem[_681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _677) >> 32 + 96]) + 32 >= 0 and _681 + (2 * ceil32(return_data.size)) + (32 * mem[_681 + ceil32(return_data.size) + mem[_681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _677) >> 32 + 96]) + 128 <= test266151307()
                mem[64] = _681 + (2 * ceil32(return_data.size)) + (32 * mem[_681 + ceil32(return_data.size) + mem[_681 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, _677) >> 32 + 96]) + 128
                mem[_681 + (2 * ceil32(return_data.size)) + 96] = _739
                require return_data.size >= _737 + (32 * _739) + 32
                mem[_681 + (2 * ceil32(return_data.size)) + 128 len 32 * _739] = mem[_681 + ceil32(return_data.size) + _737 + 128 len 32 * _739]
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _767 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_767] <= 0:
                    revert with 0, 'Contract has not recived Token A'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
