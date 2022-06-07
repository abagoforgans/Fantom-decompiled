contract main {




// =====================  Runtime code  =====================


#
#  - sendDust(address arg1, address arg2, uint256 arg3)
#
const rarity = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb

const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address governorAddress;
address pendingGovernorAddress;
uint8 paused;
mapping of address sub_6dcfb1a3;
array of struct stor6;
mapping of uint256 stor7;

function governor() payable {
    return governorAddress
}

function paused() payable {
    return bool(paused)
}

function sub_6dcfb1a3(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_6dcfb1a3[arg1])
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function _fallback() payable {
    revert
}

function isGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (governorAddress == arg1)
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'governable/only-pending-governor'
    governorAddress = pendingGovernorAddress
    pendingGovernorAddress = 0
    emit GovernorAccepted()
}

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if arg1 == bool(paused):
        revert with 0, 'no-change'
    paused = uint8(arg1)
    emit Paused(arg1);
}

function adventure(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xb00b52f1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'governable/pending-governor-should-not-be-zero-addres'
    pendingGovernorAddress = arg1
    emit PendingGovernorSet(arg1);
}

function sub_b71e8064(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_6dcfb1a3[arg1]) = msg.sender or Mask(96, 160, uint256(sub_6dcfb1a3[arg1]))
    if not stor7[arg1]:
        stor6.length++
        stor6[stor6.length].field_0 = arg1
        stor7[arg1] = stor6.length
}

function sub_b9c35218(?) payable {
    if stor6.length:
        mem[128] = uint256(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6.length, data=mem[128 len 32 * stor6.length])
    mem[(32 * stor6.length) + 128] = 32
    mem[(32 * stor6.length) + 160] = stor6.length
    mem[(32 * stor6.length) + 192 len 32 * stor6.length] = mem[128 len 32 * stor6.length]
    return memory
      from (32 * stor6.length) + 128
       len (96 * stor6.length) + 64
}

function sub_3a091650(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        if gas_remaining < 75000:
        if idx >= arg1.length:
            revert with 0, 50
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = _9
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xb00b52f1 with:
             gas gas_remaining wei
            args _9
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_95b72c66(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_6dcfb1a3[arg1]) != msg.sender:
        revert with 4015478120
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(sub_6dcfb1a3[arg1]) = 0
    if stor7[arg1]:
        if stor7[arg1] < 1:
            revert with 0, 17
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 != stor7[arg1] - 1:
            if stor6.length - 1 >= stor6.length:
                revert with 0, 50
            if stor7[arg1] - 1 >= stor6.length:
                revert with 0, 50
            stor6[stor7[arg1]].field_0 = stor6[stor6.length].field_0
            stor7[stor6[stor6.length].field_0] = stor7[arg1]
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[arg1] = 0
}

function sub_a90c7591(?) payable {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(sub_6dcfb1a3[arg1]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    address(sub_6dcfb1a3[arg1]) = 0
    if stor7[arg1]:
        if stor7[arg1] < 1:
            revert with 0, 17
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 != stor7[arg1] - 1:
            if stor6.length - 1 >= stor6.length:
                revert with 0, 50
            if stor7[arg1] - 1 >= stor6.length:
                revert with 0, 50
            stor6[stor7[arg1]].field_0 = stor6[stor6.length].field_0
            stor7[stor6[stor6.length].field_0] = stor7[arg1]
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[arg1] = 0
}

function sub_720fd65e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(sub_6dcfb1a3[cd[((32 * idx) + cd[4] + 36)]]) = msg.sender or Mask(96, 160, uint256(sub_6dcfb1a3[cd[((32 * idx) + cd[4] + 36)]]))
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 7
        if not stor7[cd[((32 * idx) + cd[4] + 36)]]:
            stor6.length++
            stor6[stor6.length].field_0 = cd[((32 * idx) + cd[4] + 36)]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 7
            stor7[cd[((32 * idx) + cd[4] + 36)]] = stor6.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function adventure() payable {
    if not stor6.length:
        idx = 0
        while idx < stor6.length:
            if gas_remaining < 75000:
            if idx >= stor6.length:
                revert with 0, 50
            _10 = mem[(32 * idx) + 128]
            mem[(32 * stor6.length) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[(32 * stor6.length) + 132] = _10
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xb00b52f1 with:
                 gas gas_remaining wei
                args _10
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128] = uint256(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor6.length:
            if gas_remaining < 75000:
            if idx >= stor6.length:
                revert with 0, 50
            _20 = mem[(32 * idx) + 128]
            mem[(32 * stor6.length) + 128] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[(32 * stor6.length) + 132] = _20
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xb00b52f1 with:
                 gas gas_remaining wei
                args _20
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_2b441a96(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(sub_6dcfb1a3[cd[((32 * idx) + cd[4] + 36)]])
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(sub_6dcfb1a3[cd[((32 * idx) + cd[4] + 36)]]), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        address(sub_6dcfb1a3[cd[((32 * idx) + cd[4] + 36)]]) = 0
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 7
        if stor7[cd[((32 * idx) + cd[4] + 36)]]:
            if stor7[cd[((32 * idx) + cd[4] + 36)]] < 1:
                revert with 0, 17
            if stor6.length < 1:
                revert with 0, 17
            if stor6.length - 1 != stor7[cd[((32 * idx) + cd[4] + 36)]] - 1:
                if stor6.length - 1 >= stor6.length:
                    revert with 0, 50
                if stor7[cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor6.length:
                    revert with 0, 50
                stor6[stor7[cd[((32 * idx) + cd[4] + 36)]]].field_0 = stor6[stor6.length].field_0
                stor7[stor6[stor6.length].field_0] = stor7[cd[((32 * idx) + cd[4] + 36)]]
            if not stor6.length:
                revert with 0, 49
            stor6[stor6.length].field_0 = 0
            stor6.length--
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 7
            stor7[cd[((32 * idx) + cd[4] + 36)]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_185cd5c0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if address(sub_6dcfb1a3[cd[((32 * idx) + cd[4] + 36)]]) != msg.sender:
            revert with 4015478120
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        call 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        address(sub_6dcfb1a3[cd[((32 * idx) + cd[4] + 36)]]) = 0
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 7
        if stor7[cd[((32 * idx) + cd[4] + 36)]]:
            if stor7[cd[((32 * idx) + cd[4] + 36)]] < 1:
                revert with 0, 17
            if stor6.length < 1:
                revert with 0, 17
            if stor6.length - 1 != stor7[cd[((32 * idx) + cd[4] + 36)]] - 1:
                if stor6.length - 1 >= stor6.length:
                    revert with 0, 50
                if stor7[cd[((32 * idx) + cd[4] + 36)]] - 1 >= stor6.length:
                    revert with 0, 50
                stor6[stor7[cd[((32 * idx) + cd[4] + 36)]]].field_0 = stor6[stor6.length].field_0
                stor7[stor6[stor6.length].field_0] = stor7[cd[((32 * idx) + cd[4] + 36)]]
            if not stor6.length:
                revert with 0, 49
            stor6[stor6.length].field_0 = 0
            stor6.length--
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 7
            stor7[cd[((32 * idx) + cd[4] + 36)]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
