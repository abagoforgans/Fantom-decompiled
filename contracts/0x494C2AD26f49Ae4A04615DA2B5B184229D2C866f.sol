contract main {




// =====================  Runtime code  =====================


#
#  - zapInToken(address arg1, uint256 arg2, address arg3, address arg4)
#  - zapOut(address arg1, uint256 arg2, address arg3)
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
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
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
    staticcall arg1.0xd21220a7 with:
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
        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _867) + ceil32(return_data.size) + 452 len 4]
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
                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _869) + ceil32(return_data.size) + 452 len 4]
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
                staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[(32 * _870) + ceil32(return_data.size) + 452 len 4]
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
            require mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] - 1 < mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320]
            _3122 = mem[(32 * mem[(32 * _868) + (2 * ceil32(return_data.size)) + 320] - 1) + (32 * _868) + (2 * ceil32(return_data.size)) + 352]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args -1, mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len 28], mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 745 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with uint16(stor1.field_144)
                        mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(32 * _2486) + (32 * _868) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 713]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _2486) + (32 * _868) + (4 * ceil32(return_data.size)) + 792 len 22]
                    require ext_code.size(arg2)
                    call arg2.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), _1666, _3122, 0, 0, msg.sender, block.timestamp
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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
                        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
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



}
