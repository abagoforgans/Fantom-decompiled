contract main {




// =====================  Runtime code  =====================


address owner;
array of address add;
array of address sub_4f3cb541;
address sub_0a3e1657Address;
address usdt_address;
address sub_995254beAddress;
address sub_a4aa382aAddress;
address mdxAddress;
address sub_1d801decAddress;
address sub_abcd7381Address;

function sub_0a3e1657(?) {
    return sub_0a3e1657Address
}

function add(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < add.length
    return add[arg1]
}

function sub_1d801dec(?) {
    return sub_1d801decAddress
}

function usdt_address() {
    return usdt_address
}

function sub_4f3cb541(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4f3cb541.length
    return sub_4f3cb541[arg1]
}

function mdx() {
    return mdxAddress
}

function owner() {
    return owner
}

function sub_995254be(?) {
    return sub_995254beAddress
}

function sub_a4aa382a(?) {
    return sub_a4aa382aAddress
}

function sub_abcd7381(?) {
    return sub_abcd7381Address
}

function _fallback() payable {
  stop
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

function Read_pair(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).allPairs(uint256 rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[12 len 20]))
    staticcall address(ext_call.return_data[12 len 20]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), 
           address(ext_call.return_data[12 len 20]),
           address(ext_call.return_data[12 len 20]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[31 len 1] << 248,
           uint8(ext_call.return_data[31 len 1])
}



}
