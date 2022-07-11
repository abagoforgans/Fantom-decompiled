contract main {




// =====================  Runtime code  =====================


#
#  - buy(uint256 arg1)
#
const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
mapping of uint8 stor1;
array of address whitelisted;
array of struct stor3;
address payTokenAddress;
uint256 sub_af18bb27;
uint256 sub_65cefd6e;
uint256 sub_25d350ad;
uint256 sub_b51d31d6;
uint256 sub_74e61857;
uint256 sub_3c739855;
uint256 sub_60f28d3a;
uint256 sub_bb51b6d6;
uint256 sub_ae0adbfd;
uint256 tokensForSale;
uint256 sub_a15b60ad;
uint256 investorCount;
uint256 sub_7acfb2cd;
uint256 sub_69596969;
uint256 sub_d01f5fd0;
uint256 sub_0a45fb5b;
uint8 sub_2be09ac6;
uint8 sub_21b4e3ea; offset 8
uint8 sub_a1f445ca; offset 16
uint8 sub_d572073d; offset 24
uint256 stor21; offset 24
uint256 stor21; offset 16
uint256 stor21; offset 8
array of struct sub_60bcf5aa;
array of struct buyers;
array of struct sub_992e03a0;
mapping of struct sub_f16bd5a2;
mapping of uint8 stor26;
mapping of uint8 stor27;

function hasWhitelisting() payable {
    return bool(uint8(stor3.length))
}

function sub_0a45fb5b(?) payable {
    return sub_0a45fb5b
}

function receipts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f16bd5a2[arg1].field_0, 
           sub_f16bd5a2[arg1].field_256,
           sub_f16bd5a2[arg1].field_512,
           bool(sub_f16bd5a2[arg1].field_768),
           bool(sub_f16bd5a2[arg1].field_776),
           bool(sub_f16bd5a2[arg1].field_784),
           sub_f16bd5a2[arg1].field_792
}

function tokensForSale() payable {
    return tokensForSale
}

function sub_21b4e3ea(?) payable {
    return bool(sub_21b4e3ea)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function sub_25d350ad(?) payable {
    return sub_25d350ad
}

function sub_2be09ac6(?) payable {
    return bool(sub_2be09ac6)
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[address(arg1)]))
}

function sub_3c739855(?) payable {
    return sub_3c739855
}

function sub_60bcf5aa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_60bcf5aa.length
    return sub_60bcf5aa[arg1].field_0
}

function sub_60f28d3a(?) payable {
    return sub_60f28d3a
}

function sub_65cefd6e(?) payable {
    return sub_65cefd6e
}

function sub_69596969(?) payable {
    return sub_69596969
}

function sub_74e61857(?) payable {
    return sub_74e61857
}

function sub_7acfb2cd(?) payable {
    return sub_7acfb2cd
}

function sub_8c34b7cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor27[arg1])
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function payToken() payable {
    return payTokenAddress
}

function sub_992e03a0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_992e03a0[arg1].field_0
    return sub_992e03a0[arg1][arg2].field_0
}

function sub_a15b60ad(?) payable {
    return sub_a15b60ad
}

function sub_a1f445ca(?) payable {
    return bool(sub_a1f445ca)
}

function sub_ae0adbfd(?) payable {
    return sub_ae0adbfd
}

function sub_af18bb27(?) payable {
    return sub_af18bb27
}

function sub_b51d31d6(?) payable {
    return sub_b51d31d6
}

function whitelistedAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < whitelisted.length
    return address(whitelisted[arg1])
}

function sub_bb51b6d6(?) payable {
    return sub_bb51b6d6
}

function sub_c387cebb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor26[arg1])
}

function sub_d01f5fd0(?) payable {
    return sub_d01f5fd0
}

function sub_d572073d(?) payable {
    return bool(sub_d572073d)
}

function idoToken() payable {
    return stor3.length.field_8
}

function investorCount() payable {
    return investorCount
}

function sub_f16bd5a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f16bd5a2[arg1].field_0, sub_f16bd5a2[arg1].field_256, sub_f16bd5a2[arg1].field_512, sub_f16bd5a2[arg1].field_792
}

