contract main {




// =====================  Runtime code  =====================


#
#  - claimTokens()
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
array of struct sub_60bcf5aa;
array of struct buyers;
array of struct sub_992e03a0;
mapping of struct sub_f16bd5a2;
uint8 sub_10ac25e0;
uint8 sub_b8e811ba; offset 8
uint8 sub_d38ec227; offset 16
uint8 sub_d3606f2b; offset 24
uint256 stor26; offset 24
uint256 stor26; offset 16
uint256 stor26; offset 8
mapping of uint8 stor27;
mapping of uint8 stor28;
mapping of uint8 stor29;
mapping of uint8 stor30;
mapping of uint8 stor31;
mapping of uint8 stor32;

function hasWhitelisting() payable {
    return bool(uint8(stor3.length))
}

function sub_0a45fb5b(?) payable {
    return sub_0a45fb5b
}

function receipts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_f16bd5a2[arg1].field_0, 
           sub_f16bd5a2[arg1].field_256,
           sub_f16bd5a2[arg1].field_512,
           bool(sub_f16bd5a2[arg1].field_768),
           bool(sub_f16bd5a2[arg1].field_776),
           bool(sub_f16bd5a2[arg1].field_784),
           sub_f16bd5a2[arg1].field_792
}

function sub_1011a572(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor30[arg1])
}

function sub_10ac25e0(?) payable {
    return bool(sub_10ac25e0)
}

function tokensForSale() payable {
    return tokensForSale
}

function sub_21b4e3ea(?) payable {
    return bool(sub_21b4e3ea)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_25d350ad(?) payable {
    return sub_25d350ad
}

function sub_2be09ac6(?) payable {
    return bool(sub_2be09ac6)
}

function sub_36f6ec58(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor28[arg1])
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
    return bool(stor32[arg1])
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function payToken() payable {
    return payTokenAddress
}

function sub_992e03a0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_992e03a0[arg1].field_0
    return sub_992e03a0[arg1][arg2].field_0
}

function sub_a15b60ad(?) payable {
    return sub_a15b60ad
}

function sub_a16df048(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor29[arg1])
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

function sub_b592becc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor27[arg1])
}

function sub_b8e811ba(?) payable {
    return bool(sub_b8e811ba)
}

function whitelistedAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < whitelisted.length
    return address(whitelisted[arg1])
}

function sub_bb51b6d6(?) payable {
    return sub_bb51b6d6
}

function sub_c387cebb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor31[arg1])
}

function sub_d01f5fd0(?) payable {
    return sub_d01f5fd0
}

function sub_d3606f2b(?) payable {
    return bool(sub_d3606f2b)
}

function sub_d38ec227(?) payable {
    return bool(sub_d38ec227)
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
    return sub_f16bd5a2[arg1].field_0, sub_f16bd5a2[arg1].field_256, sub_f16bd5a2[arg1].field_512, sub_f16bd5a2[arg1].field_792
}

function sub_f1b6ff53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor1[arg1]))
}

function buyers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_58c3c4f1(?) payable {
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_d572073d = 1
}

function isWhitelistOpen() payable {
    if block.timestamp < sub_7acfb2cd:
        return block.timestamp >= sub_7acfb2cd
    return block.timestamp <= sub_69596969
}

function sub_20379b36(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_65cefd6e = arg1
}

function sub_2fe5ab31(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_af18bb27 = arg1
}

function sub_86fc55c5(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_25d350ad = arg1
}

function sub_d15244be(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    sub_10ac25e0 = uint8(bool(arg1))
}

function sub_2eaa17e3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    Mask(248, 0, stor26.field_8) = Mask(248, 0, bool(arg1))
}

function sub_34356015(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    Mask(240, 0, stor26.field_16) = Mask(240, 0, bool(arg1))
}

function sub_49cb4a4f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    Mask(232, 0, stor26.field_24) = Mask(232, 0, bool(arg1))
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
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
    return ext_call.return_data[0]
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
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
    require ext_code.size(payTokenAddress)
    staticcall payTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
                revert with 0, 50
            address(whitelisted[idx]) = 0
            mem[0] = arg1
            mem[32] = 1
            emit RemovedFromWhitelist(arg1);
        if idx == -1:
            revert with 0, 17
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
    sub_21b4e3ea = 1
}

