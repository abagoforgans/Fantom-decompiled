contract main {




// =====================  Runtime code  =====================


#
#  - Swap(uint256 arg1, uint256 arg2)
#  - GetAmounts(uint256 arg1, uint256 arg2)
#
address stor0;
array of struct stor1;
array of address stor2;

function _fallback() payable {
    revert
}

function Withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function WithdrawToken(address arg1) {
    require calldata.size - 4 >= 32
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
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_05b5509d(?) {
    require calldata.size - 4 >= 64
    require arg1 < stor3.length
    require arg2 < uint256(stor3[arg1])
    require ext_code.size(address(stor[('array', ('param', 'arg1'), ('name', 'stor3', 3)) + arg2]))
    staticcall address(stor[('array', ('param', 'arg1'), ('name', 'stor3', 3)) + arg2]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < stor1.length
    require 0 < stor1[arg1].field_0
    require arg1 < stor1.length
    require 1 < stor1[arg1].field_0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args stor1[arg1].field_0, stor1[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_64585aa3(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg1 < stor1.length
    stor1[arg1].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while stor1[arg1].field_0 > idx:
            stor1[arg1 + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
        while (64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224 > idx:
            stor1[arg1 + s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor1[arg1].field_0 > idx:
            stor1[arg1 + idx].field_0 = 0
            idx = idx + 1
            continue 
    require arg3.length <= test266151307()
    mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg3.length
    if arg3.length:
        mem[(64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
    require arg1 < stor2.length
    uint256(stor2[arg1]) = arg3.length
    if not arg3.length:
        idx = 0
        while uint256(stor2[arg1]) > idx:
            address(stor2[arg1 + idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (64 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
        while (64 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 256 > idx:
            address(stor2[arg1 + s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uint256(stor2[arg1]) > idx:
            address(stor2[arg1 + idx]) = 0
            idx = idx + 1
            continue 
    require arg4.length <= test266151307()
    if arg4.length:
        mem[(64 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288 len 32 * arg4.length] = call.data[calldata.size len 32 * arg4.length]
    require arg1 < stor3.length
    uint256(stor3[arg1]) = arg4.length
    if not arg4.length:
        idx = 0
        while uint256(stor3[arg1]) > idx:
            address(stor3[arg1 + idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (64 * arg2.length) + (64 * arg3.length) + (32 * arg4.length) + 288
        while (64 * arg2.length) + (64 * arg3.length) + (64 * arg4.length) + 288 > idx:
            address(stor3[arg1 + s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while uint256(stor3[arg1]) > idx:
            address(stor3[arg1 + idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg4.length:
        require idx < arg4.length
        require arg1 < stor3.length
        require idx < uint256(stor3[arg1])
        mem[0] = sha3(3) + arg1
        address(stor3[arg1 + idx]) = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 204 len 20]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require arg1 < stor1.length
        require idx < stor1[arg1].field_0
        mem[0] = sha3(1) + arg1
        stor1[arg1 + idx].field_0 = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        require arg1 < stor2.length
        require idx < uint256(stor2[arg1])
        mem[0] = sha3(2) + arg1
        address(stor2[arg1 + idx]) = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
        idx = idx + 1
        continue 
}



}