function sub_f1b6ff53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor1[arg1]))
}

function buyers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < buyers.length
    return buyers[arg1].field_0
}

function sub_f6f6b3d9(?) payable {
    return whitelisted.length
}

function _fallback() payable {
    revert
}

function sub_5e03be5e(?) payable {
    return (block.timestamp < sub_7acfb2cd)
}

function sub_631f03ef(?) payable {
    return (block.timestamp > sub_69596969)
}

function sub_e455347b(?) payable {
    return (block.timestamp > sub_0a45fb5b)
}

function sub_f379b227(?) payable {
    return (block.timestamp < sub_d01f5fd0)
}

function isFundingOpen() payable {
    if block.timestamp < sub_d01f5fd0:
        return block.timestamp >= sub_d01f5fd0
    return block.timestamp <= sub_0a45fb5b
}

function isWhitelistOpen() payable {
    if block.timestamp < sub_7acfb2cd:
        return block.timestamp >= sub_7acfb2cd
    return block.timestamp <= sub_69596969
}

function sub_58c3c4f1(?) payable {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    Mask(232, 0, stor21.field_24) = 1
}

function sub_20379b36(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_65cefd6e = arg1
}

function sub_2fe5ab31(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_af18bb27 = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_d19d8ffa(?) payable {
    require ext_code.size(payTokenAddress)
    staticcall payTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_6c5d26d5(?) payable {
    require ext_code.size(stor3.length.field_8)
    staticcall stor3.length.field_8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_0adb696c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(payTokenAddress)
    staticcall payTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        return 0
    return 1
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    idx = 0
    while idx < whitelisted.length:
        mem[0] = 2
        if address(whitelisted[idx]) == arg1:
            if idx >= whitelisted.length:
                revert with 'NH{q', 50
            address(whitelisted[idx]) = 0
            mem[0] = arg1
            mem[32] = 1
            emit RemovedFromWhitelist(arg1);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_29e28e95(?) payable {
    if sub_60bcf5aa.length:
        mem[128] = uint256(sub_60bcf5aa.field_0)
        idx = 128
        s = 0
        while (32 * sub_60bcf5aa.length) + 96 > idx:
            mem[idx + 32] = sub_60bcf5aa[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_60bcf5aa.length, data=mem[128 len 32 * sub_60bcf5aa.length])
    mem[(32 * sub_60bcf5aa.length) + 128] = 32
    mem[(32 * sub_60bcf5aa.length) + 160] = sub_60bcf5aa.length
    mem[(32 * sub_60bcf5aa.length) + 192 len 32 * sub_60bcf5aa.length] = mem[128 len 32 * sub_60bcf5aa.length]
    return memory
      from (32 * sub_60bcf5aa.length) + 128
       len (96 * sub_60bcf5aa.length) + 64
}

function sub_f1dbfde2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    if block.timestamp <= sub_0a45fb5b:
        revert with 0, 'The Funding Period has not ended'
    if sub_21b4e3ea:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already have withdrawn the Pay tokens'
    require ext_code.size(payTokenAddress)
    call payTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_bb51b6d6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transferred Pay Tokens not completed'
    Mask(248, 0, stor21.field_8) = 1
}

function sub_9c765a33(?) payable {
    if sub_992e03a0[address(msg.sender)].field_0:
        mem[128] = sub_992e03a0[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_992e03a0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_992e03a0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_992e03a0[address(msg.sender)].field_0, data=mem[128 len 32 * sub_992e03a0[address(msg.sender)].field_0])
    mem[(32 * sub_992e03a0[address(msg.sender)].field_0) + 128] = 32
    mem[(32 * sub_992e03a0[address(msg.sender)].field_0) + 160] = sub_992e03a0[address(msg.sender)].field_0
    mem[(32 * sub_992e03a0[address(msg.sender)].field_0) + 192 len 32 * sub_992e03a0[address(msg.sender)].field_0] = mem[128 len 32 * sub_992e03a0[address(msg.sender)].field_0]
    return memory
      from (32 * sub_992e03a0[address(msg.sender)].field_0) + 128
       len (96 * sub_992e03a0[address(msg.sender)].field_0) + 64
}

function getBuyers() payable {
    mem[64] = (32 * buyers.length) + 128
    mem[96] = buyers.length
    if not buyers.length:
        mem[(32 * buyers.length) + 128] = 32
        mem[(32 * buyers.length) + 160] = buyers.length
        idx = 0
        s = 128
        t = (32 * buyers.length) + 192
        while idx < buyers.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * buyers.length) + 128
           len (96 * buyers.length) + 64
    mem[128] = address(buyers.field_0)
    idx = 128
    s = 0
    while (32 * buyers.length) + 96 > idx:
        mem[idx + 32] = buyers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * buyers.length) + 128] = 32
    mem[(32 * buyers.length) + 160] = buyers.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < buyers.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * buyers.length) + -mem[64] + 192
}

