contract main {




// =====================  Runtime code  =====================


#
#  - calculateAssetPrice(address arg1)
#
address storeAddress;
array of uint8 stor1;
mapping of uint8 stor2;
mapping of address sub_94ccfd1c;
mapping of address sub_2310ac7b;
array of struct sub_96efe338;
array of struct sub_5c93d3b2;

function sub_2310ac7b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2310ac7b[arg1]
}

function keepers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[arg1]))
}

function sub_5c93d3b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5c93d3b2.length
    return sub_5c93d3b2[arg1].field_0
}

function sub_5d447129(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_94ccfd1c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_94ccfd1c[arg1]
}

function sub_96efe338(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_96efe338.length
    return sub_96efe338[arg1].field_0
}

function store() payable {
    return storeAddress
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0, 'Governable: New storage shouldn't be empty'
    storeAddress = arg1
}

function setOptimalPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not uint8(stor1[msg.sender]):
            revert with 0, 'PriceOracle: Caller not governance or keeper'
    sub_2310ac7b[address(arg1)] = arg2
}

function setTokenPriceOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not uint8(stor1[msg.sender]):
            revert with 0, 'PriceOracle: Caller not governance or keeper'
    sub_94ccfd1c[address(arg1)] = arg2
}

function determineTokenTypeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        return 1
    require ext_code.size(arg1)
    staticcall arg1.swap() with:
            gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        return 2
    require ext_code.size(arg1)
    staticcall arg1.getPoolId() with:
            gas gas_remaining wei
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    return 3
}

function factories() payable {
    if sub_5c93d3b2.length:
        mem[128] = address(sub_5c93d3b2.field_0)
        if (32 * sub_5c93d3b2.length) + 32 > 64:
            mem[160] = address(sub_5c93d3b2.field_256)
            idx = 160
            s = 1
            while (32 * sub_5c93d3b2.length) + 96 > idx:
                mem[idx + 32] = sub_5c93d3b2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_5c93d3b2.length) + 128] = 32
    mem[(32 * sub_5c93d3b2.length) + 160] = sub_5c93d3b2.length
    idx = 0
    s = (32 * sub_5c93d3b2.length) + 192
    t = 128
    while idx < sub_5c93d3b2.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * sub_5c93d3b2.length) + 128
       len (96 * sub_5c93d3b2.length) + 64
}

function commonBases() payable {
    mem[64] = (32 * sub_96efe338.length) + 128
    mem[96] = sub_96efe338.length
    if not sub_96efe338.length:
        mem[(32 * sub_96efe338.length) + 128] = 32
        mem[(32 * sub_96efe338.length) + 160] = sub_96efe338.length
        idx = 0
        s = (32 * sub_96efe338.length) + 192
        t = 128
        while idx < sub_96efe338.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_96efe338.length) + 128
           len (96 * sub_96efe338.length) + 64
    mem[128] = address(sub_96efe338.field_0)
    idx = 128
    s = 0
    while (32 * sub_96efe338.length) + 96 > idx:
        mem[idx + 32] = sub_96efe338[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_96efe338.length) + 128] = 32
    mem[(32 * sub_96efe338.length) + 160] = sub_96efe338.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_96efe338.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_96efe338.length) + -mem[64] + 192
}

