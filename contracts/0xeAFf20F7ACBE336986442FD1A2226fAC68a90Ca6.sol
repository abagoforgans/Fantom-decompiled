contract main {




// =====================  Runtime code  =====================


#
#  - stakeEnd(uint256 arg1, uint40 arg2)
#  - stakeStart(uint256 arg1, uint256 arg2)
#  - stakeGoodAccounting(address arg1, uint256 arg2, uint40 arg3)
#  - dailyDataUpdate(uint256 arg1)
#  - btcAddressClaim(uint256 arg1, bytes32[] arg2, address arg3, bytes32 arg4, bytes32 arg5, uint8 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9, uint256 arg10, address arg11)
#  - xfLobbyExit(uint256 arg1, uint256 arg2)
#
const name = ''

const decimals = 8

const currentDay = (block.timestamp - (437592 * 24 * 3600) / 24 * 3600)

const symbol = ''


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint64 stor3;
uint128 stor3;
uint16 stor4;
uint32 stor4;
uint64 stor4;
uint64 stor4;
uint128 stor4;
uint128 stor4; offset 128
mapping of uint8 stor5;
mapping of struct dailyData;
array of struct stakeLists;
mapping of uint256 xfLobby;
mapping of struct xfLobbyEntry;

function totalSupply() {
    return totalSupply
}

function stakeLists(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < stakeLists[arg1].field_0
    return stakeLists[arg1][arg2].field_0, 
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_0,
           stakeLists[arg1][arg2].field_200,
           stakeLists[arg1][arg2].field_0,
           bool(stakeLists[arg1][arg2].field_232)
}

function stakeCount(address arg1) {
    require calldata.size - 4 >= 32
    return stakeLists[address(arg1)].field_0
}

function xfLobbyMembers(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return xfLobbyEntry[arg1][arg2].field_0, xfLobbyEntry[arg1][arg2].field_40
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function btcAddressClaims(bytes20 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[Mask(160, 96, arg1)])
}

function xfLobby(uint256 arg1) {
    require calldata.size - 4 >= 32
    return xfLobby[arg1]
}

function dailyData(uint256 arg1) {
    require calldata.size - 4 >= 32
    return dailyData[arg1].field_0, dailyData[arg1].field_0, dailyData[arg1].field_144
}

function xfLobbyEntry(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not xfLobbyEntry[Mask(256, -40, arg2) << 40][address(arg1)][1][arg2 << 216].field_0:
        revert with 0, 'HEX: Param invalid'
    return xfLobbyEntry[Mask(256, -40, arg2) << 40][address(arg1)][1][arg2 << 216].field_0, 
           xfLobbyEntry[Mask(256, -40, arg2) << 40][address(arg1)][1][arg2 << 216].field_96
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function allocatedSupply() {
    return (totalSupply + Mask(72, 0, stor3))
}

function pubKeyToEthAddress(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return address(sha3(arg1, arg2))
}

function globals() {
    return Mask(72, 0, stor3), 
           Mask(72, 0, stor3),
           stor3 % 1099511627776,
           Mask(72, 0, stor3),
           uint16(stor4.field_0),
           Mask(72, 0, stor4.field_0),
           stor4.field_0 % 1099511627776,
           uint128(stor4.field_128)
}

function xfLobbyFlush() {
    if not eth.balance(this.address):
        revert with 0, 'HEX: No value'
    call 0x3b9adeb3487748d122cb370c7310be45eb78a1cf with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function globalInfo() {
    return Mask(72, 0, stor3), 
           Mask(72, 0, stor3),
           stor3 % 1099511627776,
           Mask(72, 0, stor3),
           uint16(stor4.field_0),
           Mask(72, 0, stor4.field_0),
           stor4.field_0 % 1099511627776,
           stor4.field_0 % 2251799813685248,
           stor4.field_0 % 2251799813685248,
           stor4.field_0 % 67108864,
           block.timestamp,
           totalSupply,
           xfLobby[block.timestamp - (437592 * 24 * 3600) / 24 * 3600]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6d45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function pubKeyToBtcAddress(bytes32 arg1, bytes32 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    if not Mask(1, 1, arg3):
        if Mask(1, 2, arg3):
            revert with 0, 'HEX: claimFlags invalid'
        if Mask(1, 3, arg3):
            revert with 0, 'HEX: claimFlags invalid'
        hash = sha256hash(0, arg1, arg2) 
    else:
        if Mask(1, 2, arg3):
            if Mask(1, 3, arg3):
                revert with 0, 'HEX: claimFlags invalid'
        hash = sha256hash(0, arg1) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = ripemd160hash(hash) 
    if not ripemd160hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    if Mask(1, 2, arg3):
        hash = sha256hash(Mask(176, 0, 0, address(hash), 0)) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        hash = ripemd160hash(hash) 
        if not ripemd160hash.result:
            revert with ext_call.return_data[0 len return_data.size]
    return address(hash)
}

function merkleProofIsValid(bytes32 arg1, bytes32[] arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    s = arg1
    while idx < arg2.length:
        require idx < mem[96]
        _17 = mem[(32 * idx) + 128]
        if s >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _19 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_19 + 32 len mem[_19]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _17
        _23 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_23 + 32 len mem[_23]])
        continue 
    return (0x4e831acb4223b66de3b3d2e54a2edeefb0de3d7916e2886a4b134d9764d41bec == s)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6d45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function xfLobbyPendingDays(address arg1) {
    require calldata.size - 4 >= 32
    mem[64] = 160
    mem[96 len 64] = code.data[20989 len 64]
    if (block.timestamp - (437592 * 24 * 3600) / 24 * 3600) + 1 <= 351:
        idx = (block.timestamp - (437592 * 24 * 3600) / 24 * 3600) + 1
        while idx:
            mem[0] = arg1
            mem[32] = sha3(idx - 1, 9)
            if xfLobbyEntry[idx - 1][address(arg1)].field_40 > xfLobbyEntry[idx - 1][address(arg1)].field_0:
                require Mask(248, 0, idx - 1) * 0.00390625 < 2
                mem[(Mask(240, 8, idx - 1) >> 3) + 96] = 1 << uint8(idx - 1) or mem[(Mask(240, 8, idx - 1) >> 3) + 96]
            idx = idx - 1
            continue 
    else:
        idx = 351
        while idx:
            mem[0] = arg1
            mem[32] = sha3(idx - 1, 9)
            if xfLobbyEntry[idx - 1][address(arg1)].field_40 > xfLobbyEntry[idx - 1][address(arg1)].field_0:
                require Mask(248, 0, idx - 1) * 0.00390625 < 2
                mem[(Mask(240, 8, idx - 1) >> 3) + 96] = 1 << uint8(idx - 1) or mem[(Mask(240, 8, idx - 1) >> 3) + 96]
            idx = idx - 1
            continue 
    mem[160 len 64] = mem[96 len 64]
    return memory
      from mem[64]
       len -mem[64] + 224
}

function xfLobbyEnter(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp - (437592 * 24 * 3600) / 24 * 3600 >= 351:
        revert with 0, 'HEX: Lobbies have ended'
    if not msg.value:
        revert with 0, 'HEX: Amount required'
    xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][msg.sender].field_40 = xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][msg.sender].field_40 + 1 % 1099511627776
    xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][msg.sender][1][xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][msg.sender].field_0].field_0 = Mask(96, 0, msg.value)
    xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][msg.sender][1][xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][msg.sender].field_0].field_96 = arg1
    xfLobby[block.timestamp - (437592 * 24 * 3600) / 24 * 3600] += msg.value
    emit XfLobbyEnter(uint256 arg1, address arg2, uint256 arg3, address arg4):
                      0,
                      Mask(96, 0, msg.value),
                      block.timestamp % 1099511627776,
                      msg.sender,
                      block.timestamp - (437592 * 24 * 3600) / 24 * 3600 << 40 or xfLobbyEntry[block.timestamp - (437592 * 24 * 3600) / 24 * 3600][msg.sender].field_40,
                      arg1,
}

