contract main {




// =====================  Runtime code  =====================


#
#  - zapInToken(address arg1, uint256 arg2, address arg3, address arg4)
#  - zapOutToken(address arg1, uint256 arg2, address arg3, address arg4)
#
address owner;
uint16 stor1; offset 144
address stor1;

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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
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
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function zapIn(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = address(stor1.field_0)
    mem[160] = address(ext_call.return_data[0])
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[260] = this.address
    mem[292] = block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value / 2 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    if address(ext_call.return_data[0]) == address(stor1.field_0):
        _855 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _867 = mem[_855 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_855 + 192])] = mem[_855 + 224 len floor32(mem[_855 + 192])]
        require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
        _1665 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if msg.value / 2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg2)
            call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224], 0, 0, msg.sender, block.timestamp
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _867) + ceil32(return_data.size) + 346 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _867) + ceil32(return_data.size) + 494 len 26]
            if ext_code.size(address(ext_call.return_data[0])) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _867) + ceil32(return_data.size) + 388 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[(32 * _867) + ceil32(return_data.size) + 452 len 0] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _867) + ceil32(return_data.size) + 452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with uint16(stor1.field_144)
            mem[(32 * _867) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * _867) + ceil32(return_data.size) + 420]:
                    revert with 0, 
                                32,
                                42,
                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _867) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
            if msg.value / 2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg2)
            call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _1665, 0, 0, msg.sender, block.timestamp
    else:
        if ext_call.return_data[12 len 20] == address(stor1.field_0):
            if address(ext_call.return_data[0]) == address(stor1.field_0):
                _859 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= 4294967296
                require mem[192 len 4], 0 + 32 <= return_data.size
                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                _869 = mem[_859 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_859 + 192])] = mem[_859 + 224 len floor32(mem[_859 + 192])]
                require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
                _1667 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg2)
                    call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224], 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _869) + ceil32(return_data.size) + 346 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _869) + ceil32(return_data.size) + 494 len 26]
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _869) + ceil32(return_data.size) + 388 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _869) + ceil32(return_data.size) + 452 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _869) + ceil32(return_data.size) + 452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(stor1.field_144)
                    mem[(32 * _869) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _869) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _869) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg2)
                    call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _1667, 0, 0, msg.sender, block.timestamp
            else:
                _861 = mem[192 len 4], 0
                require mem[192 len 4], 0 <= 4294967296
                require mem[192 len 4], 0 + 32 <= return_data.size
                require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
                _870 = mem[_861 + 192]
                mem[ceil32(return_data.size) + 224 len floor32(mem[_861 + 192])] = mem[_861 + 224 len floor32(mem[_861 + 192])]
                require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
                _1668 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg2)
                    call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224], 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _870) + ceil32(return_data.size) + 346 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _870) + ceil32(return_data.size) + 494 len 26]
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _870) + ceil32(return_data.size) + 388 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _870) + ceil32(return_data.size) + 452 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _870) + ceil32(return_data.size) + 452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(stor1.field_144)
                    mem[(32 * _870) + ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _870) + ceil32(return_data.size) + 420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _870) + ceil32(return_data.size) + ceil32(return_data.size) + 499 len 22]
                    if msg.value / 2 > msg.value:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg2)
                    call arg2.addLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                       value msg.value - (msg.value / 2) wei
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), _1668, 0, 0, msg.sender, block.timestamp
        else:
            _857 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= 4294967296
            require mem[192 len 4], 0 + 32 <= return_data.size
            require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            _868 = mem[_857 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_857 + 192])] = mem[_857 + 224 len floor32(mem[_857 + 192])]
            require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
            _1666 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
            if msg.value / 2 > msg.value:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(32 * _868) + ceil32(return_data.size) + 224] = 2
            mem[(32 * _868) + ceil32(return_data.size) + 256] = address(stor1.field_0)
            mem[(32 * _868) + ceil32(return_data.size) + 288] = address(ext_call.return_data[0])
            mem[(32 * _868) + ceil32(return_data.size) + 320] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _868) + ceil32(return_data.size) + 324] = 0
            mem[(32 * _868) + ceil32(return_data.size) + 388] = this.address
            mem[(32 * _868) + ceil32(return_data.size) + 420] = block.timestamp
            mem[(32 * _868) + ceil32(return_data.size) + 356] = 128
            mem[(32 * _868) + ceil32(return_data.size) + 452] = 2
            mem[(32 * _868) + ceil32(return_data.size) + 484 len 0] = None
            require ext_code.size(arg2)
            call arg2.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value - (msg.value / 2) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, 2, mem[(32 * _868) + ceil32(return_data.size) + 484 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _868) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _868) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _2453 = mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], 0
            require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], 0 <= 4294967296
            require mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], 0 + 32 <= return_data.size
            require mem[mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _868) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], 0 + (32 * mem[mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _868) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
            mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _868) + ceil32(return_data.size) + 320 len 4], 0 + (32 * _868) + ceil32(return_data.size) + 320]
            _2486 = mem[_2453 + (32 * _868) + ceil32(return_data.size) + 320]
            mem[(32 * _868) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_2453 + (32 * _868) + ceil32(return_data.size) + 320])] = mem[_2453 + (32 * _868) + ceil32(return_data.size) + 352 len floor32(mem[_2453 + (32 * _868) + ceil32(return_data.size) + 320])]
            mem[64] = (32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 352
            require mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] - 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
            _3122 = mem[(32 * mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] - 1) + (32 * _868) + (2 * ceil32(return_data.size)) + 352]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _1666, mem[(32 * mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] - 1) + (32 * _868) + (2 * ceil32(return_data.size)) + 352], 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 474 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 622 len 26]
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 516 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 580 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(stor1.field_144)
                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 22]
                    require ext_code.size(arg2)
                    call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _1666, _3122, 0, 0, msg.sender, block.timestamp
            else:
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 474 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 622 len 26]
                if ext_code.size(address(ext_call.return_data[0])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 516 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 580 len 0] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with uint16(stor1.field_144)
                mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + 548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 22]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(arg2)
                    call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _1666, _3122, 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 639 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len 26]
                    if ext_code.size(address(ext_call.return_data[0])) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 64] = 0, address(arg2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args -1, mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 28], mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with uint16(stor1.field_144)
                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = return_data.size
                    mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 686] = 32
                        mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 718] = 32
                        mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 750] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 682
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                            mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 682] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 686] = 32
                            mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 718] = 42
                            mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 750 len 42] = 0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 682
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 686] = address(ext_call.return_data[0])
                    mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 718] = address(ext_call.return_data[0])
                    mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 750] = _1666
                    mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 782] = _3122
                    mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 814] = 0
                    mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 846] = 0
                    mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 878] = msg.sender
                    mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 910] = block.timestamp
                    require ext_code.size(arg2)
                    call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 686 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
}