function sub_aa0a8bf5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not uint8(stor1[msg.sender]):
            revert with 0, 'PriceOracle: Caller not governance or keeper'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = mem[(32 * idx) + 140 len 20]
        emit KnownTokenAdded(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a4bae6c1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not uint8(stor1[msg.sender]):
            revert with 0, 'PriceOracle: Caller not governance or keeper'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        sub_5c93d3b2.length++
        mem[0] = 6
        sub_5c93d3b2[sub_5c93d3b2.length].field_0 = mem[(32 * idx) + 140 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = mem[(32 * idx) + 140 len 20]
        emit FactoryAdded(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f6bd02f8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not uint8(stor1[msg.sender]):
            revert with 0, 'PriceOracle: Caller not governance or keeper'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        sub_96efe338.length++
        mem[0] = 5
        sub_96efe338[sub_96efe338.length].field_0 = mem[(32 * idx) + 140 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = mem[(32 * idx) + 140 len 20]
        emit BaseTokenAdded(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_92f4fef0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 101] = msg.sender
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 0
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = mem[(32 * idx) + 140 len 20]
        emit KnownTokenRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_314a83c9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 101] = msg.sender
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        uint8(stor1[mem[(32 * idx) + 140 len 20]]) = 1
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = mem[(32 * idx) + 140 len 20]
        emit KeeperAdded(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ea7e9daa(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 101] = msg.sender
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        uint8(stor1[mem[(32 * idx) + 140 len 20]]) = 0
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = mem[(32 * idx) + 140 len 20]
        emit KeeperRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_3ce60d52(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        idx = 0
        while idx < ('cd', 4).length:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = sub_96efe338.length
            if not sub_96efe338.length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                _92 = mem[(32 * idx) + 128]
                s = 0
                while s < sub_96efe338.length:
                    if s >= sub_96efe338.length:
                        revert with 0, 50
                    if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_92):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if sub_96efe338.length < 1:
                        revert with 0, 17
                    if sub_96efe338.length - 1 >= sub_96efe338.length:
                        revert with 0, 50
                    if s >= sub_96efe338.length:
                        revert with 0, 50
                    sub_96efe338[s].field_0 = sub_96efe338[sub_96efe338.length].field_0
                    if not sub_96efe338.length:
                        revert with 0, 49
                    mem[0] = 5
                    sub_96efe338[sub_96efe338.length].field_0 = 0
                    sub_96efe338.length--
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 129] = mem[(32 * idx) + 140 len 20]
                    emit BaseTokenRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 129]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = address(sub_96efe338.field_0)
                s = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129
                t = sha3(5)
                while ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 97 > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                _144 = mem[(32 * idx) + 128]
                s = 0
                while s < sub_96efe338.length:
                    if s >= sub_96efe338.length:
                        revert with 0, 50
                    if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_144):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if sub_96efe338.length < 1:
                        revert with 0, 17
                    if sub_96efe338.length - 1 >= sub_96efe338.length:
                        revert with 0, 50
                    if s >= sub_96efe338.length:
                        revert with 0, 50
                    sub_96efe338[s].field_0 = sub_96efe338[sub_96efe338.length].field_0
                    if not sub_96efe338.length:
                        revert with 0, 49
                    mem[0] = 5
                    sub_96efe338[sub_96efe338.length].field_0 = 0
                    sub_96efe338.length--
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 129] = mem[(32 * idx) + 140 len 20]
                    emit BaseTokenRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 129]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            revert with 0, 'PriceOracle: Could not find this item on the array'
    else:
        if not uint8(stor1[msg.sender]):
            revert with 0, 'PriceOracle: Caller not governance or keeper'
        idx = 0
        while idx < ('cd', 4).length:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = sub_96efe338.length
            if not sub_96efe338.length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                _93 = mem[(32 * idx) + 128]
                s = 0
                while s < sub_96efe338.length:
                    if s >= sub_96efe338.length:
                        revert with 0, 50
                    if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_93):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if sub_96efe338.length < 1:
                        revert with 0, 17
                    if sub_96efe338.length - 1 >= sub_96efe338.length:
                        revert with 0, 50
                    if s >= sub_96efe338.length:
                        revert with 0, 50
                    sub_96efe338[s].field_0 = sub_96efe338[sub_96efe338.length].field_0
                    if not sub_96efe338.length:
                        revert with 0, 49
                    mem[0] = 5
                    sub_96efe338[sub_96efe338.length].field_0 = 0
                    sub_96efe338.length--
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 129] = mem[(32 * idx) + 140 len 20]
                    emit BaseTokenRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 129]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = address(sub_96efe338.field_0)
                s = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129
                t = sha3(5)
                while ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 97 > s:
                    mem[s + 32] = address(stor1[t])
                    s = s + 32
                    t = t + 1
                    continue 
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                _145 = mem[(32 * idx) + 128]
                s = 0
                while s < sub_96efe338.length:
                    if s >= sub_96efe338.length:
                        revert with 0, 50
                    if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_145):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if sub_96efe338.length < 1:
                        revert with 0, 17
                    if sub_96efe338.length - 1 >= sub_96efe338.length:
                        revert with 0, 50
                    if s >= sub_96efe338.length:
                        revert with 0, 50
                    sub_96efe338[s].field_0 = sub_96efe338[sub_96efe338.length].field_0
                    if not sub_96efe338.length:
                        revert with 0, 49
                    mem[0] = 5
                    sub_96efe338[sub_96efe338.length].field_0 = 0
                    sub_96efe338.length--
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 129] = mem[(32 * idx) + 140 len 20]
                    emit BaseTokenRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_96efe338.length) + 129]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            revert with 0, 'PriceOracle: Could not find this item on the array'
}

