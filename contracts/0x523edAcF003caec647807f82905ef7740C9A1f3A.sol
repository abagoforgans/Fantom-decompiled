contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint8 stor3;

function sub_a0ec04df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_ecb421f1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_ddb45f92(?) payable {
    if stor2.length:
        mem[128] = address(stor2.field_0)
        if (32 * stor2.length) + 32 > 64:
            mem[160] = address(stor2.field_256)
            idx = 160
            s = 1
            while (32 * stor2.length) + 96 > idx:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = (32 * stor2.length) + 192
    t = 128
    while idx < stor2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor2.length) + 128
       len (96 * stor2.length) + 64
}

function sub_d1995159(?) payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = (32 * stor0.length) + 192
        t = 128
        while idx < stor0.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor0.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0.length) + -mem[64] + 192
}

function sub_e7d7ec45(?) payable {
    require calldata.size - 4 >= 96
    require 35 < calldata.size
    require 68 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 2:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 68).length)) + 161 < 160 or ceil32(ceil32(('cd', 68).length)) + 161 > test266151307():
        revert with 0, 65
    mem[160] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require stor1[msg.sender]
    mem[ceil32(ceil32(('cd', 68).length)) + 161 len 2584] = code.data[12332 len 2584]
    idx = 0
    s = 96
    t = ceil32(ceil32(('cd', 68).length)) + 2777
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    create contract with 0 wei
                    code: code.data[12332 len 2584], address(this.address), mem[ceil32(ceil32(('cd', 68).length)) + 2777 len 64], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor2.length++
    stor2[stor2.length].field_0 = address(create.new_address)
    stor3[address(create.new_address)] = 1
    emit 0xb36c0935: address(create.new_address), mem[108 len 20], mem[140 len 20]
    return address(create.new_address)
}

function sub_3c1d98fc(?) payable {
    require calldata.size - 4 >= 96
    require 35 < calldata.size
    require 68 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 2:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 68).length)) + 161 < 160 or ceil32(ceil32(('cd', 68).length)) + 161 > test266151307():
        revert with 0, 65
    mem[160] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require stor3[msg.sender]
    mem[ceil32(ceil32(('cd', 68).length)) + 161 len 10494] = code.data[1838 len 10494]
    idx = 0
    s = 96
    t = ceil32(ceil32(('cd', 68).length)) + 10719
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    create contract with 0 wei
                    code: code.data[1838 len 10494], msg.sender, address(this.address), mem[ceil32(ceil32(('cd', 68).length)) + 10719 len 64], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0.length++
    stor0[stor0.length].field_0 = address(create.new_address)
    stor1[address(create.new_address)] = 1
    emit 0xf7178287: address(create.new_address), mem[108 len 20], mem[140 len 20]
    return address(create.new_address)
}



}
