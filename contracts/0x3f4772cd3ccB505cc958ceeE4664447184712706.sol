contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
mapping of address bot;

function getBot(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bot[arg1]
}

function owner() {
    return owner
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    selfdestruct(0)
}

function _fallback() payable {
    revert
}

function initialize(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner:
        if owner != msg.sender:
            revert with 0, 'Only owner'
    owner = arg1
    stor2 = arg2
}

function execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    return bool(delegate.return_code)
}

function sub_17ad4ad2(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(bot[arg1])
    call bot[arg1].0x1cff79cd with:
         gas gas_remaining wei
        args address(this.address), 64, arg2.length, arg2[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fcab6e81(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg3.length)) + 97 > test266151307() or ceil32(ceil32(arg3.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(bot[arg1])
    call bot[arg1].0x1cff79cd with:
         gas gas_remaining wei
        args address(arg2), 64, arg3.length, arg3[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function spawn() {
    if owner != msg.sender:
        revert with 0, 'Only owner'
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xcd6dc687 with:
         gas gas_remaining wei
        args address(this.address), stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bot[stor1] = address(create.new_address)
    if stor1 == -1:
        revert with 'NH{q', 17
    stor1++
    return address(create.new_address)
}

function sub_93005dc2(?) {
    if stor1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor1
    mem[64] = (32 * stor1) + 128
    if stor1:
        mem[128 len 32 * stor1] = call.data[calldata.size len 32 * stor1]
    idx = 0
    while idx < stor1:
        mem[0] = idx
        mem[32] = 3
        if idx >= stor1:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = bot[idx]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * stor1) + 128] = 32
    mem[(32 * stor1) + 160] = stor1
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1) + -mem[64] + 192
}

function sub_7a23a05e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        if owner != msg.sender:
            revert with 0, 'Only owner'
        mem[136] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
        if not address(create.new_address):
            revert with 0, 'ERC1167: create failed'
        mem[96] = 0xcd6dc68700000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = stor1
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xcd6dc687 with:
             gas gas_remaining wei
            args address(this.address), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = stor1
        mem[32] = 3
        bot[stor1] = address(create.new_address)
        if stor1 == -1:
            revert with 'NH{q', 17
        stor1++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_9148b69f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if ('cd', 4).length:
        mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = bot[mem[(32 * idx) + 128]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 32
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = ('cd', 4).length
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < ('cd', 4).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len floor32(('cd', 4).length) + (64 * ('cd', 4).length) + -mem[64] + 193
}



}
