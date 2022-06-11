contract main {




// =====================  Runtime code  =====================


address rmAddress;
address goldAddress;
mapping of address stor2;
array of uint256 stor3;

function rm() payable {
    return rmAddress
}

function gold() payable {
    return goldAddress
}

function _fallback() payable {
    revert
}

function claim() payable {
    idx = 0
    while idx < stor3[msg.sender]:
        if idx >= stor3[msg.sender]:
            revert with 0, 50
        mem[96] = 0x379607f500000000000000000000000000000000000000000000000000000000
        mem[100] = stor3[msg.sender][idx]
        require ext_code.size(goldAddress)
        call goldAddress.claim(uint256 arg1) with:
             gas gas_remaining wei
            args stor3[msg.sender][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 3
        idx = idx + 1
        continue 
}

function withdraw() payable {
    idx = 0
    while idx < stor3[msg.sender]:
        if idx >= stor3[msg.sender]:
            revert with 0, 50
        require stor2[stor3[msg.sender][idx]] == msg.sender
        if idx >= stor3[msg.sender]:
            revert with 0, 50
        stor2[stor3[msg.sender][idx]] = 0
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor3[msg.sender][idx]
        require ext_code.size(rmAddress)
        call rmAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, stor3[msg.sender][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 3
        idx = idx + 1
        continue 
    stor3[msg.sender] = 0
    idx = 0
    while stor3[msg.sender] > idx:
        stor3[msg.sender][idx] = 0
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
        stor2[_20] = msg.sender
        mem[32] = 3
        stor3[address(msg.sender)]++
        mem[0] = sha3(address(msg.sender), 3)
        stor3[address(msg.sender)][stor3[address(msg.sender)]] = _20
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
