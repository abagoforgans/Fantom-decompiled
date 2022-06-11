contract main {




// =====================  Runtime code  =====================


address rmAddress;
mapping of address stor1;
array of uint256 stor2;
mapping of address dungeons;
address owner;

function rm() payable {
    return rmAddress
}

function owner() payable {
    return owner
}

function dungeons(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return dungeons[arg1]
}

function _fallback() payable {
    revert
}

function sub_70582d7f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require msg.sender == owner
    dungeons[arg1] = address(arg2)
}

function withdraw() payable {
    idx = 0
    while idx < stor2[msg.sender]:
        if idx >= stor2[msg.sender]:
            revert with 0, 50
        require stor1[stor2[msg.sender][idx]] == msg.sender
        if idx >= stor2[msg.sender]:
            revert with 0, 50
        stor1[stor2[msg.sender][idx]] = 0
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor2[msg.sender][idx]
        require ext_code.size(rmAddress)
        call rmAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, stor2[msg.sender][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 2
        idx = idx + 1
        continue 
    stor2[msg.sender] = 0
    idx = 0
    while stor2[msg.sender] > idx:
        stor2[msg.sender][idx] = 0
        idx = idx + 1
        continue 
}

function deposit(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _20 = mem[(32 * idx) + 128]
        mem[ceil32(32 * arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg1.length) + 101] = msg.sender
        mem[ceil32(32 * arg1.length) + 133] = this.address
        mem[ceil32(32 * arg1.length) + 165] = _20
        require ext_code.size(rmAddress)
        call rmAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1[_20] = msg.sender
        mem[32] = 2
        stor2[address(msg.sender)]++
        mem[0] = sha3(address(msg.sender), 2)
        stor2[address(msg.sender)][stor2[address(msg.sender)]] = _20
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function adventure(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 2
    idx = 0
    while idx < stor2[msg.sender]:
        if idx >= stor2[msg.sender]:
            revert with 0, 50
        mem[0] = arg1
        mem[32] = 3
        mem[mem[64] + 4] = stor2[msg.sender][idx]
        require ext_code.size(dungeons[arg1])
        staticcall dungeons[arg1].adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args stor2[msg.sender][idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _23 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if block.timestamp > mem[_23]:
            mem[mem[64] + 4] = stor2[msg.sender][idx]
            require ext_code.size(dungeons[arg1])
            staticcall dungeons[arg1].scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args stor2[msg.sender][idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_27] > 0:
                mem[mem[64] + 4] = stor2[msg.sender][idx]
                require ext_code.size(dungeons[arg1])
                call dungeons[arg1].0xb00b52f1 with:
                     gas gas_remaining wei
                    args stor2[msg.sender][idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 2
        idx = idx + 1
        continue 
}



}