function btcAddressIsValid(bytes20 arg1, uint256 arg2, bytes32[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require arg3.length
    if Mask(51, 45, mem[128]) != 0:
        revert with 0, 'HEX: proof invalid'
    idx = 1
    while idx < arg3.length:
        require idx < arg3.length
        if 0 == Mask(51, 45, mem[(32 * idx) + 128]):
            revert with 0, 'HEX: proof invalid'
        idx = idx + 1
        continue 
    idx = 0
    s = arg2 or Mask(160, 96, arg1)
    while idx < arg3.length:
        require idx < mem[96]
        _44 = mem[(32 * idx) + 128]
        if s >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _46 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_46 + 32 len mem[_46]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _44
        _50 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_50 + 32 len mem[_50]])
        continue 
    return (0x4e831acb4223b66de3b3d2e54a2edeefb0de3d7916e2886a4b134d9764d41bec == s)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6d45524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6445524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function btcAddressIsClaimable(bytes20 arg1, uint256 arg2, bytes32[] arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if block.timestamp - (437592 * 24 * 3600) / 24 * 3600 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734845583a20436c61696d20706861736520686173206e6f742079657420737461727465,
                    mem[200 len 28]
    if block.timestamp - (437592 * 24 * 3600) / 24 * 3600 >= 351:
        revert with 0, 'HEX: Claim phase has ended'
    mem[0] = Mask(160, 96, arg1)
    mem[32] = 5
    if stor5[Mask(160, 96, arg1)]:
        return 0
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    require arg3.length
    if Mask(51, 45, mem[128]) != 0:
        revert with 0, 'HEX: proof invalid'
    idx = 1
    while idx < arg3.length:
        require idx < arg3.length
        if 0 == Mask(51, 45, mem[(32 * idx) + 128]):
            revert with 0, 'HEX: proof invalid'
        idx = idx + 1
        continue 
    idx = 0
    s = arg2 or Mask(160, 96, arg1)
    while idx < arg3.length:
        require idx < mem[96]
        _51 = mem[(32 * idx) + 128]
        if s >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _53 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_53 + 32 len mem[_53]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _51
        _57 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        idx = idx + 1
        s = sha3(mem[_57 + 32 len mem[_57]])
        continue 
    return (0x4e831acb4223b66de3b3d2e54a2edeefb0de3d7916e2886a4b134d9764d41bec == s)
}