function sub_ad5f71cc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    if block.timestamp <= sub_0a45fb5b:
        revert with 0, 'The Funding Period has not ended'
    if sub_d572073d:
        revert with 0, 'Funding has been canceled'
    if sub_2be09ac6:
        revert with 0, 'Already funded tokens'
    if sub_ae0adbfd > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You should at least match the totalAllocatedIdoTokens'
    require ext_code.size(stor3.length.field_8)
    staticcall stor3.length.field_8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'The msg.sender does not have enough tokens to fund to the contract'
    require ext_code.size(stor3.length.field_8)
    call stor3.length.field_8.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed sale token to be transferred to the contract'
    tokensForSale = arg1
    sub_2be09ac6 = 1
}

function add(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if bool(uint8(stor1[mem[(32 * idx) + 140 len 20]])) == 1:
            revert with 0, 'This address cannot be added because it already exists but as a blacklisted address'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[32] = 1
        uint8(stor1[mem[(32 * idx) + 140 len 20]]) = 1
        if idx >= arg1.length:
            revert with 'NH{q', 50
        whitelisted.length++
        mem[0] = 2
        address(whitelisted[whitelisted.length]) = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = 128
    t = floor32(arg1.length) + 97
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit AddedToWhitelist(sha3(mem[floor32(arg1.length) + 97 len 32 * arg1.length]));
}