function sub_9c765a33(?) payable {
    if sub_992e03a0[msg.sender].field_0:
        mem[128] = sub_992e03a0[msg.sender].field_0
        if (32 * sub_992e03a0[msg.sender].field_0) + 32 > 64:
            mem[160] = sub_992e03a0[msg.sender].field_256
            idx = 160
            s = 1
            while (32 * sub_992e03a0[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = sub_992e03a0[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_992e03a0[msg.sender].field_0) + 128] = 32
    mem[(32 * sub_992e03a0[msg.sender].field_0) + 160] = sub_992e03a0[msg.sender].field_0
    mem[(32 * sub_992e03a0[msg.sender].field_0) + 192 len 32 * sub_992e03a0[msg.sender].field_0] = mem[128 len 32 * sub_992e03a0[msg.sender].field_0]
    return memory
      from (32 * sub_992e03a0[msg.sender].field_0) + 128
       len (96 * sub_992e03a0[msg.sender].field_0) + 64
}

function getBuyers() payable {
    mem[64] = (32 * buyers.length) + 128
    mem[96] = buyers.length
    if not buyers.length:
        mem[(32 * buyers.length) + 128] = 32
        mem[(32 * buyers.length) + 160] = buyers.length
        idx = 0
        s = (32 * buyers.length) + 192
        t = 128
        while idx < buyers.length:
            mem[s] = mem[t + 12 len 20]
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
    s = mem[64] + 64
    t = 128
    while idx < buyers.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * buyers.length) + -mem[64] + 192
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
}

function sub_ad5f71cc(?) payable {
    require calldata.size - 4 >= 32
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
    if ext_call.return_data[0] < arg1:
        revert with 0, 'The msg.sender does not have enough tokens to fund to the contract'
    require ext_code.size(stor3.length.field_8)
    call stor3.length.field_8.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed sale token to be transferred to the contract'
    tokensForSale = arg1
    sub_2be09ac6 = 1
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'The contract has no Sale tokens left'
    require ext_code.size(stor3.length.field_8)
    staticcall stor3.length.field_8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    sub_a1f445ca = 1
}

function add(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Account is not in the admin list'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if 1 == bool(uint8(stor1[mem[(32 * idx) + 140 len 20]])):
            revert with 0, 'This address cannot be added because it already exists but as a blacklisted address'
        if idx >= arg1.length:
            revert with 0, 50
        mem[32] = 1
        uint8(stor1[mem[(32 * idx) + 140 len 20]]) = 1
        if idx >= arg1.length:
            revert with 0, 50
        whitelisted.length++
        mem[0] = 2
        address(whitelisted[whitelisted.length]) = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 128
    t = ceil32(32 * arg1.length) + 97
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit AddedToWhitelist(sha3(mem[ceil32(32 * arg1.length) + 97 len 32 * arg1.length]));
}