function zapOut(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = arg2
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if ext_call.return_data[0]:
            staticcall arg1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg3)
            if address(ext_call.return_data[0]) == address(stor1.field_0):
                call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[292] = 2
                mem[324] = address(ext_call.return_data[0])
                mem[356] = address(stor1.field_0)
                mem[388] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[392] = ext_call.return_data[0]
                mem[424] = 0
                mem[488] = msg.sender
                mem[520] = block.timestamp
                mem[456] = 160
                mem[552] = 2
                mem[584 len 0] = None
                require ext_code.size(arg3)
                call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[584 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 388
                require return_data.size >= 32
                _6545 = mem[388 len 4], ext_call.return_data[0 len 28]
                require mem[388 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[388 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388] <= 4294967296 and mem[388 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 388] = mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388]
                _6629 = mem[_6545 + 388]
                mem[ceil32(return_data.size) + 420 len floor32(mem[_6545 + 388])] = mem[_6545 + 420 len floor32(mem[_6545 + 388])]
                require mem[ceil32(return_data.size) + 388] - 1 < mem[ceil32(return_data.size) + 388]
                call msg.sender with:
                   value ext_call.return_data[32] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(32 * _6629) + ceil32(return_data.size) + 555 len 29]
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    35,
                                    0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                    mem[(32 * _6629) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                ('bool', 'ext_call.success')
            if address(ext_call.return_data[0]) == address(stor1.field_0):
                call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[292] = 2
                mem[324] = address(ext_call.return_data[0])
                mem[356] = address(stor1.field_0)
                mem[388] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[392] = ext_call.return_data[0]
                mem[424] = 0
                mem[488] = msg.sender
                mem[520] = block.timestamp
                mem[456] = 160
                mem[552] = 2
                mem[584 len 0] = None
                require ext_code.size(arg3)
                call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[584 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 388
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != address(stor1.field_0):
                    _6549 = mem[388 len 4], ext_call.return_data[0 len 28]
                    require mem[388 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[388 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388] <= 4294967296 and mem[388 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 388] = mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388]
                    _6631 = mem[_6549 + 388]
                    mem[ceil32(return_data.size) + 420 len floor32(mem[_6549 + 388])] = mem[_6549 + 420 len floor32(mem[_6549 + 388])]
                    require mem[ceil32(return_data.size) + 388] - 1 < mem[ceil32(return_data.size) + 388]
                    call msg.sender with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _6631) + ceil32(return_data.size) + 555 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _6631) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                else:
                    _6551 = mem[388 len 4], ext_call.return_data[0 len 28]
                    require mem[388 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[388 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388] <= 4294967296 and mem[388 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 388] = mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388]
                    _6632 = mem[_6551 + 388]
                    mem[ceil32(return_data.size) + 420 len floor32(mem[_6551 + 388])] = mem[_6551 + 420 len floor32(mem[_6551 + 388])]
                    require mem[ceil32(return_data.size) + 388] - 1 < mem[ceil32(return_data.size) + 388]
                    call msg.sender with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _6632) + ceil32(return_data.size) + 555 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _6632) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                ('bool', 'ext_call.success')
            call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            mem[292] = 2
            mem[324] = address(ext_call.return_data[0])
            mem[356] = address(stor1.field_0)
            mem[388] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[392] = ext_call.return_data[0]
            mem[424] = 0
            mem[488] = msg.sender
            mem[520] = block.timestamp
            mem[456] = 160
            mem[552] = 2
            mem[584 len 0] = None
            require ext_code.size(arg3)
            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[584 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 388
            require return_data.size >= 32
            _6547 = mem[388 len 4], ext_call.return_data[0 len 28]
            require mem[388 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[388 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388] <= 4294967296 and mem[388 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 388] = mem[mem[388 len 4], ext_call.return_data[0 len 28] + 388]
            _6630 = mem[_6547 + 388]
            mem[ceil32(return_data.size) + 420 len floor32(mem[_6547 + 388])] = mem[_6547 + 420 len floor32(mem[_6547 + 388])]
            if mem[ceil32(return_data.size) + 388] - 1 < mem[ceil32(return_data.size) + 388]:
                mem[(32 * _6630) + ceil32(return_data.size) + 484] = address(stor1.field_0)
                mem[(32 * _6630) + ceil32(return_data.size) + 516] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _6630) + ceil32(return_data.size) + 520] = ext_call.return_data[32]
                mem[(32 * _6630) + ceil32(return_data.size) + 552] = 0
                mem[(32 * _6630) + ceil32(return_data.size) + 616] = msg.sender
                mem[(32 * _6630) + ceil32(return_data.size) + 648] = block.timestamp
                mem[(32 * _6630) + ceil32(return_data.size) + 584] = 160
                mem[(32 * _6630) + ceil32(return_data.size) + 680] = 2
                mem[(32 * _6630) + ceil32(return_data.size) + 712 len 0] = None
                require ext_code.size(arg3)
                call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _6630) + ceil32(return_data.size) + 712 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _6630) + ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _6630) + (2 * ceil32(return_data.size)) + 516
                require return_data.size >= 32
                require mem[(32 * _6630) + ceil32(return_data.size) + 516 len 4], ext_call.return_data[32 len 28] <= 4294967296
                require mem[(32 * _6630) + ceil32(return_data.size) + 516 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                require mem[mem[(32 * _6630) + ceil32(return_data.size) + 516 len 4], ext_call.return_data[32 len 28] + (32 * _6630) + ceil32(return_data.size) + 516] <= 4294967296 and mem[(32 * _6630) + ceil32(return_data.size) + 516 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _6630) + ceil32(return_data.size) + 516 len 4], ext_call.return_data[32 len 28] + (32 * _6630) + ceil32(return_data.size) + 516]) + 32 <= return_data.size
                mem[(32 * _6630) + (2 * ceil32(return_data.size)) + 516] = mem[mem[(32 * _6630) + ceil32(return_data.size) + 516 len 4], ext_call.return_data[32 len 28] + (32 * _6630) + ceil32(return_data.size) + 516]
                if mem[(32 * _6630) + (2 * ceil32(return_data.size)) + 516] - 1 < mem[(32 * _6630) + (2 * ceil32(return_data.size)) + 516]:
        else:
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[414 len 2],
                            0,
                            mem[420 len 4]
            mem[328] = arg3
            mem[360] = -1
            mem[292] = 68
            mem[324 len 4] = approve(address rg1, uint256 rg2)
            mem[392] = 32
            mem[424] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, address(arg3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[548 len 4] = 0
            call arg1 with:
                 gas gas_remaining wei
                args -1, 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                require ext_code.size(arg1)
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                if address(ext_call.return_data[0]) == address(stor1.field_0):
                    call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[456] = 2
                    mem[488] = address(ext_call.return_data[0])
                    mem[520] = address(stor1.field_0)
                    mem[552] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[556] = ext_call.return_data[0]
                    mem[588] = 0
                    mem[652] = msg.sender
                    mem[684] = block.timestamp
                    mem[620] = 160
                    mem[716] = 2
                    mem[748 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[748 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 552
                    require return_data.size >= 32
                    _9701 = mem[552 len 4], ext_call.return_data[0 len 28]
                    require mem[552 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[552 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552] <= 4294967296 and mem[552 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 552] = mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]
                    _9915 = mem[_9701 + 552]
                    mem[ceil32(return_data.size) + 584 len floor32(mem[_9701 + 552])] = mem[_9701 + 584 len floor32(mem[_9701 + 552])]
                    require mem[ceil32(return_data.size) + 552] - 1 < mem[ceil32(return_data.size) + 552]
                    call msg.sender with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _9915) + ceil32(return_data.size) + 719 len 29]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _9915) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                    ('bool', 'ext_call.success')
                if address(ext_call.return_data[0]) == address(stor1.field_0):
                    call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[456] = 2
                    mem[488] = address(ext_call.return_data[0])
                    mem[520] = address(stor1.field_0)
                    mem[552] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[556] = ext_call.return_data[0]
                    mem[588] = 0
                    mem[652] = msg.sender
                    mem[684] = block.timestamp
                    mem[620] = 160
                    mem[716] = 2
                    mem[748 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[748 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 552
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != address(stor1.field_0):
                        _9705 = mem[552 len 4], ext_call.return_data[0 len 28]
                        require mem[552 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[552 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552] <= 4294967296 and mem[552 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 552] = mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]
                        _9917 = mem[_9705 + 552]
                        mem[ceil32(return_data.size) + 584 len floor32(mem[_9705 + 552])] = mem[_9705 + 584 len floor32(mem[_9705 + 552])]
                        require mem[ceil32(return_data.size) + 552] - 1 < mem[ceil32(return_data.size) + 552]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9917) + ceil32(return_data.size) + 719 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9917) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                    else:
                        _9707 = mem[552 len 4], ext_call.return_data[0 len 28]
                        require mem[552 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[552 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552] <= 4294967296 and mem[552 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 552] = mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]
                        _9918 = mem[_9707 + 552]
                        mem[ceil32(return_data.size) + 584 len floor32(mem[_9707 + 552])] = mem[_9707 + 584 len floor32(mem[_9707 + 552])]
                        require mem[ceil32(return_data.size) + 552] - 1 < mem[ceil32(return_data.size) + 552]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9918) + ceil32(return_data.size) + 719 len 29]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9918) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                    ('bool', 'ext_call.success')
                call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[456] = 2
                mem[488] = address(ext_call.return_data[0])
                mem[520] = address(stor1.field_0)
                mem[552] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[556] = ext_call.return_data[0]
                mem[588] = 0
                mem[652] = msg.sender
                mem[684] = block.timestamp
                mem[620] = 160
                mem[716] = 2
                mem[748 len 0] = None
                require ext_code.size(arg3)
                call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[748 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 552
                require return_data.size >= 32
                _9703 = mem[552 len 4], ext_call.return_data[0 len 28]
                require mem[552 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[552 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552] <= 4294967296 and mem[552 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 552] = mem[mem[552 len 4], ext_call.return_data[0 len 28] + 552]
                _9916 = mem[_9703 + 552]
                mem[ceil32(return_data.size) + 584 len floor32(mem[_9703 + 552])] = mem[_9703 + 584 len floor32(mem[_9703 + 552])]
                if mem[ceil32(return_data.size) + 552] - 1 < mem[ceil32(return_data.size) + 552]:
                    mem[(32 * _9916) + ceil32(return_data.size) + 648] = address(stor1.field_0)
                    mem[(32 * _9916) + ceil32(return_data.size) + 680] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _9916) + ceil32(return_data.size) + 684] = ext_call.return_data[32]
                    mem[(32 * _9916) + ceil32(return_data.size) + 716] = 0
                    mem[(32 * _9916) + ceil32(return_data.size) + 780] = msg.sender
                    mem[(32 * _9916) + ceil32(return_data.size) + 812] = block.timestamp
                    mem[(32 * _9916) + ceil32(return_data.size) + 748] = 160
                    mem[(32 * _9916) + ceil32(return_data.size) + 844] = 2
                    mem[(32 * _9916) + ceil32(return_data.size) + 876 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9916) + ceil32(return_data.size) + 876 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _9916) + ceil32(return_data.size) + 680 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _9916) + (2 * ceil32(return_data.size)) + 680
                    require return_data.size >= 32
                    require mem[(32 * _9916) + ceil32(return_data.size) + 680 len 4], ext_call.return_data[32 len 28] <= 4294967296
                    require mem[(32 * _9916) + ceil32(return_data.size) + 680 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * _9916) + ceil32(return_data.size) + 680 len 4], ext_call.return_data[32 len 28] + (32 * _9916) + ceil32(return_data.size) + 680] <= 4294967296 and mem[(32 * _9916) + ceil32(return_data.size) + 680 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9916) + ceil32(return_data.size) + 680 len 4], ext_call.return_data[32 len 28] + (32 * _9916) + ceil32(return_data.size) + 680]) + 32 <= return_data.size
                    mem[(32 * _9916) + (2 * ceil32(return_data.size)) + 680] = mem[mem[(32 * _9916) + ceil32(return_data.size) + 680 len 4], ext_call.return_data[32 len 28] + (32 * _9916) + ceil32(return_data.size) + 680]
                    if mem[(32 * _9916) + (2 * ceil32(return_data.size)) + 680] - 1 < mem[(32 * _9916) + (2 * ceil32(return_data.size)) + 680]:
            else:
                mem[456] = return_data.size
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if address(ext_call.return_data[0]) == address(stor1.field_0):
                        call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[ceil32(return_data.size) + 457] = 2
                        mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                        mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = msg.sender
                        mem[ceil32(return_data.size) + 685] = block.timestamp
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = 2
                        mem[ceil32(return_data.size) + 749 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        _9709 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                        _9919 = mem[_9709 + ceil32(return_data.size) + 553]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9709 + ceil32(return_data.size) + 553])] = mem[_9709 + ceil32(return_data.size) + 585 len floor32(mem[_9709 + ceil32(return_data.size) + 553])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9919) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                        mem[(32 * _9919) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                        mem[(32 * _9919) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _9919) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9919) + (4 * ceil32(return_data.size)) + 622] = 32
                        mem[(32 * _9919) + (4 * ceil32(return_data.size)) + 654] = 35
                        mem[(32 * _9919) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _9919) + (4 * ceil32(return_data.size)) + 618
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if address(ext_call.return_data[0]) == address(stor1.field_0):
                        call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[ceil32(return_data.size) + 457] = 2
                        mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                        mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = msg.sender
                        mem[ceil32(return_data.size) + 685] = block.timestamp
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = 2
                        mem[ceil32(return_data.size) + 749 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) != address(stor1.field_0):
                            _9713 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                            _9921 = mem[_9713 + ceil32(return_data.size) + 553]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9713 + ceil32(return_data.size) + 553])] = mem[_9713 + ceil32(return_data.size) + 585 len floor32(mem[_9713 + ceil32(return_data.size) + 553])]
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(32 * _9921) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                            mem[(32 * _9921) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                            mem[(32 * _9921) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9921) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9921) + (4 * ceil32(return_data.size)) + 622] = 32
                            mem[(32 * _9921) + (4 * ceil32(return_data.size)) + 654] = 35
                            mem[(32 * _9921) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9921) + (4 * ceil32(return_data.size)) + 618
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        _9715 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                        _9922 = mem[_9715 + ceil32(return_data.size) + 553]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9715 + ceil32(return_data.size) + 553])] = mem[_9715 + ceil32(return_data.size) + 585 len floor32(mem[_9715 + ceil32(return_data.size) + 553])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9922) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                        mem[(32 * _9922) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                        mem[(32 * _9922) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _9922) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9922) + (4 * ceil32(return_data.size)) + 622] = 32
                        mem[(32 * _9922) + (4 * ceil32(return_data.size)) + 654] = 35
                        mem[(32 * _9922) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _9922) + (4 * ceil32(return_data.size)) + 618
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[ceil32(return_data.size) + 457] = 2
                    mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                    mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = msg.sender
                    mem[ceil32(return_data.size) + 685] = block.timestamp
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = 2
                    mem[ceil32(return_data.size) + 749 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    _9711 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                    _9920 = mem[_9711 + ceil32(return_data.size) + 553]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9711 + ceil32(return_data.size) + 553])] = mem[_9711 + ceil32(return_data.size) + 585 len floor32(mem[_9711 + ceil32(return_data.size) + 553])]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]:
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = address(stor1.field_0)
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 685] = ext_call.return_data[32]
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 717] = 0
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 781] = msg.sender
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 813] = block.timestamp
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 749] = 160
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 845] = 2
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 877 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 877 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _9920) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681
                        require return_data.size >= 32
                        require mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681] <= 4294967296 and mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681]) + 32 <= return_data.size
                        mem[(32 * _9920) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681] = mem[mem[(32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9920) + ceil32(return_data.size) + ceil32(return_data.size) + 681]
                        if mem[(32 * _9920) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681] - 1 < mem[(32 * _9920) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681]:
                else:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if address(ext_call.return_data[0]) == address(stor1.field_0):
                        call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[ceil32(return_data.size) + 457] = 2
                        mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                        mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = msg.sender
                        mem[ceil32(return_data.size) + 685] = block.timestamp
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = 2
                        mem[ceil32(return_data.size) + 749 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        _9717 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                        _9923 = mem[_9717 + ceil32(return_data.size) + 553]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9717 + ceil32(return_data.size) + 553])] = mem[_9717 + ceil32(return_data.size) + 585 len floor32(mem[_9717 + ceil32(return_data.size) + 553])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9923) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                        mem[(32 * _9923) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                        mem[(32 * _9923) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _9923) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9923) + (4 * ceil32(return_data.size)) + 622] = 32
                        mem[(32 * _9923) + (4 * ceil32(return_data.size)) + 654] = 35
                        mem[(32 * _9923) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _9923) + (4 * ceil32(return_data.size)) + 618
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if address(ext_call.return_data[0]) == address(stor1.field_0):
                        call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[ceil32(return_data.size) + 457] = 2
                        mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                        mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = msg.sender
                        mem[ceil32(return_data.size) + 685] = block.timestamp
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = 2
                        mem[ceil32(return_data.size) + 749 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) != address(stor1.field_0):
                            _9721 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                            _9925 = mem[_9721 + ceil32(return_data.size) + 553]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9721 + ceil32(return_data.size) + 553])] = mem[_9721 + ceil32(return_data.size) + 585 len floor32(mem[_9721 + ceil32(return_data.size) + 553])]
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(32 * _9925) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                            mem[(32 * _9925) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                            mem[(32 * _9925) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9925) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9925) + (4 * ceil32(return_data.size)) + 622] = 32
                            mem[(32 * _9925) + (4 * ceil32(return_data.size)) + 654] = 35
                            mem[(32 * _9925) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9925) + (4 * ceil32(return_data.size)) + 618
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        _9723 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                        _9926 = mem[_9723 + ceil32(return_data.size) + 553]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9723 + ceil32(return_data.size) + 553])] = mem[_9723 + ceil32(return_data.size) + 585 len floor32(mem[_9723 + ceil32(return_data.size) + 553])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9926) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                        mem[(32 * _9926) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                        mem[(32 * _9926) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _9926) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9926) + (4 * ceil32(return_data.size)) + 622] = 32
                        mem[(32 * _9926) + (4 * ceil32(return_data.size)) + 654] = 35
                        mem[(32 * _9926) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _9926) + (4 * ceil32(return_data.size)) + 618
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[ceil32(return_data.size) + 457] = 2
                    mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                    mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = msg.sender
                    mem[ceil32(return_data.size) + 685] = block.timestamp
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = 2
                    mem[ceil32(return_data.size) + 749 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    _9719 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                    _9924 = mem[_9719 + ceil32(return_data.size) + 553]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9719 + ceil32(return_data.size) + 553])] = mem[_9719 + ceil32(return_data.size) + 585 len floor32(mem[_9719 + ceil32(return_data.size) + 553])]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]:
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = address(stor1.field_0)
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 685] = ext_call.return_data[32]
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 717] = 0
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 781] = msg.sender
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 813] = block.timestamp
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 749] = 160
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 845] = 2
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 877 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 877 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _9924) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681
                        require return_data.size >= 32
                        require mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681] <= 4294967296 and mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681]) + 32 <= return_data.size
                        mem[(32 * _9924) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681] = mem[mem[(32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9924) + ceil32(return_data.size) + ceil32(return_data.size) + 681]
                        if mem[(32 * _9924) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681] - 1 < mem[(32 * _9924) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681]:
    else:
        mem[292] = return_data.size
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if ext_call.return_data[0]:
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                if address(ext_call.return_data[0]) == address(stor1.field_0):
                    call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[ceil32(return_data.size) + 293] = 2
                    mem[ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 357] = address(stor1.field_0)
                    mem[ceil32(return_data.size) + 389] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 425] = 0
                    mem[ceil32(return_data.size) + 489] = msg.sender
                    mem[ceil32(return_data.size) + 521] = block.timestamp
                    mem[ceil32(return_data.size) + 457] = 160
                    mem[ceil32(return_data.size) + 553] = 2
                    mem[ceil32(return_data.size) + 585 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 585 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
                    require return_data.size >= 32
                    _6553 = mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]
                    _6633 = mem[_6553 + ceil32(return_data.size) + 389]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_6553 + ceil32(return_data.size) + 389])] = mem[_6553 + ceil32(return_data.size) + 421 len floor32(mem[_6553 + ceil32(return_data.size) + 389])]
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]
                    call msg.sender with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _6633) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                    mem[(32 * _6633) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = return_data.size
                    mem[(32 * _6633) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                    mem[(32 * _6633) + (4 * ceil32(return_data.size)) + 454] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _6633) + (4 * ceil32(return_data.size)) + 458] = 32
                    mem[(32 * _6633) + (4 * ceil32(return_data.size)) + 490] = 35
                    mem[(32 * _6633) + (4 * ceil32(return_data.size)) + 522 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                    revert with memory
                      from (32 * _6633) + (4 * ceil32(return_data.size)) + 454
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if address(ext_call.return_data[0]) == address(stor1.field_0):
                    call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[ceil32(return_data.size) + 293] = 2
                    mem[ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 357] = address(stor1.field_0)
                    mem[ceil32(return_data.size) + 389] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 425] = 0
                    mem[ceil32(return_data.size) + 489] = msg.sender
                    mem[ceil32(return_data.size) + 521] = block.timestamp
                    mem[ceil32(return_data.size) + 457] = 160
                    mem[ceil32(return_data.size) + 553] = 2
                    mem[ceil32(return_data.size) + 585 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 585 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != address(stor1.field_0):
                        _6557 = mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]
                        _6635 = mem[_6557 + ceil32(return_data.size) + 389]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_6557 + ceil32(return_data.size) + 389])] = mem[_6557 + ceil32(return_data.size) + 421 len floor32(mem[_6557 + ceil32(return_data.size) + 389])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _6635) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                        mem[(32 * _6635) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = return_data.size
                        mem[(32 * _6635) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _6635) + (4 * ceil32(return_data.size)) + 454] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _6635) + (4 * ceil32(return_data.size)) + 458] = 32
                        mem[(32 * _6635) + (4 * ceil32(return_data.size)) + 490] = 35
                        mem[(32 * _6635) + (4 * ceil32(return_data.size)) + 522 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _6635) + (4 * ceil32(return_data.size)) + 454
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    _6559 = mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]
                    _6636 = mem[_6559 + ceil32(return_data.size) + 389]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_6559 + ceil32(return_data.size) + 389])] = mem[_6559 + ceil32(return_data.size) + 421 len floor32(mem[_6559 + ceil32(return_data.size) + 389])]
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]
                    call msg.sender with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _6636) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                    mem[(32 * _6636) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = return_data.size
                    mem[(32 * _6636) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                    mem[(32 * _6636) + (4 * ceil32(return_data.size)) + 454] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _6636) + (4 * ceil32(return_data.size)) + 458] = 32
                    mem[(32 * _6636) + (4 * ceil32(return_data.size)) + 490] = 35
                    mem[(32 * _6636) + (4 * ceil32(return_data.size)) + 522 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                    revert with memory
                      from (32 * _6636) + (4 * ceil32(return_data.size)) + 454
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[ceil32(return_data.size) + 293] = 2
                mem[ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
                mem[ceil32(return_data.size) + 357] = address(stor1.field_0)
                mem[ceil32(return_data.size) + 389] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 425] = 0
                mem[ceil32(return_data.size) + 489] = msg.sender
                mem[ceil32(return_data.size) + 521] = block.timestamp
                mem[ceil32(return_data.size) + 457] = 160
                mem[ceil32(return_data.size) + 553] = 2
                mem[ceil32(return_data.size) + 585 len 0] = None
                require ext_code.size(arg3)
                call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 585 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _6555 = mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]
                _6634 = mem[_6555 + ceil32(return_data.size) + 389]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_6555 + ceil32(return_data.size) + 389])] = mem[_6555 + ceil32(return_data.size) + 421 len floor32(mem[_6555 + ceil32(return_data.size) + 389])]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]:
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = address(stor1.field_0)
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = ext_call.return_data[32]
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 0
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = msg.sender
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = block.timestamp
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = 160
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 681] = 2
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _6634) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 517
                    require return_data.size >= 32
                    require mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] <= 4294967296
                    require mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + (32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517] <= 4294967296 and mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + (32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517]) + 32 <= return_data.size
                    mem[(32 * _6634) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 517] = mem[mem[(32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + (32 * _6634) + ceil32(return_data.size) + ceil32(return_data.size) + 517]
                    if mem[(32 * _6634) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 517] - 1 < mem[(32 * _6634) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 517]:
            else:
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 415 len 10]
                mem[ceil32(return_data.size) + 329] = arg3
                mem[ceil32(return_data.size) + 361] = -1
                mem[ceil32(return_data.size) + 293] = 68
                mem[ceil32(return_data.size) + 325 len 4] = approve(address rg1, uint256 rg2)
                mem[ceil32(return_data.size) + 393] = 32
                mem[ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(arg1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, address(arg3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call arg1 with:
                     gas gas_remaining wei
                    args -1, 0, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if address(ext_call.return_data[0]) == address(stor1.field_0):
                        call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[ceil32(return_data.size) + 457] = 2
                        mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                        mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = msg.sender
                        mem[ceil32(return_data.size) + 685] = block.timestamp
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = 2
                        mem[ceil32(return_data.size) + 749 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        _9733 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                        _9932 = mem[_9733 + ceil32(return_data.size) + 553]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9733 + ceil32(return_data.size) + 553])] = mem[_9733 + ceil32(return_data.size) + 585 len floor32(mem[_9733 + ceil32(return_data.size) + 553])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9932) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                        mem[(32 * _9932) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                        mem[(32 * _9932) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _9932) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9932) + (4 * ceil32(return_data.size)) + 622] = 32
                        mem[(32 * _9932) + (4 * ceil32(return_data.size)) + 654] = 35
                        mem[(32 * _9932) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _9932) + (4 * ceil32(return_data.size)) + 618
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if address(ext_call.return_data[0]) == address(stor1.field_0):
                        call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[ceil32(return_data.size) + 457] = 2
                        mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                        mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = msg.sender
                        mem[ceil32(return_data.size) + 685] = block.timestamp
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = 2
                        mem[ceil32(return_data.size) + 749 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) != address(stor1.field_0):
                            _9737 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                            _9934 = mem[_9737 + ceil32(return_data.size) + 553]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9737 + ceil32(return_data.size) + 553])] = mem[_9737 + ceil32(return_data.size) + 585 len floor32(mem[_9737 + ceil32(return_data.size) + 553])]
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(32 * _9934) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                            mem[(32 * _9934) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                            mem[(32 * _9934) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9934) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9934) + (4 * ceil32(return_data.size)) + 622] = 32
                            mem[(32 * _9934) + (4 * ceil32(return_data.size)) + 654] = 35
                            mem[(32 * _9934) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9934) + (4 * ceil32(return_data.size)) + 618
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        _9739 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                        _9935 = mem[_9739 + ceil32(return_data.size) + 553]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9739 + ceil32(return_data.size) + 553])] = mem[_9739 + ceil32(return_data.size) + 585 len floor32(mem[_9739 + ceil32(return_data.size) + 553])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9935) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                        mem[(32 * _9935) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                        mem[(32 * _9935) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _9935) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9935) + (4 * ceil32(return_data.size)) + 622] = 32
                        mem[(32 * _9935) + (4 * ceil32(return_data.size)) + 654] = 35
                        mem[(32 * _9935) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _9935) + (4 * ceil32(return_data.size)) + 618
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[ceil32(return_data.size) + 457] = 2
                    mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                    mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = msg.sender
                    mem[ceil32(return_data.size) + 685] = block.timestamp
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = 2
                    mem[ceil32(return_data.size) + 749 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    _9735 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                    _9933 = mem[_9735 + ceil32(return_data.size) + 553]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9735 + ceil32(return_data.size) + 553])] = mem[_9735 + ceil32(return_data.size) + 585 len floor32(mem[_9735 + ceil32(return_data.size) + 553])]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]:
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = address(stor1.field_0)
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 685] = ext_call.return_data[32]
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 717] = 0
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 781] = msg.sender
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 813] = block.timestamp
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 749] = 160
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 845] = 2
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 877 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 877 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _9933) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681
                        require return_data.size >= 32
                        require mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681] <= 4294967296 and mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681]) + 32 <= return_data.size
                        mem[(32 * _9933) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681] = mem[mem[(32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9933) + ceil32(return_data.size) + ceil32(return_data.size) + 681]
                        if mem[(32 * _9933) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681] - 1 < mem[(32 * _9933) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681]:
                else:
                    mem[ceil32(return_data.size) + 457] = return_data.size
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size <= 0:
                        require ext_code.size(arg1)
                        staticcall arg1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if address(ext_call.return_data[0]) == address(stor1.field_0):
                            call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[(2 * ceil32(return_data.size)) + 458] = 2
                            mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                            mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 590] = 0
                            mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 622] = 160
                            mem[(2 * ceil32(return_data.size)) + 718] = 2
                            mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 554
                            require return_data.size >= 32
                            _9741 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                            _9936 = mem[_9741 + (2 * ceil32(return_data.size)) + 554]
                            mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9741 + (2 * ceil32(return_data.size)) + 554])] = mem[_9741 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9741 + (2 * ceil32(return_data.size)) + 554])]
                            require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                            mem[(32 * _9936) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if ext_call.success:
                                mem[(32 * _9936) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9936) + (4 * ceil32(return_data.size)) + 622] = 32
                                mem[(32 * _9936) + (4 * ceil32(return_data.size)) + 654] = 35
                                mem[(32 * _9936) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9936) + (4 * ceil32(return_data.size)) + 618
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(32 * _9936) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9936) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9936) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                            mem[(32 * _9936) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                            mem[(32 * _9936) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9936) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                               len (5 * ceil32(return_data.size)) + 132
                        if address(ext_call.return_data[0]) == address(stor1.field_0):
                            call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[(2 * ceil32(return_data.size)) + 458] = 2
                            mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                            mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 590] = 0
                            mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 622] = 160
                            mem[(2 * ceil32(return_data.size)) + 718] = 2
                            mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 554
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != address(stor1.field_0):
                                _9745 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                                _9938 = mem[_9745 + (2 * ceil32(return_data.size)) + 554]
                                mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9745 + (2 * ceil32(return_data.size)) + 554])] = mem[_9745 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9745 + (2 * ceil32(return_data.size)) + 554])]
                                require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                                mem[(32 * _9938) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                                call msg.sender with:
                                   value ext_call.return_data[32] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if ext_call.success:
                                    mem[(32 * _9938) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _9938) + (4 * ceil32(return_data.size)) + 622] = 32
                                    mem[(32 * _9938) + (4 * ceil32(return_data.size)) + 654] = 35
                                    mem[(32 * _9938) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                    revert with memory
                                      from (32 * _9938) + (4 * ceil32(return_data.size)) + 618
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(32 * _9938) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                mem[(32 * _9938) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9938) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                                mem[(32 * _9938) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                                mem[(32 * _9938) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9938) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                                   len (5 * ceil32(return_data.size)) + 132
                            _9747 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                            _9939 = mem[_9747 + (2 * ceil32(return_data.size)) + 554]
                            mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9747 + (2 * ceil32(return_data.size)) + 554])] = mem[_9747 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9747 + (2 * ceil32(return_data.size)) + 554])]
                            require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                            mem[(32 * _9939) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if ext_call.success:
                                mem[(32 * _9939) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9939) + (4 * ceil32(return_data.size)) + 622] = 32
                                mem[(32 * _9939) + (4 * ceil32(return_data.size)) + 654] = 35
                                mem[(32 * _9939) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9939) + (4 * ceil32(return_data.size)) + 618
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(32 * _9939) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9939) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9939) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                            mem[(32 * _9939) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                            mem[(32 * _9939) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9939) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                               len (5 * ceil32(return_data.size)) + 132
                        call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[(2 * ceil32(return_data.size)) + 458] = 2
                        mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                        mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 590] = 0
                        mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 622] = 160
                        mem[(2 * ceil32(return_data.size)) + 718] = 2
                        mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 554
                        require return_data.size >= 32
                        _9743 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                        _9937 = mem[_9743 + (2 * ceil32(return_data.size)) + 554]
                        mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9743 + (2 * ceil32(return_data.size)) + 554])] = mem[_9743 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9743 + (2 * ceil32(return_data.size)) + 554])]
                        if mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]:
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 650] = address(stor1.field_0)
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 686] = ext_call.return_data[32]
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 718] = 0
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 782] = msg.sender
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 814] = block.timestamp
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 750] = 160
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 846] = 2
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 878 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 878 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _9937) + (4 * ceil32(return_data.size)) + 682
                            require return_data.size >= 32
                            require mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9937) + (4 * ceil32(return_data.size)) + 682] <= 4294967296 and mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9937) + (4 * ceil32(return_data.size)) + 682]) + 32 <= return_data.size
                            mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682] = mem[mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9937) + (4 * ceil32(return_data.size)) + 682]
                            if mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682] - 1 < mem[(32 * _9937) + (4 * ceil32(return_data.size)) + 682]:
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(arg1)
                        staticcall arg1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if address(ext_call.return_data[0]) == address(stor1.field_0):
                            call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[(2 * ceil32(return_data.size)) + 458] = 2
                            mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                            mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 590] = 0
                            mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 622] = 160
                            mem[(2 * ceil32(return_data.size)) + 718] = 2
                            mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 554
                            require return_data.size >= 32
                            _9749 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                            _9940 = mem[_9749 + (2 * ceil32(return_data.size)) + 554]
                            mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9749 + (2 * ceil32(return_data.size)) + 554])] = mem[_9749 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9749 + (2 * ceil32(return_data.size)) + 554])]
                            require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                            mem[(32 * _9940) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if ext_call.success:
                                mem[(32 * _9940) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9940) + (4 * ceil32(return_data.size)) + 622] = 32
                                mem[(32 * _9940) + (4 * ceil32(return_data.size)) + 654] = 35
                                mem[(32 * _9940) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9940) + (4 * ceil32(return_data.size)) + 618
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(32 * _9940) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9940) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9940) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                            mem[(32 * _9940) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                            mem[(32 * _9940) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9940) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                               len (5 * ceil32(return_data.size)) + 132
                        if address(ext_call.return_data[0]) == address(stor1.field_0):
                            call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[(2 * ceil32(return_data.size)) + 458] = 2
                            mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                            mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 590] = 0
                            mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 622] = 160
                            mem[(2 * ceil32(return_data.size)) + 718] = 2
                            mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 554
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != address(stor1.field_0):
                                _9753 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                                _9942 = mem[_9753 + (2 * ceil32(return_data.size)) + 554]
                                mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9753 + (2 * ceil32(return_data.size)) + 554])] = mem[_9753 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9753 + (2 * ceil32(return_data.size)) + 554])]
                                require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                                mem[(32 * _9942) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                                call msg.sender with:
                                   value ext_call.return_data[32] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if ext_call.success:
                                    mem[(32 * _9942) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _9942) + (4 * ceil32(return_data.size)) + 622] = 32
                                    mem[(32 * _9942) + (4 * ceil32(return_data.size)) + 654] = 35
                                    mem[(32 * _9942) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                    revert with memory
                                      from (32 * _9942) + (4 * ceil32(return_data.size)) + 618
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(32 * _9942) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                mem[(32 * _9942) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9942) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                                mem[(32 * _9942) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                                mem[(32 * _9942) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9942) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                                   len (5 * ceil32(return_data.size)) + 132
                            _9755 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                            _9943 = mem[_9755 + (2 * ceil32(return_data.size)) + 554]
                            mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9755 + (2 * ceil32(return_data.size)) + 554])] = mem[_9755 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9755 + (2 * ceil32(return_data.size)) + 554])]
                            require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                            mem[(32 * _9943) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if ext_call.success:
                                mem[(32 * _9943) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9943) + (4 * ceil32(return_data.size)) + 622] = 32
                                mem[(32 * _9943) + (4 * ceil32(return_data.size)) + 654] = 35
                                mem[(32 * _9943) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9943) + (4 * ceil32(return_data.size)) + 618
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(32 * _9943) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9943) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9943) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                            mem[(32 * _9943) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                            mem[(32 * _9943) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9943) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                               len (5 * ceil32(return_data.size)) + 132
                        call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[(2 * ceil32(return_data.size)) + 458] = 2
                        mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                        mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 590] = 0
                        mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 622] = 160
                        mem[(2 * ceil32(return_data.size)) + 718] = 2
                        mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 554
                        require return_data.size >= 32
                        _9751 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                        _9941 = mem[_9751 + (2 * ceil32(return_data.size)) + 554]
                        mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9751 + (2 * ceil32(return_data.size)) + 554])] = mem[_9751 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9751 + (2 * ceil32(return_data.size)) + 554])]
                        if mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]:
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 650] = address(stor1.field_0)
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 686] = ext_call.return_data[32]
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 718] = 0
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 782] = msg.sender
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 814] = block.timestamp
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 750] = 160
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 846] = 2
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 878 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 878 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _9941) + (4 * ceil32(return_data.size)) + 682
                            require return_data.size >= 32
                            require mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9941) + (4 * ceil32(return_data.size)) + 682] <= 4294967296 and mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9941) + (4 * ceil32(return_data.size)) + 682]) + 32 <= return_data.size
                            mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682] = mem[mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9941) + (4 * ceil32(return_data.size)) + 682]
                            if mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682] - 1 < mem[(32 * _9941) + (4 * ceil32(return_data.size)) + 682]:
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(arg1)
            staticcall arg1.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            if ext_call.return_data[0]:
                staticcall arg1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg3)
                if address(ext_call.return_data[0]) == address(stor1.field_0):
                    call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[ceil32(return_data.size) + 293] = 2
                    mem[ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 357] = address(stor1.field_0)
                    mem[ceil32(return_data.size) + 389] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 425] = 0
                    mem[ceil32(return_data.size) + 489] = msg.sender
                    mem[ceil32(return_data.size) + 521] = block.timestamp
                    mem[ceil32(return_data.size) + 457] = 160
                    mem[ceil32(return_data.size) + 553] = 2
                    mem[ceil32(return_data.size) + 585 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 585 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
                    require return_data.size >= 32
                    _6561 = mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]
                    _6637 = mem[_6561 + ceil32(return_data.size) + 389]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_6561 + ceil32(return_data.size) + 389])] = mem[_6561 + ceil32(return_data.size) + 421 len floor32(mem[_6561 + ceil32(return_data.size) + 389])]
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]
                    call msg.sender with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _6637) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                    mem[(32 * _6637) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = return_data.size
                    mem[(32 * _6637) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                    mem[(32 * _6637) + (4 * ceil32(return_data.size)) + 454] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _6637) + (4 * ceil32(return_data.size)) + 458] = 32
                    mem[(32 * _6637) + (4 * ceil32(return_data.size)) + 490] = 35
                    mem[(32 * _6637) + (4 * ceil32(return_data.size)) + 522 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                    revert with memory
                      from (32 * _6637) + (4 * ceil32(return_data.size)) + 454
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if address(ext_call.return_data[0]) == address(stor1.field_0):
                    call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[ceil32(return_data.size) + 293] = 2
                    mem[ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 357] = address(stor1.field_0)
                    mem[ceil32(return_data.size) + 389] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 425] = 0
                    mem[ceil32(return_data.size) + 489] = msg.sender
                    mem[ceil32(return_data.size) + 521] = block.timestamp
                    mem[ceil32(return_data.size) + 457] = 160
                    mem[ceil32(return_data.size) + 553] = 2
                    mem[ceil32(return_data.size) + 585 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 585 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) != address(stor1.field_0):
                        _6565 = mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]
                        _6639 = mem[_6565 + ceil32(return_data.size) + 389]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_6565 + ceil32(return_data.size) + 389])] = mem[_6565 + ceil32(return_data.size) + 421 len floor32(mem[_6565 + ceil32(return_data.size) + 389])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _6639) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                        mem[(32 * _6639) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = return_data.size
                        mem[(32 * _6639) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _6639) + (4 * ceil32(return_data.size)) + 454] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _6639) + (4 * ceil32(return_data.size)) + 458] = 32
                        mem[(32 * _6639) + (4 * ceil32(return_data.size)) + 490] = 35
                        mem[(32 * _6639) + (4 * ceil32(return_data.size)) + 522 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _6639) + (4 * ceil32(return_data.size)) + 454
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    _6567 = mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]
                    _6640 = mem[_6567 + ceil32(return_data.size) + 389]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_6567 + ceil32(return_data.size) + 389])] = mem[_6567 + ceil32(return_data.size) + 421 len floor32(mem[_6567 + ceil32(return_data.size) + 389])]
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]
                    call msg.sender with:
                       value ext_call.return_data[32] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        35,
                                        0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                        mem[(32 * _6640) + ceil32(return_data.size) + ceil32(return_data.size) + 556 len 29]
                    mem[(32 * _6640) + ceil32(return_data.size) + ceil32(return_data.size) + 453] = return_data.size
                    mem[(32 * _6640) + ceil32(return_data.size) + ceil32(return_data.size) + 485 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                    mem[(32 * _6640) + (4 * ceil32(return_data.size)) + 454] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _6640) + (4 * ceil32(return_data.size)) + 458] = 32
                    mem[(32 * _6640) + (4 * ceil32(return_data.size)) + 490] = 35
                    mem[(32 * _6640) + (4 * ceil32(return_data.size)) + 522 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                    revert with memory
                      from (32 * _6640) + (4 * ceil32(return_data.size)) + 454
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[ceil32(return_data.size) + 293] = 2
                mem[ceil32(return_data.size) + 325] = address(ext_call.return_data[0])
                mem[ceil32(return_data.size) + 357] = address(stor1.field_0)
                mem[ceil32(return_data.size) + 389] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 425] = 0
                mem[ceil32(return_data.size) + 489] = msg.sender
                mem[ceil32(return_data.size) + 521] = block.timestamp
                mem[ceil32(return_data.size) + 457] = 160
                mem[ceil32(return_data.size) + 553] = 2
                mem[ceil32(return_data.size) + 585 len 0] = None
                require ext_code.size(arg3)
                call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 585 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 389 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 389
                require return_data.size >= 32
                _6563 = mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389] <= 4294967296 and mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = mem[mem[ceil32(return_data.size) + 389 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 389]
                _6638 = mem[_6563 + ceil32(return_data.size) + 389]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len floor32(mem[_6563 + ceil32(return_data.size) + 389])] = mem[_6563 + ceil32(return_data.size) + 421 len floor32(mem[_6563 + ceil32(return_data.size) + 389])]
                if mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 389]:
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 485] = address(stor1.field_0)
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = ext_call.return_data[32]
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 553] = 0
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = msg.sender
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = block.timestamp
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 585] = 160
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 681] = 2
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 713 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _6638) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 517
                    require return_data.size >= 32
                    require mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] <= 4294967296
                    require mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + (32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517] <= 4294967296 and mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + (32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517]) + 32 <= return_data.size
                    mem[(32 * _6638) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 517] = mem[mem[(32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517 len 4], ext_call.return_data[32 len 28] + (32 * _6638) + ceil32(return_data.size) + ceil32(return_data.size) + 517]
                    if mem[(32 * _6638) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 517] - 1 < mem[(32 * _6638) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 517]:
            else:
                staticcall arg1.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 415 len 10]
                mem[ceil32(return_data.size) + 329] = arg3
                mem[ceil32(return_data.size) + 361] = -1
                mem[ceil32(return_data.size) + 293] = 68
                mem[ceil32(return_data.size) + 325 len 4] = approve(address rg1, uint256 rg2)
                mem[ceil32(return_data.size) + 393] = 32
                mem[ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(arg1) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, address(arg3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call arg1 with:
                     gas gas_remaining wei
                    args -1, 0, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    require ext_code.size(arg1)
                    staticcall arg1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    staticcall arg1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if address(ext_call.return_data[0]) == address(stor1.field_0):
                        call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[ceil32(return_data.size) + 457] = 2
                        mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                        mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = msg.sender
                        mem[ceil32(return_data.size) + 685] = block.timestamp
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = 2
                        mem[ceil32(return_data.size) + 749 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        _9765 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                        _9949 = mem[_9765 + ceil32(return_data.size) + 553]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9765 + ceil32(return_data.size) + 553])] = mem[_9765 + ceil32(return_data.size) + 585 len floor32(mem[_9765 + ceil32(return_data.size) + 553])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9949) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                        mem[(32 * _9949) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                        mem[(32 * _9949) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _9949) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9949) + (4 * ceil32(return_data.size)) + 622] = 32
                        mem[(32 * _9949) + (4 * ceil32(return_data.size)) + 654] = 35
                        mem[(32 * _9949) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _9949) + (4 * ceil32(return_data.size)) + 618
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if address(ext_call.return_data[0]) == address(stor1.field_0):
                        call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[ceil32(return_data.size) + 457] = 2
                        mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                        mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 589] = 0
                        mem[ceil32(return_data.size) + 653] = msg.sender
                        mem[ceil32(return_data.size) + 685] = block.timestamp
                        mem[ceil32(return_data.size) + 621] = 160
                        mem[ceil32(return_data.size) + 717] = 2
                        mem[ceil32(return_data.size) + 749 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) != address(stor1.field_0):
                            _9769 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                            require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                            _9951 = mem[_9769 + ceil32(return_data.size) + 553]
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9769 + ceil32(return_data.size) + 553])] = mem[_9769 + ceil32(return_data.size) + 585 len floor32(mem[_9769 + ceil32(return_data.size) + 553])]
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(32 * _9951) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                            mem[(32 * _9951) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                            mem[(32 * _9951) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9951) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9951) + (4 * ceil32(return_data.size)) + 622] = 32
                            mem[(32 * _9951) + (4 * ceil32(return_data.size)) + 654] = 35
                            mem[(32 * _9951) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9951) + (4 * ceil32(return_data.size)) + 618
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        _9771 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                        _9952 = mem[_9771 + ceil32(return_data.size) + 553]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9771 + ceil32(return_data.size) + 553])] = mem[_9771 + ceil32(return_data.size) + 585 len floor32(mem[_9771 + ceil32(return_data.size) + 553])]
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]
                        call msg.sender with:
                           value ext_call.return_data[32] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            35,
                                            0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                            mem[(32 * _9952) + ceil32(return_data.size) + ceil32(return_data.size) + 720 len 29]
                        mem[(32 * _9952) + ceil32(return_data.size) + ceil32(return_data.size) + 617] = return_data.size
                        mem[(32 * _9952) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                        mem[(32 * _9952) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9952) + (4 * ceil32(return_data.size)) + 622] = 32
                        mem[(32 * _9952) + (4 * ceil32(return_data.size)) + 654] = 35
                        mem[(32 * _9952) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                        revert with memory
                          from (32 * _9952) + (4 * ceil32(return_data.size)) + 618
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    mem[ceil32(return_data.size) + 457] = 2
                    mem[ceil32(return_data.size) + 489] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + 521] = address(stor1.field_0)
                    mem[ceil32(return_data.size) + 553] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 557] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 589] = 0
                    mem[ceil32(return_data.size) + 653] = msg.sender
                    mem[ceil32(return_data.size) + 685] = block.timestamp
                    mem[ceil32(return_data.size) + 621] = 160
                    mem[ceil32(return_data.size) + 717] = 2
                    mem[ceil32(return_data.size) + 749 len 0] = None
                    require ext_code.size(arg3)
                    call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 749 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 553
                    require return_data.size >= 32
                    _9767 = mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553] <= 4294967296 and mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = mem[mem[ceil32(return_data.size) + 553 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + 553]
                    _9950 = mem[_9767 + ceil32(return_data.size) + 553]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 585 len floor32(mem[_9767 + ceil32(return_data.size) + 553])] = mem[_9767 + ceil32(return_data.size) + 585 len floor32(mem[_9767 + ceil32(return_data.size) + 553])]
                    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 553]:
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 649] = address(stor1.field_0)
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 685] = ext_call.return_data[32]
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 717] = 0
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 781] = msg.sender
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 813] = block.timestamp
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 749] = 160
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 845] = 2
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 877 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 877 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _9950) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681
                        require return_data.size >= 32
                        require mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681] <= 4294967296 and mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681]) + 32 <= return_data.size
                        mem[(32 * _9950) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681] = mem[mem[(32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681 len 4], ext_call.return_data[32 len 28] + (32 * _9950) + ceil32(return_data.size) + ceil32(return_data.size) + 681]
                        if mem[(32 * _9950) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681] - 1 < mem[(32 * _9950) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 681]:
                else:
                    mem[ceil32(return_data.size) + 457] = return_data.size
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size <= 0:
                        require ext_code.size(arg1)
                        staticcall arg1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if address(ext_call.return_data[0]) == address(stor1.field_0):
                            call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[(2 * ceil32(return_data.size)) + 458] = 2
                            mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                            mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 590] = 0
                            mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 622] = 160
                            mem[(2 * ceil32(return_data.size)) + 718] = 2
                            mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 554
                            require return_data.size >= 32
                            _9773 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                            _9953 = mem[_9773 + (2 * ceil32(return_data.size)) + 554]
                            mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9773 + (2 * ceil32(return_data.size)) + 554])] = mem[_9773 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9773 + (2 * ceil32(return_data.size)) + 554])]
                            require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                            mem[(32 * _9953) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if ext_call.success:
                                mem[(32 * _9953) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9953) + (4 * ceil32(return_data.size)) + 622] = 32
                                mem[(32 * _9953) + (4 * ceil32(return_data.size)) + 654] = 35
                                mem[(32 * _9953) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9953) + (4 * ceil32(return_data.size)) + 618
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(32 * _9953) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9953) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9953) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                            mem[(32 * _9953) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                            mem[(32 * _9953) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9953) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                               len (5 * ceil32(return_data.size)) + 132
                        if address(ext_call.return_data[0]) == address(stor1.field_0):
                            call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[(2 * ceil32(return_data.size)) + 458] = 2
                            mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                            mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 590] = 0
                            mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 622] = 160
                            mem[(2 * ceil32(return_data.size)) + 718] = 2
                            mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 554
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != address(stor1.field_0):
                                _9777 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                                _9955 = mem[_9777 + (2 * ceil32(return_data.size)) + 554]
                                mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9777 + (2 * ceil32(return_data.size)) + 554])] = mem[_9777 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9777 + (2 * ceil32(return_data.size)) + 554])]
                                require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                                mem[(32 * _9955) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                                call msg.sender with:
                                   value ext_call.return_data[32] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if ext_call.success:
                                    mem[(32 * _9955) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _9955) + (4 * ceil32(return_data.size)) + 622] = 32
                                    mem[(32 * _9955) + (4 * ceil32(return_data.size)) + 654] = 35
                                    mem[(32 * _9955) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                    revert with memory
                                      from (32 * _9955) + (4 * ceil32(return_data.size)) + 618
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(32 * _9955) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                mem[(32 * _9955) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9955) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                                mem[(32 * _9955) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                                mem[(32 * _9955) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9955) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                                   len (5 * ceil32(return_data.size)) + 132
                            _9779 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                            _9956 = mem[_9779 + (2 * ceil32(return_data.size)) + 554]
                            mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9779 + (2 * ceil32(return_data.size)) + 554])] = mem[_9779 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9779 + (2 * ceil32(return_data.size)) + 554])]
                            require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                            mem[(32 * _9956) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if ext_call.success:
                                mem[(32 * _9956) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9956) + (4 * ceil32(return_data.size)) + 622] = 32
                                mem[(32 * _9956) + (4 * ceil32(return_data.size)) + 654] = 35
                                mem[(32 * _9956) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9956) + (4 * ceil32(return_data.size)) + 618
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(32 * _9956) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9956) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9956) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                            mem[(32 * _9956) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                            mem[(32 * _9956) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9956) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                               len (5 * ceil32(return_data.size)) + 132
                        call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[(2 * ceil32(return_data.size)) + 458] = 2
                        mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                        mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 590] = 0
                        mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 622] = 160
                        mem[(2 * ceil32(return_data.size)) + 718] = 2
                        mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 554
                        require return_data.size >= 32
                        _9775 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                        _9954 = mem[_9775 + (2 * ceil32(return_data.size)) + 554]
                        mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9775 + (2 * ceil32(return_data.size)) + 554])] = mem[_9775 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9775 + (2 * ceil32(return_data.size)) + 554])]
                        if mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]:
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 650] = address(stor1.field_0)
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 686] = ext_call.return_data[32]
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 718] = 0
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 782] = msg.sender
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 814] = block.timestamp
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 750] = 160
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 846] = 2
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 878 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 878 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _9954) + (4 * ceil32(return_data.size)) + 682
                            require return_data.size >= 32
                            require mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9954) + (4 * ceil32(return_data.size)) + 682] <= 4294967296 and mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9954) + (4 * ceil32(return_data.size)) + 682]) + 32 <= return_data.size
                            mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682] = mem[mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9954) + (4 * ceil32(return_data.size)) + 682]
                            if mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682] - 1 < mem[(32 * _9954) + (4 * ceil32(return_data.size)) + 682]:
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(arg1)
                        staticcall arg1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if address(ext_call.return_data[0]) == address(stor1.field_0):
                            call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[(2 * ceil32(return_data.size)) + 458] = 2
                            mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                            mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 590] = 0
                            mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 622] = 160
                            mem[(2 * ceil32(return_data.size)) + 718] = 2
                            mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 554
                            require return_data.size >= 32
                            _9781 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                            _9957 = mem[_9781 + (2 * ceil32(return_data.size)) + 554]
                            mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9781 + (2 * ceil32(return_data.size)) + 554])] = mem[_9781 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9781 + (2 * ceil32(return_data.size)) + 554])]
                            require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                            mem[(32 * _9957) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if ext_call.success:
                                mem[(32 * _9957) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9957) + (4 * ceil32(return_data.size)) + 622] = 32
                                mem[(32 * _9957) + (4 * ceil32(return_data.size)) + 654] = 35
                                mem[(32 * _9957) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9957) + (4 * ceil32(return_data.size)) + 618
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(32 * _9957) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9957) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9957) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                            mem[(32 * _9957) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                            mem[(32 * _9957) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9957) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                               len (5 * ceil32(return_data.size)) + 132
                        if address(ext_call.return_data[0]) == address(stor1.field_0):
                            call arg3.removeLiquidityETH(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            mem[(2 * ceil32(return_data.size)) + 458] = 2
                            mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                            mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 590] = 0
                            mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                            mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                            mem[(2 * ceil32(return_data.size)) + 622] = 160
                            mem[(2 * ceil32(return_data.size)) + 718] = 2
                            mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 554
                            require return_data.size >= 32
                            if address(ext_call.return_data[0]) != address(stor1.field_0):
                                _9785 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                                require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                                mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                                _9959 = mem[_9785 + (2 * ceil32(return_data.size)) + 554]
                                mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9785 + (2 * ceil32(return_data.size)) + 554])] = mem[_9785 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9785 + (2 * ceil32(return_data.size)) + 554])]
                                require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                                mem[(32 * _9959) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                                call msg.sender with:
                                   value ext_call.return_data[32] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if ext_call.success:
                                    mem[(32 * _9959) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _9959) + (4 * ceil32(return_data.size)) + 622] = 32
                                    mem[(32 * _9959) + (4 * ceil32(return_data.size)) + 654] = 35
                                    mem[(32 * _9959) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                    revert with memory
                                      from (32 * _9959) + (4 * ceil32(return_data.size)) + 618
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(32 * _9959) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                mem[(32 * _9959) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9959) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                                mem[(32 * _9959) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                                mem[(32 * _9959) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9959) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                                   len (5 * ceil32(return_data.size)) + 132
                            _9787 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                            _9960 = mem[_9787 + (2 * ceil32(return_data.size)) + 554]
                            mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9787 + (2 * ceil32(return_data.size)) + 554])] = mem[_9787 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9787 + (2 * ceil32(return_data.size)) + 554])]
                            require mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]
                            mem[(32 * _9960) + (4 * ceil32(return_data.size)) + 618 len 0] = None
                            call msg.sender with:
                               value ext_call.return_data[32] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if ext_call.success:
                                mem[(32 * _9960) + (4 * ceil32(return_data.size)) + 618] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _9960) + (4 * ceil32(return_data.size)) + 622] = 32
                                mem[(32 * _9960) + (4 * ceil32(return_data.size)) + 654] = 35
                                mem[(32 * _9960) + (4 * ceil32(return_data.size)) + 686 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                                revert with memory
                                  from (32 * _9960) + (4 * ceil32(return_data.size)) + 618
                                   len (5 * ceil32(return_data.size)) + 132
                            mem[(32 * _9960) + (4 * ceil32(return_data.size)) + 650 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if ext_call.success:
                            mem[(32 * _9960) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9960) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 623] = 32
                            mem[(32 * _9960) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = 35
                            mem[(32 * _9960) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 687 len 35] = 0x6c5472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45
                            revert with memory
                              from (32 * _9960) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 619
                               len (5 * ceil32(return_data.size)) + 132
                        call arg3.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2, 0, 0, address(this.address), block.timestamp, mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        mem[(2 * ceil32(return_data.size)) + 458] = 2
                        mem[(2 * ceil32(return_data.size)) + 490] = address(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 522] = address(stor1.field_0)
                        mem[(2 * ceil32(return_data.size)) + 554] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 590] = 0
                        mem[(2 * ceil32(return_data.size)) + 654] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 686] = block.timestamp
                        mem[(2 * ceil32(return_data.size)) + 622] = 160
                        mem[(2 * ceil32(return_data.size)) + 718] = 2
                        mem[(2 * ceil32(return_data.size)) + 750 len 0] = None
                        require ext_code.size(arg3)
                        call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 750 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 554 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 554
                        require return_data.size >= 32
                        _9783 = mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 554] = mem[mem[(2 * ceil32(return_data.size)) + 554 len 4], ext_call.return_data[0 len 28] + (2 * ceil32(return_data.size)) + 554]
                        _9958 = mem[_9783 + (2 * ceil32(return_data.size)) + 554]
                        mem[(4 * ceil32(return_data.size)) + 586 len floor32(mem[_9783 + (2 * ceil32(return_data.size)) + 554])] = mem[_9783 + (2 * ceil32(return_data.size)) + 586 len floor32(mem[_9783 + (2 * ceil32(return_data.size)) + 554])]
                        if mem[(4 * ceil32(return_data.size)) + 554] - 1 < mem[(4 * ceil32(return_data.size)) + 554]:
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 650] = address(stor1.field_0)
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 686] = ext_call.return_data[32]
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 718] = 0
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 782] = msg.sender
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 814] = block.timestamp
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 750] = 160
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 846] = 2
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 878 len 0] = None
                            require ext_code.size(arg3)
                            call arg3.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, msg.sender, block.timestamp, 2, mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 878 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _9958) + (4 * ceil32(return_data.size)) + 682
                            require return_data.size >= 32
                            require mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9958) + (4 * ceil32(return_data.size)) + 682] <= 4294967296 and mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9958) + (4 * ceil32(return_data.size)) + 682]) + 32 <= return_data.size
                            mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682] = mem[mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682 len 4], ext_call.return_data[32 len 28] + (32 * _9958) + (4 * ceil32(return_data.size)) + 682]
                            if mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682] - 1 < mem[(32 * _9958) + (4 * ceil32(return_data.size)) + 682]:
    revert
}



}
