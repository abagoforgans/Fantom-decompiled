contract main {




// =====================  Runtime code  =====================


const ADMIN_ROLE = 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of struct payee;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function totalShares() {
    return totalShares
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1].field_0
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getAllRoleMembers(bytes32 arg1) {
    require calldata.size - 4 >= 32
    mem[416 len 320] = call.data[calldata.size len 320]
    idx = 0
    while idx < roleMember[arg1].field_0:
        mem[32] = 1
        if idx >= roleMember[arg1].field_0:
            revert with 0, 50
        mem[0] = sha3(arg1, 1)
        if idx >= 10:
            revert with 0, 50
        mem[(32 * idx) + 416] = roleMember[arg1][idx].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 416
    t = 736
    while idx < 10:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 736
       len 320
}

function transferAnyERC20Tokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69,
                    ' role to withdraw tokens'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PaymentSplitter: Transfer failed'
}

function allPayees() {
    mem[64] = (32 * payee.length) + 128
    mem[96] = payee.length
    if not payee.length:
        mem[(32 * payee.length) + 128] = 32
        mem[(32 * payee.length) + 160] = payee.length
        idx = 0
        s = (32 * payee.length) + 192
        t = 128
        while idx < payee.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * payee.length) + 128
           len (96 * payee.length) + 64
    mem[128] = address(payee.field_0)
    idx = 128
    s = 0
    while (32 * payee.length) + 96 > idx:
        mem[idx + 32] = payee[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * payee.length) + 128] = 32
    mem[(32 * payee.length) + 160] = payee.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < payee.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * payee.length) + -mem[64] + 192
}