function dailyDataRange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'HEX: range invalid'
    if arg2 > uint16(stor4.field_0):
        revert with 0, 'HEX: range invalid'
    mem[96] = arg2 - arg1
    if not arg2 - arg1:
        require var11002 < arg2 - arg1
        mem[(32 * var13001) + 128] = var13003
        if var13006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var15002 < arg2 - arg1
        mem[(32 * var17001) + 128] = var17003
        if var17006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var19002 < arg2 - arg1
        mem[(32 * var21001) + 128] = var21003
        if var21006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var23002 < arg2 - arg1
        mem[(32 * var25001) + 128] = var25003
        if var25006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var27002 < arg2 - arg1
        mem[(32 * var29001) + 128] = var29003
        if var29006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var31002 < arg2 - arg1
        mem[(32 * var33001) + 128] = var33003
        if var33006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var35002 < arg2 - arg1
        mem[(32 * var37001) + 128] = var37003
        if var37006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var39002 < arg2 - arg1
        mem[(32 * var41001) + 128] = var41003
        if var41006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var43002 < arg2 - arg1
        mem[(32 * var45001) + 128] = var45003
        if var45006 + 1 < arg2:
            require var47002 < arg2 - arg1
            # nil
        else:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
    else:
        mem[128 len 32 * arg2 - arg1] = code.data[20989 len 32 * arg2 - arg1]
        require var12002 < arg2 - arg1
        mem[(32 * var14001) + 128] = var14003
        if var14006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var16002 < arg2 - arg1
        mem[(32 * var18001) + 128] = var18003
        if var18006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var20002 < arg2 - arg1
        mem[(32 * var22001) + 128] = var22003
        if var22006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var24002 < arg2 - arg1
        mem[(32 * var26001) + 128] = var26003
        if var26006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var28002 < arg2 - arg1
        mem[(32 * var30001) + 128] = var30003
        if var30006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var32002 < arg2 - arg1
        mem[(32 * var34001) + 128] = var34003
        if var34006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var36002 < arg2 - arg1
        mem[(32 * var38001) + 128] = var38003
        if var38006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var40002 < arg2 - arg1
        mem[(32 * var42001) + 128] = var42003
        if var42006 + 1 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var44002 < arg2 - arg1
        mem[(32 * var46001) + 128] = var46003
        if var46006 + 1 < arg2:
            require var48002 < arg2 - arg1
            # nil
        else:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
}