function sub_d5ba244f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    if block.timestamp <= sub_0a45fb5b:
        revert with 0, 'The Funding Period has not ended'
    if sub_a1f445ca:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Already have withdrawn the sale tokens'
    require ext_code.size(stor3.length.field_8)
    staticcall stor3.length.field_8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'The contract has no Sale tokens left'
    require ext_code.size(stor3.length.field_8)
    staticcall stor3.length.field_8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3.length.field_8)
    call stor3.length.field_8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Transferred Sale Tokens not completed'
    Mask(240, 0, stor21.field_16) = 1
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_74718add(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and sub_74e61857 > -1 / arg1:
        revert with 'NH{q', 17
    if sub_60f28d3a < 2:
        revert with 'NH{q', 17
    if not sub_60f28d3a - 2:
        if sub_b51d31d6 and 1 > -1 / sub_b51d31d6:
            revert with 'NH{q', 17
        if not sub_b51d31d6:
            revert with 'NH{q', 18
        if sub_3c739855 < 2:
            revert with 'NH{q', 17
        if not sub_3c739855 - 2:
            if arg1 * sub_74e61857 / sub_b51d31d6 and 1 > -1 / arg1 * sub_74e61857 / sub_b51d31d6:
                revert with 'NH{q', 17
            return (arg1 * sub_74e61857 / sub_b51d31d6)
        if bool(bool(sub_3c739855 - 2 < 78)) or bool(bool(sub_3c739855 - 2 < 32)):
            if 10^(sub_3c739855 - 2) > -1:
                revert with 'NH{q', 17
            if arg1 * sub_74e61857 / sub_b51d31d6 and 10^(sub_3c739855 - 2) > -1 / arg1 * sub_74e61857 / sub_b51d31d6:
                revert with 'NH{q', 17
            return (arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_3c739855 - 2))
        s = 10
        t = 1
        idx = sub_3c739855 - 2
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if arg1 * sub_74e61857 / sub_b51d31d6 and t * s > -1 / arg1 * sub_74e61857 / sub_b51d31d6:
            revert with 'NH{q', 17
        return (arg1 * sub_74e61857 / sub_b51d31d6 * t * s)
    if bool(bool(sub_60f28d3a - 2 < 78)) or bool(bool(sub_60f28d3a - 2 < 32)):
        if 10^(sub_60f28d3a - 2) > -1:
            revert with 'NH{q', 17
        if sub_b51d31d6 and 10^(sub_60f28d3a - 2) > -1 / sub_b51d31d6:
            revert with 'NH{q', 17
        if not sub_b51d31d6 * 10^(sub_60f28d3a - 2):
            revert with 'NH{q', 18
        if sub_3c739855 < 2:
            revert with 'NH{q', 17
        if not sub_3c739855 - 2:
            if arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) and 1 > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2):
                revert with 'NH{q', 17
            return (arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2))
        if bool(bool(sub_3c739855 - 2 < 78)) or bool(bool(sub_3c739855 - 2 < 32)):
            if 10^(sub_3c739855 - 2) > -1:
                revert with 'NH{q', 17
            if arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) and 10^(sub_3c739855 - 2) > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2):
                revert with 'NH{q', 17
            return (arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) * 10^(sub_3c739855 - 2))
        s = 10
        t = 1
        idx = sub_3c739855 - 2
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        if arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) and t * s > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2):
            revert with 'NH{q', 17
        return (arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) * t * s)
    s = 10
    t = 1
    idx = sub_60f28d3a - 2
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if sub_b51d31d6 and t * s > -1 / sub_b51d31d6:
        revert with 'NH{q', 17
    if not sub_b51d31d6 * t * s:
        revert with 'NH{q', 18
    if sub_3c739855 < 2:
        revert with 'NH{q', 17
    if not sub_3c739855 - 2:
        if arg1 * sub_74e61857 / sub_b51d31d6 * t * s and 1 > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * t * s:
            revert with 'NH{q', 17
        return (arg1 * sub_74e61857 / sub_b51d31d6 * t * s)
    if bool(bool(sub_3c739855 - 2 < 78)) or bool(bool(sub_3c739855 - 2 < 32)):
        if 10^(sub_3c739855 - 2) > -1:
            revert with 'NH{q', 17
        if arg1 * sub_74e61857 / sub_b51d31d6 * t * s and 10^(sub_3c739855 - 2) > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * t * s:
            revert with 'NH{q', 17
        return (arg1 * sub_74e61857 / sub_b51d31d6 * t * s * 10^(sub_3c739855 - 2))
    u = 10
    v = 1
    idx = sub_3c739855 - 2
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if arg1 * sub_74e61857 / sub_b51d31d6 * t * s and v * u > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * t * s:
        revert with 'NH{q', 17
    return (arg1 * sub_74e61857 / sub_b51d31d6 * t * s * v * u)
}

function sub_a8c3fd5c(?) payable {
    mem[64] = (32 * sub_60bcf5aa.length) + 128
    mem[96] = sub_60bcf5aa.length
    if not sub_60bcf5aa.length:
        idx = 0
        s = 0
        t = 0
        while idx < sub_60bcf5aa.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _16 = sha3(mem[(32 * idx) + 128], 25)
            _17 = mem[64]
            mem[64] = mem[64] + 224
            mem[_17] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_17 + 32] = uint256(stor1[_16])
            mem[_17 + 64] = uint256(whitelisted[_16])
            mem[_17 + 96] = bool(stor3[_16].field_0)
            mem[_17 + 128] = bool(stor3[_16].field_8)
            mem[_17 + 160] = bool(stor3[_16].field_16)
            mem[_17 + 192] = stor3[_16].field_24
            if t > -uint256(stor1[_16]) - 1:
                revert with 'NH{q', 17
            if s > -mem[_17] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_17]
            t = t + uint256(stor1[_16])
            continue 
    else:
        mem[0] = 22
        mem[128] = uint256(sub_60bcf5aa.field_0)
        idx = 128
        s = 0
        while (32 * sub_60bcf5aa.length) + 96 > idx:
            mem[idx + 32] = sub_60bcf5aa[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        s = 0
        t = 0
        while idx < sub_60bcf5aa.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _34 = sha3(mem[(32 * idx) + 128], 25)
            _35 = mem[64]
            mem[64] = mem[64] + 224
            mem[_35] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_35 + 32] = uint256(stor1[_34])
            mem[_35 + 64] = uint256(whitelisted[_34])
            mem[_35 + 96] = bool(stor3[_34].field_0)
            mem[_35 + 128] = bool(stor3[_34].field_8)
            mem[_35 + 160] = bool(stor3[_34].field_16)
            mem[_35 + 192] = stor3[_34].field_24
            if t > -uint256(stor1[_34]) - 1:
                revert with 'NH{q', 17
            if s > -mem[_35] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_35]
            t = t + uint256(stor1[_34])
            continue 
    return s * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length, 
           t * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length
}

