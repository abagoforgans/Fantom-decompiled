contract main {




// =====================  Runtime code  =====================


const game = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb


array of struct stor0;
mapping of uint256 stor1;
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '403'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function sub_b9c35218(?) payable {
    if stor0.length:
        mem[128] = uint256(stor0.field_0)
        idx = 128
        s = 0
        while (32 * stor0.length) + 96 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor0.length, data=mem[128 len 32 * stor0.length])
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    mem[(32 * stor0.length) + 192 len 32 * stor0.length] = mem[128 len 32 * stor0.length]
    return memory
      from (32 * stor0.length) + 128
       len (96 * stor0.length) + 64
}

function invoke(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '403'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    if not ext_call.success:
        revert with 0, 'invoke failed'
    if not return_data.size:
        return ' '
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if msg.sender != 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb:
        revert with 0, 'NOT RM GAME'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[arg3] = stor0.length
    stor0.length++
    stor0[stor0.length].field_0 = arg3
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_dba982e0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '403'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5e6a573b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '403'
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7d81f371(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '403'
    idx = 0
    while idx < ('cd', 4).length:
        s = 0
        while s < cd[36]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[96] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
            mem[100] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.summon(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a0527698(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '403'
    if this.address == address(cd[4]):
        revert with 0, '400'
    idx = 0
    while idx < ('cd', 68).length:
        mem[96] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(cd[4])
        mem[164] = cd[((32 * idx) + cd[68] + 36)]
        mem[196] = 128
        mem[228] = ('cd', 36).length
        mem[260 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
        mem[('cd', 36).length + 260] = 0
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), address(cd[4]), cd[((32 * idx) + cd[68] + 36)], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor0.length < 1:
            revert with 0, 17
        if stor0.length - 1 >= stor0.length:
            revert with 0, 50
        if stor1[cd[((32 * idx) + cd[68] + 36)]] >= stor0.length:
            revert with 0, 50
        stor0[stor1[cd[((32 * idx) + cd[68] + 36)]]].field_0 = stor0[stor0.length].field_0
        if not stor0.length:
            revert with 0, 49
        stor0[stor0.length].field_0 = 0
        stor0.length--
        mem[0] = cd[((32 * idx) + cd[68] + 36)]
        mem[32] = 1
        stor1[cd[((32 * idx) + cd[68] + 36)]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