function sub_74718add(?) payable {
    require calldata.size - 4 >= 32
    if arg1 and sub_74e61857 > -1 / arg1:
        revert with 0, 17
    if sub_60f28d3a < 2:
        revert with 0, 17
    if not sub_60f28d3a - 2:
        if sub_b51d31d6 and 1 > -1 / sub_b51d31d6:
            revert with 0, 17
        if not sub_b51d31d6:
            revert with 0, 18
        if sub_3c739855 < 2:
            revert with 0, 17
        if not sub_3c739855 - 2:
            if arg1 * sub_74e61857 / sub_b51d31d6 and 1 > -1 / arg1 * sub_74e61857 / sub_b51d31d6:
                revert with 0, 17
            return (arg1 * sub_74e61857 / sub_b51d31d6)
        if bool(bool(sub_3c739855 - 2 < 78)) or bool(bool(sub_3c739855 - 2 < 32)):
            if arg1 * sub_74e61857 / sub_b51d31d6 and 10^(sub_3c739855 - 2) > -1 / arg1 * sub_74e61857 / sub_b51d31d6:
                revert with 0, 17
            return (arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_3c739855 - 2))
        s = 10
        t = 1
        idx = sub_3c739855 - 2
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if arg1 * sub_74e61857 / sub_b51d31d6 and s * t > -1 / arg1 * sub_74e61857 / sub_b51d31d6:
            revert with 0, 17
        return (arg1 * sub_74e61857 / sub_b51d31d6 * s * t)
    if bool(bool(sub_60f28d3a - 2 < 78)) or bool(bool(sub_60f28d3a - 2 < 32)):
        if sub_b51d31d6 and 10^(sub_60f28d3a - 2) > -1 / sub_b51d31d6:
            revert with 0, 17
        if not sub_b51d31d6 * 10^(sub_60f28d3a - 2):
            revert with 0, 18
        if sub_3c739855 < 2:
            revert with 0, 17
        if not sub_3c739855 - 2:
            if arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) and 1 > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2):
                revert with 0, 17
            return (arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2))
        if bool(bool(sub_3c739855 - 2 < 78)) or bool(bool(sub_3c739855 - 2 < 32)):
            if arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) and 10^(sub_3c739855 - 2) > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2):
                revert with 0, 17
            return (arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) * 10^(sub_3c739855 - 2))
        s = 10
        t = 1
        idx = sub_3c739855 - 2
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) and s * t > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2):
            revert with 0, 17
        return (arg1 * sub_74e61857 / sub_b51d31d6 * 10^(sub_60f28d3a - 2) * s * t)
    s = 10
    t = 1
    idx = sub_60f28d3a - 2
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if sub_b51d31d6 and s * t > -1 / sub_b51d31d6:
        revert with 0, 17
    if not sub_b51d31d6 * s * t:
        revert with 0, 18
    if sub_3c739855 < 2:
        revert with 0, 17
    if not sub_3c739855 - 2:
        if arg1 * sub_74e61857 / sub_b51d31d6 * s * t and 1 > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * s * t:
            revert with 0, 17
        return (arg1 * sub_74e61857 / sub_b51d31d6 * s * t)
    if bool(bool(sub_3c739855 - 2 < 78)) or bool(bool(sub_3c739855 - 2 < 32)):
        if arg1 * sub_74e61857 / sub_b51d31d6 * s * t and 10^(sub_3c739855 - 2) > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * s * t:
            revert with 0, 17
        return (arg1 * sub_74e61857 / sub_b51d31d6 * s * t * 10^(sub_3c739855 - 2))
    u = 10
    v = 1
    idx = sub_3c739855 - 2
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if arg1 * sub_74e61857 / sub_b51d31d6 * s * t and u * v > -1 / arg1 * sub_74e61857 / sub_b51d31d6 * s * t:
        revert with 0, 17
    return (arg1 * sub_74e61857 / sub_b51d31d6 * s * t * u * v)
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
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _15 = sha3(mem[(32 * idx) + 128], 25)
            _16 = mem[64]
            mem[64] = mem[64] + 224
            mem[_16] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_16 + 32] = uint256(stor1[_15])
            mem[_16 + 64] = uint256(whitelisted[_15])
            mem[_16 + 96] = bool(stor3[_15].field_0)
            mem[_16 + 128] = bool(stor3[_15].field_8)
            mem[_16 + 160] = bool(stor3[_15].field_16)
            mem[_16 + 192] = stor3[_15].field_24
            if t > !uint256(stor1[_15]):
                revert with 0, 17
            if s > !mem[_16]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_16]
            t = t + uint256(stor1[_15])
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
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _31 = sha3(mem[(32 * idx) + 128], 25)
            _32 = mem[64]
            mem[64] = mem[64] + 224
            mem[_32] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_32 + 32] = uint256(stor1[_31])
            mem[_32 + 64] = uint256(whitelisted[_31])
            mem[_32 + 96] = bool(stor3[_31].field_0)
            mem[_32 + 128] = bool(stor3[_31].field_8)
            mem[_32 + 160] = bool(stor3[_31].field_16)
            mem[_32 + 192] = stor3[_31].field_24
            if t > !uint256(stor1[_31]):
                revert with 0, 17
            if s > !mem[_32]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_32]
            t = t + uint256(stor1[_31])
            continue 
    return s * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length, 
           t * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length * sub_60bcf5aa.length
}