function sub_f4a870a5(?) payable {
    mem[0] = msg.sender
    mem[32] = 24
    mem[64] = (32 * sub_992e03a0[address(msg.sender)].field_0) + 128
    mem[96] = sub_992e03a0[address(msg.sender)].field_0
    if not sub_992e03a0[address(msg.sender)].field_0:
        idx = 0
        s = 0
        t = 0
        while idx < sub_992e03a0[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _17 = sha3(mem[(32 * idx) + 128], 25)
            _18 = mem[64]
            mem[64] = mem[64] + 224
            mem[_18] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_18 + 32] = uint256(stor1[_17])
            mem[_18 + 64] = uint256(whitelisted[_17])
            mem[_18 + 96] = bool(stor3[_17].field_0)
            mem[_18 + 128] = bool(stor3[_17].field_8)
            mem[_18 + 160] = bool(stor3[_17].field_16)
            mem[_18 + 192] = stor3[_17].field_24
            if t > -uint256(stor1[_17]) - 1:
                revert with 'NH{q', 17
            if s > -mem[_18] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_18]
            t = t + uint256(stor1[_17])
            continue 
    else:
        mem[0] = sha3(address(msg.sender), 24)
        mem[128] = sub_992e03a0[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_992e03a0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_992e03a0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        s = 0
        t = 0
        while idx < sub_992e03a0[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _35 = sha3(mem[(32 * idx) + 128], 25)
            _36 = mem[64]
            mem[64] = mem[64] + 224
            mem[_36] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_36 + 32] = uint256(stor1[_35])
            mem[_36 + 64] = uint256(whitelisted[_35])
            mem[_36 + 96] = bool(stor3[_35].field_0)
            mem[_36 + 128] = bool(stor3[_35].field_8)
            mem[_36 + 160] = bool(stor3[_35].field_16)
            mem[_36 + 192] = stor3[_35].field_24
            if t > -uint256(stor1[_35]) - 1:
                revert with 'NH{q', 17
            if s > -mem[_36] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_36]
            t = t + uint256(stor1[_35])
            continue 
    return s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0, 
           t * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
}