function sub_a7ccc73b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        idx = 0
        while idx < ('cd', 4).length:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = sub_5c93d3b2.length
            if not sub_5c93d3b2.length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                _148 = mem[(32 * idx) + 128]
                s = 0
                while s < sub_5c93d3b2.length:
                    if s >= sub_5c93d3b2.length:
                        revert with 0, 50
                    if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_148):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if sub_5c93d3b2.length < 1:
                        revert with 0, 17
                    if sub_5c93d3b2.length - 1 >= sub_5c93d3b2.length:
                        revert with 0, 50
                    if s >= sub_5c93d3b2.length:
                        revert with 0, 50
                    sub_5c93d3b2[s].field_0 = sub_5c93d3b2[sub_5c93d3b2.length].field_0
                    if not sub_5c93d3b2.length:
                        revert with 0, 49
                    mem[0] = 6
                    sub_5c93d3b2[sub_5c93d3b2.length].field_0 = 0
                    sub_5c93d3b2.length--
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129] = mem[(32 * idx) + 140 len 20]
                    emit FactoryRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = address(sub_5c93d3b2.field_0)
                if (32 * sub_5c93d3b2.length) + 32 <= 64:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    _152 = mem[(32 * idx) + 128]
                    s = 0
                    while s < sub_5c93d3b2.length:
                        if s >= sub_5c93d3b2.length:
                            revert with 0, 50
                        if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_152):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if sub_5c93d3b2.length < 1:
                            revert with 0, 17
                        if sub_5c93d3b2.length - 1 >= sub_5c93d3b2.length:
                            revert with 0, 50
                        if s >= sub_5c93d3b2.length:
                            revert with 0, 50
                        sub_5c93d3b2[s].field_0 = sub_5c93d3b2[sub_5c93d3b2.length].field_0
                        if not sub_5c93d3b2.length:
                            revert with 0, 49
                        mem[0] = 6
                        sub_5c93d3b2[sub_5c93d3b2.length].field_0 = 0
                        sub_5c93d3b2.length--
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129] = mem[(32 * idx) + 140 len 20]
                        emit FactoryRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 161] = address(sub_5c93d3b2.field_256)
                    s = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 161
                    t = sha3(6) + 1
                    while ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 97 > s:
                        mem[s + 32] = address(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    _252 = mem[(32 * idx) + 128]
                    s = 0
                    while s < sub_5c93d3b2.length:
                        if s >= sub_5c93d3b2.length:
                            revert with 0, 50
                        if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_252):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if sub_5c93d3b2.length < 1:
                            revert with 0, 17
                        if sub_5c93d3b2.length - 1 >= sub_5c93d3b2.length:
                            revert with 0, 50
                        if s >= sub_5c93d3b2.length:
                            revert with 0, 50
                        sub_5c93d3b2[s].field_0 = sub_5c93d3b2[sub_5c93d3b2.length].field_0
                        if not sub_5c93d3b2.length:
                            revert with 0, 49
                        mem[0] = 6
                        sub_5c93d3b2[sub_5c93d3b2.length].field_0 = 0
                        sub_5c93d3b2.length--
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129] = mem[(32 * idx) + 140 len 20]
                        emit FactoryRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            revert with 0, 'PriceOracle: Could not find this item on the array'
    else:
        if not uint8(stor1[msg.sender]):
            revert with 0, 'PriceOracle: Caller not governance or keeper'
        idx = 0
        while idx < ('cd', 4).length:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97] = sub_5c93d3b2.length
            if not sub_5c93d3b2.length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                _150 = mem[(32 * idx) + 128]
                s = 0
                while s < sub_5c93d3b2.length:
                    if s >= sub_5c93d3b2.length:
                        revert with 0, 50
                    if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_150):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if sub_5c93d3b2.length < 1:
                        revert with 0, 17
                    if sub_5c93d3b2.length - 1 >= sub_5c93d3b2.length:
                        revert with 0, 50
                    if s >= sub_5c93d3b2.length:
                        revert with 0, 50
                    sub_5c93d3b2[s].field_0 = sub_5c93d3b2[sub_5c93d3b2.length].field_0
                    if not sub_5c93d3b2.length:
                        revert with 0, 49
                    mem[0] = 6
                    sub_5c93d3b2[sub_5c93d3b2.length].field_0 = 0
                    sub_5c93d3b2.length--
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129] = mem[(32 * idx) + 140 len 20]
                    emit FactoryRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129] = address(sub_5c93d3b2.field_0)
                if (32 * sub_5c93d3b2.length) + 32 <= 64:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    _153 = mem[(32 * idx) + 128]
                    s = 0
                    while s < sub_5c93d3b2.length:
                        if s >= sub_5c93d3b2.length:
                            revert with 0, 50
                        if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_153):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if sub_5c93d3b2.length < 1:
                            revert with 0, 17
                        if sub_5c93d3b2.length - 1 >= sub_5c93d3b2.length:
                            revert with 0, 50
                        if s >= sub_5c93d3b2.length:
                            revert with 0, 50
                        sub_5c93d3b2[s].field_0 = sub_5c93d3b2[sub_5c93d3b2.length].field_0
                        if not sub_5c93d3b2.length:
                            revert with 0, 49
                        mem[0] = 6
                        sub_5c93d3b2[sub_5c93d3b2.length].field_0 = 0
                        sub_5c93d3b2.length--
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129] = mem[(32 * idx) + 140 len 20]
                        emit FactoryRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 161] = address(sub_5c93d3b2.field_256)
                    s = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 161
                    t = sha3(6) + 1
                    while ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 97 > s:
                        mem[s + 32] = address(stor1[t])
                        s = s + 32
                        t = t + 1
                        continue 
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    _253 = mem[(32 * idx) + 128]
                    s = 0
                    while s < sub_5c93d3b2.length:
                        if s >= sub_5c93d3b2.length:
                            revert with 0, 50
                        if mem[(32 * s) + ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 141 len 20] != address(_253):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            continue 
                        if sub_5c93d3b2.length < 1:
                            revert with 0, 17
                        if sub_5c93d3b2.length - 1 >= sub_5c93d3b2.length:
                            revert with 0, 50
                        if s >= sub_5c93d3b2.length:
                            revert with 0, 50
                        sub_5c93d3b2[s].field_0 = sub_5c93d3b2[sub_5c93d3b2.length].field_0
                        if not sub_5c93d3b2.length:
                            revert with 0, 49
                        mem[0] = 6
                        sub_5c93d3b2[sub_5c93d3b2.length].field_0 = 0
                        sub_5c93d3b2.length--
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129] = mem[(32 * idx) + 140 len 20]
                        emit FactoryRemoved(mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + (32 * sub_5c93d3b2.length) + 129]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            revert with 0, 'PriceOracle: Could not find this item on the array'
}



}