function xfLobbyRange(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        revert with 0, 'HEX: invalid range'
    if arg2 > 351:
        revert with 0, 'HEX: invalid range'
    if arg2 > block.timestamp - (437592 * 24 * 3600) / 24 * 3600:
        revert with 0, 'HEX: invalid range'
    mem[96] = arg2 - arg1
    if not arg2 - arg1:
        require var15001 < arg2 - arg1
        mem[(32 * var17001) + 128] = var17003
        if var17005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var19001 < arg2 - arg1
        mem[(32 * var21001) + 128] = var21003
        if var21005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var23001 < arg2 - arg1
        mem[(32 * var25001) + 128] = var25003
        if var25005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var27001 < arg2 - arg1
        mem[(32 * var29001) + 128] = var29003
        if var29005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var31001 < arg2 - arg1
        mem[(32 * var33001) + 128] = var33003
        if var33005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var35001 < arg2 - arg1
        mem[(32 * var37001) + 128] = var37003
        if var37005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var39001 < arg2 - arg1
        mem[(32 * var41001) + 128] = var41003
        if var41005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var43001 < arg2 - arg1
        mem[(32 * var45001) + 128] = var45003
        if var45005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var47001 < arg2 - arg1
        mem[(32 * var49001) + 128] = var49003
        if var49005 < arg2:
            require var51001 < arg2 - arg1
            # nil
        else:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
    else:
        mem[128 len 32 * arg2 - arg1] = code.data[20989 len 32 * arg2 - arg1]
        require var16001 < arg2 - arg1
        mem[(32 * var18001) + 128] = var18003
        if var18005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var20001 < arg2 - arg1
        mem[(32 * var22001) + 128] = var22003
        if var22005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var24001 < arg2 - arg1
        mem[(32 * var26001) + 128] = var26003
        if var26005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var28001 < arg2 - arg1
        mem[(32 * var30001) + 128] = var30003
        if var30005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var32001 < arg2 - arg1
        mem[(32 * var34001) + 128] = var34003
        if var34005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var36001 < arg2 - arg1
        mem[(32 * var38001) + 128] = var38003
        if var38005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var40001 < arg2 - arg1
        mem[(32 * var42001) + 128] = var42003
        if var42005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var44001 < arg2 - arg1
        mem[(32 * var46001) + 128] = var46003
        if var46005 >= arg2:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
        require var48001 < arg2 - arg1
        mem[(32 * var50001) + 128] = var50003
        if var50005 < arg2:
            require var52001 < arg2 - arg1
            # nil
        else:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            mem[(32 * arg2 - arg1) + 192 len floor32(arg2 - arg1)] = mem[128 len floor32(arg2 - arg1)]
            return memory
              from (32 * arg2 - arg1) + 128
               len (96 * arg2) + (-96 * arg1) + 64
}

