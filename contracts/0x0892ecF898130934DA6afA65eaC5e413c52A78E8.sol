contract main {




// =====================  Runtime code  =====================


#
#  - swapBwareTokens(uint256 arg1, uint256 arg2, uint256 arg3)
#
uint32 stor0;
address currentOwner;
uint256 stor0;
uint32 stor1;
address tokenAddress;
uint256 stor1;
uint256 eTHToSell;

function getTokenAddress() {
    return address(tokenAddress)
}

function getETHToSell() {
    return eTHToSell
}

function getCurrentOwner() {
    return address(currentOwner)
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if address(currentOwner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x736f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    address(currentOwner) = arg1
}

function withdrawETH() {
    if address(currentOwner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x736f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    call address(currentOwner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawToken() {
    if address(currentOwner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x736f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    if not address(tokenAddress):
        return 1
    call address(tokenAddress).0x70a08231 with:
         gas gas_remaining wei
        args Mask(224, 32, this.address) >> 32, mem[196 len 4]
    if not return_data.size:
        call address(tokenAddress) with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 32, unknown_0x70a08231(?????), Mask(224, 32, this.address) >> 32) << 224, mem[328 len 4]
        if not ext_call.success:
            revert with 0, 'Could not transfer assets'
        return 1
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 265 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), mem[196 len 28]
    mem[ceil32(return_data.size) + 357 len 4] = mem[216 len 4]
    call address(tokenAddress) with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 0, mem[196 len 28]) << 256, mem[ceil32(return_data.size) + 329 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Could not transfer assets'
        return 1
    if not ext_call.success:
        revert with 0, 
                    'Could not transfer assets',
                    mem[(2 * ceil32(return_data.size)) + 366 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    return 1, mem[(2 * ceil32(return_data.size)) + 298 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function sub_d72a04a0(?) payable {
    require calldata.size - 4 >= 64
    if address(currentOwner) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x736f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    address(tokenAddress) = arg1
    eTHToSell = msg.value
    mem[96] = 4
    mem[128 len 4] = WETH()
    mem[132 len 0] = None
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[132 len 4] with:
         gas gas_remaining wei
    if not return_data.size:
        require not ext_call.success
        revert with 0, 32, 37, 0xfe436f756c64206e6f74206665746368205745544820636f6e747261637420616464726573, mem[237 len 27]
    mem[132] = return_data.size
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    37,
                    0xfe436f756c64206e6f74206665746368205745544820636f6e747261637420616464726573,
                    mem[ceil32(return_data.size) + 238 len 27]
    require return_data.size >= 32
    _1840 = mem[164]
    if mem[176 len 20] < address(tokenAddress):
        mem[ceil32(return_data.size) + 169] = mem[176 len 20]
        mem[ceil32(return_data.size) + 201] = address(tokenAddress)
        mem[ceil32(return_data.size) + 133] = 68
        mem[ceil32(return_data.size) + 165 len 4] = getPair(address arg1, address arg2)
        mem[ceil32(return_data.size) + 233 len 64] = 0, mem[ceil32(return_data.size) + 169], Mask(224, 0, stor1)
        mem[ceil32(return_data.size) + 325 len 4] = uint32(stor1)
        call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.mem[ceil32(return_data.size) + 197 len 4] with:
             gas gas_remaining wei
            args address(tokenAddress), Mask(224, 32, mem[ceil32(return_data.size) + 169], Mask(224, 0, stor1)) >> 32, mem[ceil32(return_data.size) + 297 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'Could not fetch the pair address'
        mem[ceil32(return_data.size) + 233] = return_data.size
        mem[ceil32(return_data.size) + 265 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'Could not fetch the pair address',
                        mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require return_data.size >= 32
        _3728 = mem[ceil32(return_data.size) + 265]
        mem[(2 * ceil32(return_data.size)) + 234] = mem[ceil32(return_data.size) + 277 len 20]
        emit Address(mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
        mem[(2 * ceil32(return_data.size)) + 234] = 4
        mem[(2 * ceil32(return_data.size)) + 266 len 4] = getReserves()
        mem[(2 * ceil32(return_data.size)) + 270 len 0] = None
        call address(_3728).mem[(2 * ceil32(return_data.size)) + 270 len 4] with:
             gas gas_remaining wei
        require return_data.size
        mem[(2 * ceil32(return_data.size)) + 270] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 302 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        _5515 = mem[(2 * ceil32(return_data.size)) + 302]
        _5516 = mem[(2 * ceil32(return_data.size)) + 334]
        require ext_call.success
        if address(_1840) == address(_1840):
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271] = mem[(2 * ceil32(return_data.size)) + 302]
            emit 0x80d4cbb8: mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271], _5516
            if _5515 <= 0:
                revert with 0, 'No Liquidity in the pool'
            if _5516 <= 0:
                revert with 0, 'No Liquidity in the pool'
            require (997 * eTHToSell) + (1000 * _5515)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 0] = None
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 224] = swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4), (100 * 997 * _5516 * eTHToSell / (997 * eTHToSell) + (1000 * _5515)) - (arg2 * 997 * _5516 * eTHToSell / (997 * eTHToSell) + (1000 * _5515)) / 100, Array(len=block.timestamp + 300, data=2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]), address(this.address)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 615 len 4]
            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] with:
               value eTHToSell wei
                 gas gas_remaining wei
                args Mask(1760, -1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]) << 1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'The buying of tokens failed'
            mem[64] = (4 * ceil32(return_data.size)) + 628
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(4 * ceil32(return_data.size)) + 628] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 632] = 32
                mem[(4 * ceil32(return_data.size)) + 664] = 27
                mem[(4 * ceil32(return_data.size)) + 696] = 'The buying of tokens failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 628
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require return_data.size >= 32
            _8783 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659]
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 64 <= return_data.size + 32
            require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]) + 64 <= return_data.size + 32
            mem[(4 * ceil32(return_data.size)) + 628] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]
            _8930 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8783 + 659]
            mem[(4 * ceil32(return_data.size)) + 660 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8783 + 659])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8783 + 691 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8783 + 659])]
            require 1 < mem[(4 * ceil32(return_data.size)) + 628]
            _9660 = mem[(4 * ceil32(return_data.size)) + 692]
            mem[(32 * _8930) + (4 * ceil32(return_data.size)) + 660] = mem[(4 * ceil32(return_data.size)) + 692]
            emit TokensOut(mem[(32 * _8930) + (4 * ceil32(return_data.size)) + 660]);
            return _9660
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271] = mem[(2 * ceil32(return_data.size)) + 334]
        emit 0x80d4cbb8: mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271], _5515
        if _5516 <= 0:
            revert with 0, 'No Liquidity in the pool'
        if _5515 <= 0:
            revert with 0, 'No Liquidity in the pool'
        require (997 * eTHToSell) + (1000 * _5516)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 0] = None
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 224] = swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4), (100 * 997 * _5515 * eTHToSell / (997 * eTHToSell) + (1000 * _5516)) - (arg2 * 997 * _5515 * eTHToSell / (997 * eTHToSell) + (1000 * _5516)) / 100, Array(len=block.timestamp + 300, data=2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]), address(this.address)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 615 len 4]
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] with:
           value eTHToSell wei
             gas gas_remaining wei
            args Mask(1760, -1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]) << 1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'The buying of tokens failed'
        mem[64] = (4 * ceil32(return_data.size)) + 628
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(4 * ceil32(return_data.size)) + 628] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 632] = 32
            mem[(4 * ceil32(return_data.size)) + 664] = 27
            mem[(4 * ceil32(return_data.size)) + 696] = 'The buying of tokens failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 628
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        require return_data.size >= 32
        _8787 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659]
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] <= 4294967296
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 64 <= return_data.size + 32
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]) + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + 628] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]
        _8932 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8787 + 659]
        mem[(4 * ceil32(return_data.size)) + 660 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8787 + 659])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8787 + 691 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8787 + 659])]
        require 1 < mem[(4 * ceil32(return_data.size)) + 628]
        _9666 = mem[(4 * ceil32(return_data.size)) + 692]
        mem[(32 * _8932) + (4 * ceil32(return_data.size)) + 660] = mem[(4 * ceil32(return_data.size)) + 692]
        emit TokensOut(mem[(32 * _8932) + (4 * ceil32(return_data.size)) + 660]);
        return _9666
    mem[ceil32(return_data.size) + 169] = address(tokenAddress)
    mem[ceil32(return_data.size) + 201] = address(_1840)
    mem[ceil32(return_data.size) + 133] = 68
    mem[ceil32(return_data.size) + 169 len 28] = Mask(224, 0, stor1)
    mem[ceil32(return_data.size) + 165 len 4] = getPair(address arg1, address arg2)
    mem[ceil32(return_data.size) + 233 len 64] = getPair(address arg1, address arg2), Mask(224, 0, stor1), uint32(stor1), address(_1840) << 64
    mem[ceil32(return_data.size) + 325 len 4] = 0
    call 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args address(_1840) << 320, mem[ceil32(return_data.size) + 297 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'Could not fetch the pair address'
    mem[ceil32(return_data.size) + 233] = return_data.size
    mem[ceil32(return_data.size) + 265 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    'Could not fetch the pair address',
                    mem[(2 * ceil32(return_data.size)) + 334 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    require return_data.size >= 32
    _3742 = mem[ceil32(return_data.size) + 265]
    mem[(2 * ceil32(return_data.size)) + 234] = mem[ceil32(return_data.size) + 277 len 20]
    emit Address(mem[(2 * ceil32(return_data.size)) + 234 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]);
    mem[(2 * ceil32(return_data.size)) + 234] = 4
    mem[(2 * ceil32(return_data.size)) + 266 len 4] = getReserves()
    mem[(2 * ceil32(return_data.size)) + 270 len 0] = None
    call address(_3742).mem[(2 * ceil32(return_data.size)) + 270 len 4] with:
         gas gas_remaining wei
    require return_data.size
    mem[(2 * ceil32(return_data.size)) + 270] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 302 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    _5523 = mem[(2 * ceil32(return_data.size)) + 302]
    _5524 = mem[(2 * ceil32(return_data.size)) + 334]
    require ext_call.success
    if address(_1840) == address(tokenAddress):
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271] = mem[(2 * ceil32(return_data.size)) + 302]
        emit 0x80d4cbb8: mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271], _5524
        if _5523 <= 0:
            revert with 0, 'No Liquidity in the pool'
        if _5524 <= 0:
            revert with 0, 'No Liquidity in the pool'
        require (997 * eTHToSell) + (1000 * _5523)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 0] = None
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 224] = swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4), (100 * 997 * _5524 * eTHToSell / (997 * eTHToSell) + (1000 * _5523)) - (arg2 * 997 * _5524 * eTHToSell / (997 * eTHToSell) + (1000 * _5523)) / 100, Array(len=block.timestamp + 300, data=2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]), address(this.address)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 615 len 4]
        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] with:
           value eTHToSell wei
             gas gas_remaining wei
            args Mask(1760, -1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]) << 1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'The buying of tokens failed'
        mem[64] = (4 * ceil32(return_data.size)) + 628
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(4 * ceil32(return_data.size)) + 628] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 632] = 32
            mem[(4 * ceil32(return_data.size)) + 664] = 27
            mem[(4 * ceil32(return_data.size)) + 696] = 'The buying of tokens failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 628
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        require return_data.size >= 32
        _8815 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659]
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] <= 4294967296
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 64 <= return_data.size + 32
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]) + 64 <= return_data.size + 32
        mem[(4 * ceil32(return_data.size)) + 628] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]
        _8946 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8815 + 659]
        mem[(4 * ceil32(return_data.size)) + 660 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8815 + 659])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8815 + 691 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8815 + 659])]
        require 1 < mem[(4 * ceil32(return_data.size)) + 628]
        _9708 = mem[(4 * ceil32(return_data.size)) + 692]
        mem[(32 * _8946) + (4 * ceil32(return_data.size)) + 660] = mem[(4 * ceil32(return_data.size)) + 692]
        emit TokensOut(mem[(32 * _8946) + (4 * ceil32(return_data.size)) + 660]);
        return _9708
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271] = mem[(2 * ceil32(return_data.size)) + 334]
    emit 0x80d4cbb8: mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 271], _5523
    if _5524 <= 0:
        revert with 0, 'No Liquidity in the pool'
    if _5523 <= 0:
        revert with 0, 'No Liquidity in the pool'
    require (997 * eTHToSell) + (1000 * _5524)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 0] = None
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627 len 224] = swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4), (100 * 997 * _5523 * eTHToSell / (997 * eTHToSell) + (1000 * _5524)) - (arg2 * 997 * _5523 * eTHToSell / (997 * eTHToSell) + (1000 * _5524)) / 100, Array(len=block.timestamp + 300, data=2, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]), address(this.address)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 879 len 4] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 615 len 4]
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 591 len 4] with:
       value eTHToSell wei
         gas gas_remaining wei
        args Mask(1760, -1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 563 len 60]) << 1536, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 851 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'The buying of tokens failed'
    mem[64] = (4 * ceil32(return_data.size)) + 628
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 627] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(4 * ceil32(return_data.size)) + 628] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 632] = 32
        mem[(4 * ceil32(return_data.size)) + 664] = 27
        mem[(4 * ceil32(return_data.size)) + 696] = 'The buying of tokens failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 628
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    require return_data.size >= 32
    _8819 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659]
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] <= 4294967296
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 64 <= return_data.size + 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]) + 64 <= return_data.size + 32
    mem[(4 * ceil32(return_data.size)) + 628] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 659] + 659]
    _8948 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8819 + 659]
    mem[(4 * ceil32(return_data.size)) + 660 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8819 + 659])] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8819 + 691 len floor32(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _8819 + 659])]
    require 1 < mem[(4 * ceil32(return_data.size)) + 628]
    _9714 = mem[(4 * ceil32(return_data.size)) + 692]
    mem[(32 * _8948) + (4 * ceil32(return_data.size)) + 660] = mem[(4 * ceil32(return_data.size)) + 692]
    emit TokensOut(mem[(32 * _8948) + (4 * ceil32(return_data.size)) + 660]);
    return _9714
}



}