function transferBNB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69,
                    0x20726f6c6520746f20776974686472617720424e420000000000000000000000
    if eth.balance(this.address) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'PaymentSplitter: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'PaymentSplitter: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69,
                    ' role to withdraw tokens'
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function sub_3a118085(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 32, 51, 0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69, ' role to  addPayees' << 104
    idx = 0
    while idx < payee.length:
        shares[stor6[idx].field_0] = 0
        mem[0] = payee[idx].field_0
        mem[32] = 5
        released[stor6[idx].field_0] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    totalShares = 0
    totalReleased = 0
    payee.length = 0
    idx = 0
    while payee.length > idx:
        payee[idx].field_0 = 0
        idx = idx + 1
        continue 
    if payee.length:
        revert with 0, 'PaymentSplitter: payees should be cleared first'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'PaymentSplitter: payees and shares length mismatch'
    if ('cd', 4).length <= 0:
        revert with 0, 'PaymentSplitter: no payees'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _166 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'PaymentSplitter: account is the zero address'
        if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] <= 0:
            revert with 0, 'PaymentSplitter: shares are 0'
        if shares[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'PaymentSplitter: account already has shares'
        payee.length++
        payee[payee.length].field_0 = mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        shares[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if totalShares > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        totalShares += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = mem[(32 * idx) + 140 len 20]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = _166
        emit PayeeAdded(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98], _166);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function releaseForAll() payable {
    mem[64] = 96
    require not msg.value
    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69,
                    ' role to release for all'
    idx = 0
    while idx < payee.length:
        if not shares[stor6[idx].field_0]:
            revert with 0, 'PaymentSplitter: account has no shares'
        if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
            revert with 0, 32, 56, 0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69, ' role to withdraw tokens'
        if eth.balance(this.address) > !totalReleased:
            revert with 0, 17
        if eth.balance(this.address) + totalReleased and shares[stor6[idx].field_0] > -1 / eth.balance(this.address) + totalReleased:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if (eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares < released[stor6[idx].field_0]:
            revert with 0, 17
        if not ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]:
            revert with 0, 'PaymentSplitter: account is not due payment'
        if released[stor6[idx].field_0] > !(((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]):
            revert with 0, 17
        mem[0] = payee[idx].field_0
        mem[32] = 5
        released[stor6[idx].field_0] = (eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares
        if totalReleased > !(((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]):
            revert with 0, 17
        totalReleased = totalReleased + ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]
        if eth.balance(this.address) < ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]:
            revert with 0, 'Address: insufficient balance'
        call payee[idx].field_0 with:
           value ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0] wei
             gas gas_remaining wei
        if return_data.size:
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_55] = return_data.size
            mem[_55 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        mem[mem[64]] = payee[idx].field_0
        mem[mem[64] + 32] = ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]
        emit PaymentReleased(payee[idx].field_0, ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x9010d07c(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xa6fa0cb4(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9010d07c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if cd[36] >= roleMember[cd[4]].field_0:
                        revert with 0, 50
                    return roleMember[cd[4]][cd[36]].field_0
                if unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                if unknown_0x936d1f65(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
                        revert with 0, 32, 56, 0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69, ' role to release for all'
                    idx = 0
                    while idx < payee.length:
                        if not shares[stor6[idx].field_0]:
                            revert with 0, 'PaymentSplitter: account has no shares'
                        if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
                            revert with 0, 32, 56, 0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69, ' role to withdraw tokens'
                        if eth.balance(this.address) > !totalReleased:
                            revert with 0, 17
                        if eth.balance(this.address) + totalReleased and shares[stor6[idx].field_0] > -1 / eth.balance(this.address) + totalReleased:
                            revert with 0, 17
                        if not totalShares:
                            revert with 0, 18
                        if (eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares < released[stor6[idx].field_0]:
                            revert with 0, 17
                        if not ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]:
                            revert with 0, 'PaymentSplitter: account is not due payment'
                        if released[stor6[idx].field_0] > !(((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]):
                            revert with 0, 17
                        mem[0] = payee[idx].field_0
                        mem[32] = 5
                        released[stor6[idx].field_0] = (eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares
                        if totalReleased > !(((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]):
                            revert with 0, 17
                        totalReleased = totalReleased + ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]
                        if eth.balance(this.address) < ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]:
                            revert with 0, 'Address: insufficient balance'
                        call payee[idx].field_0 with:
                           value ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0] wei
                             gas gas_remaining wei
                        if return_data.size:
                            _307 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_307] = return_data.size
                            mem[_307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                        mem[mem[64]] = payee[idx].field_0
                        mem[mem[64] + 32] = ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]
                        emit PaymentReleased(payee[idx].field_0, ((eth.balance(this.address) * shares[stor6[idx].field_0]) + (totalReleased * shares[stor6[idx].field_0]) / totalShares) - released[stor6[idx].field_0]);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if uint32(call.func_hash) >> 224 != unknown_0x9852595c(?????):
                    require unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 0
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return released[address(cd[4])]
            if unknown_0xa6fa0cb4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                mem[448 len 320] = call.data[calldata.size len 320]
                idx = 0
                while idx < roleMember[cd[4]].field_0:
                    mem[32] = 1
                    if idx >= roleMember[cd[4]].field_0:
                        revert with 0, 50
                    mem[0] = sha3(cd[4], 1)
                    if idx >= 10:
                        revert with 0, 50
                    mem[(32 * idx) + 448] = roleMember[cd[4]][idx].field_0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                s = 448
                t = 768
                while idx < 10:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from 768
                   len 320
            if unknown_0xca15c873(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                return roleMember[cd[4]].field_0
            if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return shares[address(cd[4])]
            if uint32(call.func_hash) >> 224 != unknown_0xd547741f(?????):
                if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalReleased
                require unknown_0xeb17fba3(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if not roleAdmin[address(msg.sender)].field_0:
                    revert with 0, 
                                32,
                                53,
                                0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69,
                                0x20726f6c6520746f20776974686472617720424e420000000000000000000000
                if eth.balance(this.address) < cd[36]:
                    revert with 0, 'PaymentSplitter: Address: insufficient balance'
                call address(cd[4]) with:
                   value cd[36] wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'PaymentSplitter: unable to send value, recipient may have reverted'
                else:
                    if not ext_call.success:
                        revert with 0, 'PaymentSplitter: unable to send value, recipient may have reverted'
                ('bool', 'ext_call.success')
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[36] == address(cd[36])
                if not roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                    mem[160 len 42] = call.data[calldata.size len 42]
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 42:
                            revert with 0, 50
                        mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    mem[256 len 66] = call.data[calldata.size len 66]
                    idx = 65
                    s = roleAdmin[cd[4]].field_256
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= 66:
                            revert with 0, 50
                        mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if roleAdmin[cd[4]].field_256 + 16384:
                        revert with 0, 'Strings: hex length insufficient'
                    revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                if roleAdmin[cd[4]][address(cd[36])].field_0:
                    roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                    emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                if roleMember[cd[4]][1][address(cd[36])].field_0:
                    if roleMember[cd[4]][1][address(cd[36])].field_0 < 1:
                        revert with 0, 17
                    if roleMember[cd[4]].field_0 < 1:
                        revert with 0, 17
                    if roleMember[cd[4]].field_0 - 1 != roleMember[cd[4]][1][address(cd[36])].field_0 - 1:
                        if roleMember[cd[4]].field_0 - 1 >= roleMember[cd[4]].field_0:
                            revert with 0, 50
                        if roleMember[cd[4]][1][address(cd[36])].field_0 - 1 >= roleMember[cd[4]].field_0:
                            revert with 0, 50
                        roleMember[cd[4]][roleMember[cd[4]][1][address(cd[36])].field_0].field_0 = roleMember[cd[4]][roleMember[cd[4]].field_0].field_0
                        roleMember[cd[4]][1][roleMember[cd[4]][roleMember[cd[4]].field_0].field_0].field_0 = roleMember[cd[4]][1][address(cd[36])].field_0
                    if not roleMember[cd[4]].field_0:
                        revert with 0, 49
                    roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = 0
                    roleMember[cd[4]].field_0--
                    roleMember[cd[4]][1][address(cd[36])].field_0 = 0
        else:
            if unknown_0x36568abe(?????) > uint32(call.func_hash) >> 224:
                if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == Mask(32, 224, cd[4])
                    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                        return True
                    return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                if uint32(call.func_hash) >> 224 != unknown_0x19165587(?????):
                    if unknown_0x230d0b4d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        mem[64] = (32 * payee.length) + 160
                        mem[128] = payee.length
                        if not payee.length:
                            mem[(32 * payee.length) + 160] = 32
                            mem[(32 * payee.length) + 192] = payee.length
                            idx = 0
                            s = (32 * payee.length) + 224
                            t = 160
                            while idx < payee.length:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from (32 * payee.length) + 160
                               len (96 * payee.length) + 64
                        mem[160] = address(payee.field_0)
                        idx = 160
                        s = 0
                        while (32 * payee.length) + 128 > idx:
                            mem[idx + 32] = payee[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * payee.length) + 160] = 32
                        mem[(32 * payee.length) + 192] = payee.length
                        idx = 0
                        s = mem[64] + 64
                        t = 160
                        while idx < payee.length:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len (64 * payee.length) + -mem[64] + 224
                    if unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return roleAdmin[cd[4]].field_256
                    require unknown_0x2f2ff15d(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if not roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                        mem[160 len 42] = call.data[calldata.size len 42]
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if msg.sender + 10240:
                            revert with 0, 'Strings: hex length insufficient'
                        mem[256 len 66] = call.data[calldata.size len 66]
                        idx = 65
                        s = roleAdmin[cd[4]].field_256
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if roleAdmin[cd[4]].field_256 + 16384:
                            revert with 0, 'Strings: hex length insufficient'
                        revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                    if not roleAdmin[cd[4]][address(cd[36])].field_0:
                        roleAdmin[cd[4]][address(cd[36])].field_0 = 1
                        emit RoleGranted(cd[4], address(cd[36]), msg.sender);
                    if not roleMember[cd[4]][1][address(cd[36])].field_0:
                        roleMember[cd[4]].field_0++
                        roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = address(cd[36])
                        roleMember[cd[4]][roleMember[cd[4]].field_0].field_160 = 0
                        roleMember[cd[4]][1][address(cd[36])].field_0 = roleMember[cd[4]].field_0
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not shares[address(cd[4])]:
                        revert with 0, 'PaymentSplitter: account has no shares'
                    if not roleAdmin[0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775][address(msg.sender)].field_0:
                        revert with 0, 32, 56, 0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69, ' role to withdraw tokens'
                    if eth.balance(this.address) > !totalReleased:
                        revert with 0, 17
                    if eth.balance(this.address) + totalReleased and shares[address(cd[4])] > -1 / eth.balance(this.address) + totalReleased:
                        revert with 0, 17
                    if not totalShares:
                        revert with 0, 18
                    if (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares < released[address(cd[4])]:
                        revert with 0, 17
                    if not ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                        revert with 0, 'PaymentSplitter: account is not due payment'
                    if released[address(cd[4])] > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                        revert with 0, 17
                    released[address(cd[4])] = (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares
                    if totalReleased > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                        revert with 0, 17
                    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]
                    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                        revert with 0, 'Address: insufficient balance'
                    call address(cd[4]) with:
                       value ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    emit PaymentReleased(address(cd[4]), ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]);
            else:
                if unknown_0x36568abe(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if address(cd[36]) != msg.sender:
                        revert with 0, 'AccessControl: can only renounce roles for self'
                    if roleAdmin[cd[4]][address(cd[36])].field_0:
                        roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                        emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                    if roleMember[cd[4]][1][address(cd[36])].field_0:
                        if roleMember[cd[4]][1][address(cd[36])].field_0 < 1:
                            revert with 0, 17
                        if roleMember[cd[4]].field_0 < 1:
                            revert with 0, 17
                        if roleMember[cd[4]].field_0 - 1 != roleMember[cd[4]][1][address(cd[36])].field_0 - 1:
                            if roleMember[cd[4]].field_0 - 1 >= roleMember[cd[4]].field_0:
                                revert with 0, 50
                            if roleMember[cd[4]][1][address(cd[36])].field_0 - 1 >= roleMember[cd[4]].field_0:
                                revert with 0, 50
                            roleMember[cd[4]][roleMember[cd[4]][1][address(cd[36])].field_0].field_0 = roleMember[cd[4]][roleMember[cd[4]].field_0].field_0
                            roleMember[cd[4]][1][roleMember[cd[4]][roleMember[cd[4]].field_0].field_0].field_0 = roleMember[cd[4]][1][address(cd[36])].field_0
                        if not roleMember[cd[4]].field_0:
                            revert with 0, 49
                        roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = 0
                        roleMember[cd[4]].field_0--
                        roleMember[cd[4]][1][address(cd[36])].field_0 = 0
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x3a118085(?????):
                        if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return totalShares
                        if uint32(call.func_hash) >> 224 != unknown_0x6a395ccb(?????):
                            if unknown_0x75b238fc(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return 0xa49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c21775
                            require unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if cd[4] >= payee.length:
                                revert with 0, 50
                            return payee[cd[4]].field_0
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if not roleAdmin[address(msg.sender)].field_0:
                            revert with 0, 32, 56, 0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69, ' role to withdraw tokens'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(cd[36]), cd[68]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'PaymentSplitter: Transfer failed'
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 4).length
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        s = cd[4] + 36
                        t = 160
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        if ('cd', 36).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                            revert with 0, 65
                        mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                        idx = 0
                        s = cd[36] + 36
                        t = ceil32(32 * ('cd', 4).length) + 161
                        while idx < ('cd', 36).length:
                            mem[t] = cd[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if not roleAdmin[address(msg.sender)].field_0:
                            revert with 0, 32, 51, 0xfe5061796d656e7453706c69747465723a206d75737420686176652061646d69, ' role to  addPayees' << 104
                        idx = 0
                        while idx < payee.length:
                            shares[stor6[idx].field_0] = 0
                            mem[0] = payee[idx].field_0
                            mem[32] = 5
                            released[stor6[idx].field_0] = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        totalShares = 0
                        totalReleased = 0
                        payee.length = 0
                        idx = 0
                        while payee.length > idx:
                            payee[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        if payee.length:
                            revert with 0, 'PaymentSplitter: payees should be cleared first'
                        if ('cd', 4).length != ('cd', 36).length:
                            revert with 0, 'PaymentSplitter: payees and shares length mismatch'
                        if ('cd', 4).length <= 0:
                            revert with 0, 'PaymentSplitter: no payees'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= mem[128]:
                                revert with 0, 50
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 50
                            _603 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                            if not mem[(32 * idx) + 172 len 20]:
                                revert with 0, 'PaymentSplitter: account is the zero address'
                            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161] <= 0:
                                revert with 0, 'PaymentSplitter: shares are 0'
                            if shares[mem[(32 * idx) + 172 len 20]]:
                                revert with 0, 'PaymentSplitter: account already has shares'
                            payee.length++
                            payee[payee.length].field_0 = mem[(32 * idx) + 172 len 20]
                            mem[0] = mem[(32 * idx) + 172 len 20]
                            mem[32] = 4
                            shares[address(mem[(32 * idx) + 160])] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                            if totalShares > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]:
                                revert with 0, 17
                            totalShares += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = mem[(32 * idx) + 172 len 20]
                            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162] = _603
                            emit PayeeAdded(mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130], _603);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
}



}