function claimMessageMatchesSignature(address arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, uint8 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    if arg6 < 27:
        revert with 0, 'HEX: v invalid'
    if arg6 > 30:
        revert with 0, 'HEX: v invalid'
    mem[128] = arg3
    mem[160] = arg4
    mem[96] = 64
    if bool(arg5):
        mem[192] = 22
        mem[224] = 0x436c61696d5f426974636f696e4845585f746f5f307800000000000000000000
        mem[256] = 40
        mem[64] = 352
        mem[288 len 40] = code.data[20989 len 40]
        idx = 0
        s = 0
        while idx < 20:
            require Mask(4, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 260 < 16
            require s < 40
            mem[s + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            require Mask(4, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 < 16
            require s + 1 < 40
            mem[s + 289 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 2
            continue 
        if Mask(1, 4, arg5):
            if not arg2:
                hash = sha256hash(0, 0x426974636f696e205369676e6564204d, 0, 0x436c61696d5f426974636f69, mem[288 len 16], mem[304 len 16], mem[464 len 8]) 
            else:
                mem[384 len 24] = code.data[20989 len 24]
                idx = 0
                s = 0
                while idx < 12:
                    require Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 260 < 16
                    require s < 24
                    mem[s + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    require Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256 < 16
                    require s + 1 < 24
                    mem[s + 385 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    s = s + 2
                    continue 
                mem[474 len 0] = None
                mem[474] = 0, mem[505 len 1] or 0x436c61696d5f426974636f696e4845585f746f5f307800000000000000000000
                var35001 = 384
                var35002 = 537
                hash = sha256hash(0, 0x426974636f696e205369676e6564204d, 0, mem[474 len 22], mem[288], mem[528 len 8], 0, 0, 0, mem[392 len 16]) 
        else:
            _18 = sha3(mem[288 len 40])
            idx = 0
            s = 0
            while idx < 20:
                require s < mem[256]
                if Mask(8, 248, mem[s + 288]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(4, -(('mask_shl', 256, 0, -3, ('var', '_18')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('var', '_18')), 0) - 260 >= 8:
                        require s < mem[256]
                        mem[s + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', 14474011154664524427946373126085988481658748083205070504932198000989141204992, ('mask_shl', 8, 248, 0, ('mem', ('range', ('add', 288, ('var', 1)), 32))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', 14474011154664524427946373126085988481658748083205070504932198000989141204992, ('mask_shl', 8, 248, 0, ('mem', ('range', ('add', 288, ('var', 1)), 32))))), 0) - 256
                require s + 1 < mem[256]
                if Mask(8, 248, mem[s + 289]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(4, -(('mask_shl', 256, 0, -3, ('var', '_18')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('var', '_18')), 0) - 256 >= 8:
                        require s + 1 < mem[256]
                        mem[s + 289 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', 14474011154664524427946373126085988481658748083205070504932198000989141204992, ('mask_shl', 8, 248, 0, ('mem', ('range', ('add', 289, ('var', 1)), 32))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', 14474011154664524427946373126085988481658748083205070504932198000989141204992, ('mask_shl', 8, 248, 0, ('mem', ('range', ('add', 289, ('var', 1)), 32))))), 0) - 256
                idx = idx + 1
                s = s + 2
                continue 
            if not arg2:
                _144 = mem[192]
                _145 = mem[64]
                mem[mem[64] + 32] = 0x1800000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 33] = 0x426974636f696e205369676e6564204d6573736167653a0a0000000000000000
                mem[mem[64] + 57] = _144 + 40 << 248
                _146 = mem[192]
                mem[mem[64] + 58 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
                mem[mem[64] + floor32(mem[192]) + 58] = 256^(-(mem[192] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[192]) + 58] or mem[floor32(mem[192]) + 224] and !(256^(-(mem[192] % 32) + 32) - 1)
                _369 = mem[256]
                mem[mem[64] + _146 + 58 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[mem[64] + _146 + floor32(mem[256]) + -(mem[256] % 32) + 90 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
                _647 = mem[64]
                mem[mem[64]] = _369 + _146 + 26
                mem[64] = _369 + mem[64] + _146 + 58
                _692 = mem[_647]
                mem[_369 + _145 + _146 + 58 len floor32(mem[_647])] = mem[_647 + 32 len floor32(mem[_647])]
                mem[_369 + _145 + _146 + floor32(mem[_647]) + 58] = 256^(-(mem[_647] % 32) + 32) - 1 and mem[_369 + _145 + _146 + floor32(mem[_647]) + 58] or mem[_647 + floor32(mem[_647]) + 32] and !(256^(-(mem[_647] % 32) + 32) - 1)
                hash = sha256hash(mem[_369 + _145 + _146 + 58 len _692]) 
            else:
                _143 = mem[64]
                mem[mem[64]] = 24
                mem[64] = mem[64] + 64
                mem[_143 + 32 len 24] = code.data[20989 len 24]
                idx = 0
                s = 0
                while idx < 12:
                    require Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 260 < 16
                    require s < mem[_143]
                    mem[s + _143 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    require Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256 < 16
                    require s + 1 < mem[_143]
                    mem[s + _143 + 33 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    s = s + 2
                    continue 
                _383 = mem[192]
                _384 = mem[64]
                mem[mem[64] + 32] = 0x1800000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 33] = 0x426974636f696e205369676e6564204d6573736167653a0a0000000000000000
                mem[mem[64] + 57] = _383 + 65 << 248
                _385 = mem[192]
                mem[mem[64] + 58 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
                mem[mem[64] + floor32(mem[192]) + 58] = 256^(-(mem[192] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[192]) + 58] or mem[floor32(mem[192]) + 224] and !(256^(-(mem[192] % 32) + 32) - 1)
                _643 = mem[256]
                mem[mem[64] + _385 + 58 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[mem[64] + _385 + floor32(mem[256]) + -(mem[256] % 32) + 90 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
                mem[_643 + mem[64] + _385 + 58] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                _879 = mem[_143]
                mem[_643 + mem[64] + _385 + 59 len floor32(mem[_143])] = mem[_143 + 32 len floor32(mem[_143])]
                mem[_643 + mem[64] + _385 + floor32(mem[_143]) + -(mem[_143] % 32) + 91 len mem[_143] % 32] = mem[_143 + floor32(mem[_143]) + -(mem[_143] % 32) + 64 len mem[_143] % 32]
                _1065 = mem[64]
                mem[mem[64]] = _879 + _643 + _384 + _385 + -mem[64] + 27
                mem[64] = _879 + _643 + _384 + _385 + 59
                _1092 = mem[_1065]
                mem[_879 + _643 + _384 + _385 + 59 len floor32(mem[_1065])] = mem[_1065 + 32 len floor32(mem[_1065])]
                mem[_879 + _643 + _384 + _385 + floor32(mem[_1065]) + 59] = 256^(-(mem[_1065] % 32) + 32) - 1 and mem[_879 + _643 + _384 + _385 + floor32(mem[_1065]) + 59] or mem[_1065 + floor32(mem[_1065]) + 32] and !(256^(-(mem[_1065] % 32) + 32) - 1)
                hash = sha256hash(mem[_879 + _643 + _384 + _385 + 59 len _1092]) 
    else:
        mem[192] = 15
        mem[224] = 0x436c61696d5f4845585f746f5f30780000000000000000000000000000000000
        mem[256] = 40
        mem[64] = 352
        mem[288 len 40] = code.data[20989 len 40]
        idx = 0
        s = 0
        while idx < 20:
            require Mask(4, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 260, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 260 < 16
            require s < 40
            mem[s + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            require Mask(4, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 < 16
            require s + 1 < 40
            mem[s + 289 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 2
            continue 
        if Mask(1, 4, arg5):
            if not arg2:
                hash = sha256hash(0, 0x426974636f696e205369676e6564204d, 0, 0, mem[288 len 23], mem[311 len 9], mem[457 len 8]) 
            else:
                mem[384 len 24] = code.data[20989 len 24]
                idx = 0
                s = 0
                while idx < 12:
                    require Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 260 < 16
                    require s < 24
                    mem[s + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    require Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256 < 16
                    require s + 1 < 24
                    mem[s + 385 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    s = s + 2
                    continue 
                mem[474 len 0] = None
                mem[474] = 0, mem[505 len 1] or 0x436c61696d5f4845585f746f5f30780000000000000000000000000000000000
                var35001 = 384
                var35002 = 530
                hash = sha256hash(0, 0x426974636f696e205369676e6564204d, 0, mem[474 len 15], mem[288], mem[521 len 8], 0, 0, mem[392 len 6], mem[398 len 10]) 
        else:
            _21 = sha3(mem[288 len 40])
            idx = 0
            s = 0
            while idx < 20:
                require s < mem[256]
                if Mask(8, 248, mem[s + 288]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(4, -(('mask_shl', 256, 0, -3, ('var', '_21')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('var', '_21')), 0) - 260 >= 8:
                        require s < mem[256]
                        mem[s + 288 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', 14474011154664524427946373126085988481658748083205070504932198000989141204992, ('mask_shl', 8, 248, 0, ('mem', ('range', ('add', 288, ('var', 1)), 32))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', 14474011154664524427946373126085988481658748083205070504932198000989141204992, ('mask_shl', 8, 248, 0, ('mem', ('range', ('add', 288, ('var', 1)), 32))))), 0) - 256
                require s + 1 < mem[256]
                if Mask(8, 248, mem[s + 289]) >= 0x6100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(4, -(('mask_shl', 256, 0, -3, ('var', '_21')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('var', '_21')), 0) - 256 >= 8:
                        require s + 1 < mem[256]
                        mem[s + 289 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', 14474011154664524427946373126085988481658748083205070504932198000989141204992, ('mask_shl', 8, 248, 0, ('mem', ('range', ('add', 289, ('var', 1)), 32))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', 14474011154664524427946373126085988481658748083205070504932198000989141204992, ('mask_shl', 8, 248, 0, ('mem', ('range', ('add', 289, ('var', 1)), 32))))), 0) - 256
                idx = idx + 1
                s = s + 2
                continue 
            if not arg2:
                _153 = mem[192]
                _154 = mem[64]
                mem[mem[64] + 32] = 0x1800000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 33] = 0x426974636f696e205369676e6564204d6573736167653a0a0000000000000000
                mem[mem[64] + 57] = _153 + 40 << 248
                _155 = mem[192]
                mem[mem[64] + 58 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
                mem[mem[64] + floor32(mem[192]) + 58] = 256^(-(mem[192] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[192]) + 58] or mem[floor32(mem[192]) + 224] and !(256^(-(mem[192] % 32) + 32) - 1)
                _381 = mem[256]
                mem[mem[64] + _155 + 58 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[mem[64] + _155 + floor32(mem[256]) + -(mem[256] % 32) + 90 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
                _663 = mem[64]
                mem[mem[64]] = _381 + _155 + 26
                mem[64] = _381 + mem[64] + _155 + 58
                _694 = mem[_663]
                mem[_381 + _154 + _155 + 58 len floor32(mem[_663])] = mem[_663 + 32 len floor32(mem[_663])]
                mem[_381 + _154 + _155 + floor32(mem[_663]) + 58] = 256^(-(mem[_663] % 32) + 32) - 1 and mem[_381 + _154 + _155 + floor32(mem[_663]) + 58] or mem[_663 + floor32(mem[_663]) + 32] and !(256^(-(mem[_663] % 32) + 32) - 1)
                hash = sha256hash(mem[_381 + _154 + _155 + 58 len _694]) 
            else:
                _152 = mem[64]
                mem[mem[64]] = 24
                mem[64] = mem[64] + 64
                mem[_152 + 32 len 24] = code.data[20989 len 24]
                idx = 0
                s = 0
                while idx < 12:
                    require Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 260, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 260 < 16
                    require s < mem[_152]
                    mem[s + _152 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    require Mask(4, -(('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('param', 'arg2')), 0) - 256 < 16
                    require s + 1 < mem[_152]
                    mem[s + _152 + 33 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    s = s + 2
                    continue 
                _386 = mem[192]
                _387 = mem[64]
                mem[mem[64] + 32] = 0x1800000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 33] = 0x426974636f696e205369676e6564204d6573736167653a0a0000000000000000
                mem[mem[64] + 57] = _386 + 65 << 248
                _388 = mem[192]
                mem[mem[64] + 58 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
                mem[mem[64] + floor32(mem[192]) + 58] = 256^(-(mem[192] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[192]) + 58] or mem[floor32(mem[192]) + 224] and !(256^(-(mem[192] % 32) + 32) - 1)
                _659 = mem[256]
                mem[mem[64] + _388 + 58 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[mem[64] + _388 + floor32(mem[256]) + -(mem[256] % 32) + 90 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
                mem[_659 + mem[64] + _388 + 58] = 0x5f00000000000000000000000000000000000000000000000000000000000000
                _895 = mem[_152]
                mem[_659 + mem[64] + _388 + 59 len floor32(mem[_152])] = mem[_152 + 32 len floor32(mem[_152])]
                mem[_659 + mem[64] + _388 + floor32(mem[_152]) + -(mem[_152] % 32) + 91 len mem[_152] % 32] = mem[_152 + floor32(mem[_152]) + -(mem[_152] % 32) + 64 len mem[_152] % 32]
                _1077 = mem[64]
                mem[mem[64]] = _895 + _659 + _387 + _388 + -mem[64] + 27
                mem[64] = _895 + _659 + _387 + _388 + 59
                _1099 = mem[_1077]
                mem[_895 + _659 + _387 + _388 + 59 len floor32(mem[_1077])] = mem[_1077 + 32 len floor32(mem[_1077])]
                mem[_895 + _659 + _387 + _388 + floor32(mem[_1077]) + 59] = 256^(-(mem[_1077] % 32) + 32) - 1 and mem[_895 + _659 + _387 + _388 + floor32(mem[_1077]) + 59] or mem[_1077 + floor32(mem[_1077]) + 32] and !(256^(-(mem[_1077] % 32) + 32) - 1)
                hash = sha256hash(mem[_895 + _659 + _387 + _388 + 59 len _1099]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    hash = sha256hash(hash) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    signer = erecover(hash, arg6 << 248, arg7, arg8) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == address(sha3(arg3, arg4)))
}



}
