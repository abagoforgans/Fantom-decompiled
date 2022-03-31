contract main {




// =====================  Runtime code  =====================


#
#  - getPriceUsdcRecommended(address arg1)
#
address managementListAddress;
array of struct stor1;
address usdcAddress;

function usdcAddress() payable {
    return usdcAddress
}

function managementList() payable {
    return managementListAddress
}

function _fallback() payable {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        mem[0 len calldata.size] = call.data[0 len calldata.size]
        staticcall stor1[idx].field_0 with:
             funct call.data[0 len 4]
                gas gas_remaining wei
               args call.data[4 len calldata.size - 4]
        mem[0 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            return ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    revert with 0, 'Oracle: Fallback proxy failed to return data'
}

function calculations() payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = 128
        t = (32 * stor1.length) + 192
        while idx < stor1.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function setCalculations(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg1.length) + 101] = msg.sender
    require ext_code.size(managementListAddress)
    call managementListAddress.isManager(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    mem[floor32(arg1.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ManagementList: caller is not a manager'
    stor1.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor1[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