function sub_267f5f22(?) payable {
    if bool(sub_d572073d) != 1:
        revert with 0, 'Funding has not been canceled'
    if stor27[address(msg.sender)]:
        revert with 0, 'You have been refunded already'
    mem[0] = msg.sender
    mem[32] = 24
    mem[64] = (32 * sub_992e03a0[address(msg.sender)].field_0) + 128
    mem[96] = sub_992e03a0[address(msg.sender)].field_0
    if not sub_992e03a0[address(msg.sender)].field_0:
        idx = 0
        s = 0
        while idx < sub_992e03a0[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _30 = sha3(mem[(32 * idx) + 128], 25)
            _31 = mem[64]
            mem[64] = mem[64] + 224
            mem[_31] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_31 + 32] = uint256(stor1[_30])
            mem[_31 + 64] = uint256(whitelisted[_30])
            mem[_31 + 96] = bool(stor3[_30].field_0)
            mem[_31 + 128] = bool(stor3[_30].field_8)
            mem[_31 + 160] = bool(stor3[_30].field_16)
            mem[_31 + 192] = stor3[_30].field_24
            if s > -uint256(stor1[_30]) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + uint256(stor1[_30])
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
        require ext_code.size(payTokenAddress)
        call payTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_34] == bool(mem[_34])
        if not mem[_34]:
            revert with 0, 'Transfer the idoToken to the buyer'
    else:
        mem[0] = sha3(address(msg.sender), 24)
        mem[128] = sub_992e03a0[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_992e03a0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_992e03a0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        s = 0
        while idx < sub_992e03a0[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _68 = sha3(mem[(32 * idx) + 128], 25)
            _69 = mem[64]
            mem[64] = mem[64] + 224
            mem[_69] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_69 + 32] = uint256(stor1[_68])
            mem[_69 + 64] = uint256(whitelisted[_68])
            mem[_69 + 96] = bool(stor3[_68].field_0)
            mem[_69 + 128] = bool(stor3[_68].field_8)
            mem[_69 + 160] = bool(stor3[_68].field_16)
            mem[_69 + 192] = stor3[_68].field_24
            if s > -uint256(stor1[_68]) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + uint256(stor1[_68])
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
        require ext_code.size(payTokenAddress)
        call payTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_72] == bool(mem[_72])
        if not mem[_72]:
            revert with 0, 'Transfer the idoToken to the buyer'
    stor27[address(msg.sender)] = 1
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 25
        sub_f16bd5a2[mem[(32 * idx) + 128]].field_784 = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function claimTokens() payable {
    if block.timestamp <= sub_0a45fb5b:
        revert with 0, 'The Funding Period has not ended'
    if sub_d572073d:
        revert with 0, 'Funding has been canceled'
    if bool(sub_2be09ac6) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens have not been added to the contract YET'
    if stor26[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have already claimed the tokens'
    mem[0] = msg.sender
    mem[32] = 24
    mem[64] = (32 * sub_992e03a0[address(msg.sender)].field_0) + 128
    mem[96] = sub_992e03a0[address(msg.sender)].field_0
    if not sub_992e03a0[address(msg.sender)].field_0:
        idx = 0
        s = 0
        while idx < sub_992e03a0[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _34 = sha3(mem[(32 * idx) + 128], 25)
            _35 = mem[64]
            mem[64] = mem[64] + 224
            mem[_35] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_35 + 32] = uint256(stor1[_34])
            mem[_35 + 64] = uint256(whitelisted[_34])
            mem[_35 + 96] = bool(stor3[_34].field_0)
            mem[_35 + 128] = bool(stor3[_34].field_8)
            mem[_35 + 160] = bool(stor3[_34].field_16)
            mem[_35 + 192] = stor3[_34].field_24
            if s > -mem[_35] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_35]
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
        require ext_code.size(stor3.length.field_8)
        call stor3.length.field_8.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _38 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_38] == bool(mem[_38])
        if not mem[_38]:
            revert with 0, 'Transfer the idoToken to the msg.sender'
    else:
        mem[0] = sha3(address(msg.sender), 24)
        mem[128] = sub_992e03a0[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_992e03a0[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_992e03a0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        s = 0
        while idx < sub_992e03a0[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _72 = sha3(mem[(32 * idx) + 128], 25)
            _73 = mem[64]
            mem[64] = mem[64] + 224
            mem[_73] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_73 + 32] = uint256(stor1[_72])
            mem[_73 + 64] = uint256(whitelisted[_72])
            mem[_73 + 96] = bool(stor3[_72].field_0)
            mem[_73 + 128] = bool(stor3[_72].field_8)
            mem[_73 + 160] = bool(stor3[_72].field_16)
            mem[_73 + 192] = stor3[_72].field_24
            if s > -mem[_73] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[_73]
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
        require ext_code.size(stor3.length.field_8)
        call stor3.length.field_8.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0 * sub_992e03a0[address(msg.sender)].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_76] == bool(mem[_76])
        if not mem[_76]:
            revert with 0, 'Transfer the idoToken to the msg.sender'
    stor26[address(msg.sender)] = 1
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 25
        sub_f16bd5a2[mem[(32 * idx) + 128]].field_776 = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
