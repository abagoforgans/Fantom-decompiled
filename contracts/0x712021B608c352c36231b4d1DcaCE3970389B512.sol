contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function COIN() payable {
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.WETH() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function factory() payable {
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.0xc45a0155 with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function hasPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.0x1246dbf5 with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function getReserves(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.0x3e99c1e4 with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0], delegate.return_data[32]
}

function coinQuote(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.ethQuote(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return delegate.return_data[0], delegate.return_data[32], delegate.return_data[64]
}

function pairFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.0xc45a0155 with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.pairFor(address rg1, address rg2, address rg3) with:
         gas gas_remaining wei
        args address(delegate.return_data[0]), address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.0xc45a0155 with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.getPair(address rg1, address rg2, address rg3) with:
         gas gas_remaining wei
        args address(delegate.return_data[0]), address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function getPathForCoinToToken(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x7dddfe9f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(0x9c13feb43ec10ec755d05a836beef71da6193c99)
    delegate 0x9c13feb43ec10ec755d05a836beef71da6193c99.getPathForETHToToken(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296 and mem[96 len 4], address(arg1) << 64 + (32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], address(arg1) << 64 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}



}