function sub_f4a870a5(?) payable {
    mem[0] = msg.sender
    mem[32] = 24
    mem[64] = (32 * sub_992e03a0[msg.sender].field_0) + 128
    mem[96] = sub_992e03a0[msg.sender].field_0
    if not sub_992e03a0[msg.sender].field_0:
        idx = 0
        s = 0
        t = 0
        while idx < sub_992e03a0[msg.sender].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _26 = sha3(mem[(32 * idx) + 128], 25)
            _27 = mem[64]
            mem[64] = mem[64] + 224
            mem[_27] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_27 + 32] = uint256(stor1[_26])
            mem[_27 + 64] = uint256(whitelisted[_26])
            mem[_27 + 96] = bool(stor3[_26].field_0)
            mem[_27 + 128] = bool(stor3[_26].field_8)
            mem[_27 + 160] = bool(stor3[_26].field_16)
            mem[_27 + 192] = stor3[_26].field_24
            if t > !uint256(stor1[_26]):
                revert with 0, 17
            if s > !mem[_27]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_27]
            t = t + uint256(stor1[_26])
            continue 
    else:
        mem[0] = sha3(msg.sender, 24)
        mem[128] = sub_992e03a0[msg.sender].field_0
        if (32 * sub_992e03a0[msg.sender].field_0) + 32 <= 64:
            idx = 0
            s = 0
            t = 0
            while idx < sub_992e03a0[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
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
                if t > !uint256(stor1[_30]):
                    revert with 0, 17
                if s > !mem[_31]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_31]
                t = t + uint256(stor1[_30])
                continue 
        else:
            mem[160] = sub_992e03a0[msg.sender].field_256
            idx = 160
            s = 1
            while (32 * sub_992e03a0[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = sub_992e03a0[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 0
            t = 0
            while idx < sub_992e03a0[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 25
                _48 = sha3(mem[(32 * idx) + 128], 25)
                _49 = mem[64]
                mem[64] = mem[64] + 224
                mem[_49] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
                mem[_49 + 32] = uint256(stor1[_48])
                mem[_49 + 64] = uint256(whitelisted[_48])
                mem[_49 + 96] = bool(stor3[_48].field_0)
                mem[_49 + 128] = bool(stor3[_48].field_8)
                mem[_49 + 160] = bool(stor3[_48].field_16)
                mem[_49 + 192] = stor3[_48].field_24
                if t > !uint256(stor1[_48]):
                    revert with 0, 17
                if s > !mem[_49]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_49]
                t = t + uint256(stor1[_48])
                continue 
    return s * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0, 
           t * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0
}

function sub_267f5f22(?) payable {
    if bool(sub_d572073d) != 1:
        revert with 0, 'Funding has not been canceled'
    if stor32[msg.sender]:
        revert with 0, 'You have been refunded already'
    mem[0] = msg.sender
    mem[32] = 24
    mem[64] = (32 * sub_992e03a0[msg.sender].field_0) + 128
    mem[96] = sub_992e03a0[msg.sender].field_0
    if not sub_992e03a0[msg.sender].field_0:
        idx = 0
        s = 0
        while idx < sub_992e03a0[msg.sender].field_0:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 25
            _50 = sha3(mem[(32 * idx) + 128], 25)
            _51 = mem[64]
            mem[64] = mem[64] + 224
            mem[_51] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
            mem[_51 + 32] = uint256(stor1[_50])
            mem[_51 + 64] = uint256(whitelisted[_50])
            mem[_51 + 96] = bool(stor3[_50].field_0)
            mem[_51 + 128] = bool(stor3[_50].field_8)
            mem[_51 + 160] = bool(stor3[_50].field_16)
            mem[_51 + 192] = stor3[_50].field_24
            if s > !uint256(stor1[_50]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + uint256(stor1[_50])
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = s * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0
        require ext_code.size(payTokenAddress)
        call payTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == bool(mem[_55])
        if not mem[_55]:
            revert with 0, 'Transfer the idoToken to the buyer'
    else:
        mem[0] = sha3(msg.sender, 24)
        mem[128] = sub_992e03a0[msg.sender].field_0
        if (32 * sub_992e03a0[msg.sender].field_0) + 32 <= 64:
            idx = 0
            s = 0
            while idx < sub_992e03a0[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 25
                _53 = sha3(mem[(32 * idx) + 128], 25)
                _54 = mem[64]
                mem[64] = mem[64] + 224
                mem[_54] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
                mem[_54 + 32] = uint256(stor1[_53])
                mem[_54 + 64] = uint256(whitelisted[_53])
                mem[_54 + 96] = bool(stor3[_53].field_0)
                mem[_54 + 128] = bool(stor3[_53].field_8)
                mem[_54 + 160] = bool(stor3[_53].field_16)
                mem[_54 + 192] = stor3[_53].field_24
                if s > !uint256(stor1[_53]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + uint256(stor1[_53])
                continue 
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = s * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0
            require ext_code.size(payTokenAddress)
            call payTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, s * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _56 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_56] == bool(mem[_56])
            if not mem[_56]:
                revert with 0, 'Transfer the idoToken to the buyer'
        else:
            mem[160] = sub_992e03a0[msg.sender].field_256
            idx = 160
            s = 1
            while (32 * sub_992e03a0[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = sub_992e03a0[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            s = 0
            while idx < sub_992e03a0[msg.sender].field_0:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 25
                _102 = sha3(mem[(32 * idx) + 128], 25)
                _103 = mem[64]
                mem[64] = mem[64] + 224
                mem[_103] = sub_f16bd5a2[mem[(32 * idx) + 128]].field_0
                mem[_103 + 32] = uint256(stor1[_102])
                mem[_103 + 64] = uint256(whitelisted[_102])
                mem[_103 + 96] = bool(stor3[_102].field_0)
                mem[_103 + 128] = bool(stor3[_102].field_8)
                mem[_103 + 160] = bool(stor3[_102].field_16)
                mem[_103 + 192] = stor3[_102].field_24
                if s > !uint256(stor1[_102]):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + uint256(stor1[_102])
                continue 
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = s * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0
            require ext_code.size(payTokenAddress)
            call payTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, s * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0 * sub_992e03a0[msg.sender].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_104] == bool(mem[_104])
            if not mem[_104]:
                revert with 0, 'Transfer the idoToken to the buyer'
    stor32[msg.sender] = 1
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 25
        sub_f16bd5a2[mem[(32 * idx) + 128]].field_784 = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
