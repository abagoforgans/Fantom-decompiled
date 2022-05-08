contract main {




// =====================  Runtime code  =====================


#
#  - callFinalizeDG()
#  - checkTotalEthraisedOfPresale(address arg1)
#  - platformCallsFinalizeRefund(address arg1)
#  - voterCallsFinalizeRefund(address arg1)
#
address team_accAddress;
address platformAirdropAddress;
address owner;
address voterAddress;
uint256 presaleFees;
uint256 whitelistFees;
uint256 minUniPercentage;
address presaleDappAddr;
address tokenDappAddr;
address filterAddress;
uint256 totalRaisedOnPlatform;
uint256 totalRefundedFromPlatform;
uint256 deltaStartEndTime;
uint256 tokenFee;
address UNISWAP_ADDRESS;
address factoryAddress;
mapping of struct presales;
mapping of address presaleOwners;
mapping of address tokenAddrToOwnerAddr;
mapping of address presaleAddrToOwnerAddr;
mapping of uint256 presaleOwnerToIndex;
mapping of uint256 tokenAddrToIndex;
uint256 numberOfPresaleOwners;
mapping of uint8 stor24;
uint8 stor25;

function getNumberOfPresaleOwners() {
    return numberOfPresaleOwners
}

function finalizeBlocked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor24[arg1])
}

function creationEnabled() {
    return bool(stor25)
}

function minUniPercentage() {
    return minUniPercentage
}

function tokenDappAddr() {
    return tokenDappAddr
}

function deltaStartEndTime() {
    return deltaStartEndTime
}

function tokenAddrToIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenAddrToIndex[arg1]
}

function tokenFee() {
    return tokenFee
}

function voter() {
    return voterAddress
}

function presaleFees() {
    return presaleFees
}

function presaleOwnerToIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presaleOwnerToIndex[arg1]
}

function FilterAddress() {
    return filterAddress
}

function whitelistFees() {
    return whitelistFees
}

function presaleOwners(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(presaleOwners[arg1])
}

function presaleDappAddr() {
    return presaleDappAddr
}

function team_acc() {
    return team_accAddress
}

function owner() {
    return owner
}

function factoryAddress() {
    return factoryAddress
}

function presaleAddrToOwnerAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presaleAddrToOwnerAddr[arg1]
}

function totalRaisedOnPlatform() {
    return totalRaisedOnPlatform
}

function tokenAddrToOwnerAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenAddrToOwnerAddr[arg1]
}

function totalRefundedFromPlatform() {
    return totalRefundedFromPlatform
}

function PlatformAirdropAddress() {
    return platformAirdropAddress
}

function UNISWAP_ADDRESS() {
    return UNISWAP_ADDRESS
}

function presales(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(presales[arg1].field_0), 
           presales[arg1].field_256,
           presales[arg1].field_512,
           presales[arg1].field_768,
           presales[arg1].field_1024,
           presales[arg1].field_1280,
           bool(presales[arg1].field_1440),
           presales[arg1].field_1536,
           presales[arg1].field_1792,
           presales[arg1].field_2048,
           presales[arg1].field_2304,
           presales[arg1].field_2560,
           presales[arg1].field_2816,
           presales[arg1].field_3072
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changePresaleFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    presaleFees = arg1
}

function changeWhitelistFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    whitelistFees = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ChangeVoterAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    voterAddress = arg1
}

function ChangeTeamAcc(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    team_accAddress = arg1
}

function ChangeFilterAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    filterAddress = arg1
}

function updatePresaleDapp(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if not arg1:
        revert with 0, 'presale dapp cant be 0x0'
    presaleDappAddr = arg1
}

function disableWhitelist() {
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    mem[132] = 0, mem[132 len 28]
    call presales[msg.sender].field_1024.mem[132 len 4] with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Whitelist disablement failed'
}

function sub_07fd53e8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    require ext_code.size(presales[address(arg1)].field_2304)
    call presales[address(arg1)].field_2304.0xdac7decf with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeRouterAndFactoryAddr(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    if not arg1:
        revert with 0, 'router address cant be 0x0!'
    if not arg2:
        revert with 0, 'factory address cant be 0x0!'
    UNISWAP_ADDRESS = arg1
    factoryAddress = arg2
}

function enableWhitelist() payable {
    if msg.value < whitelistFees:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'msg.value must be >= whitelist fees!'
    call team_accAddress with:
       value whitelistFees wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    mem[132] = 0, mem[132 len 28]
    call presales[msg.sender].field_1024.mem[132 len 4] with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Whitelist enablement failed'
}

function AddToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 17
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    idx = 0
    while idx < arg1.length:
        mem[0] = msg.sender
        mem[32] = 17
        require idx < mem[96]
        _56 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        _57 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_57 + 32] = 0xe43252d700000000000000000000000000000000000000000000000000000000 or mem[_57 + 36 len 28]
        _60 = mem[_57]
        s = 0
        while s < _60:
            mem[s + _56 + 68] = mem[s + _57 + 32]
            s = s + 32
            continue 
        if ceil32(_60) <= _60:
            call presales[msg.sender].field_1024.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _60 + _56 + -mem[64] + 64]
            if return_data.size:
                _77 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_77] = return_data.size
                mem[_77 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_60 + _56 + 68] = 0
            call presales[msg.sender].field_1024.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _60 + _56 + -mem[64] + 64]
            if return_data.size:
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_78] = return_data.size
                mem[_78 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Whitelist addition failed'
        idx = idx + 1
        continue 
}

function RemoveFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 17
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    idx = 0
    while idx < arg1.length:
        mem[0] = msg.sender
        mem[32] = 17
        require idx < mem[96]
        _56 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        _57 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_57 + 32] = 0x8ab1d68100000000000000000000000000000000000000000000000000000000 or mem[_57 + 36 len 28]
        _60 = mem[_57]
        s = 0
        while s < _60:
            mem[s + _56 + 68] = mem[s + _57 + 32]
            s = s + 32
            continue 
        if ceil32(_60) <= _60:
            call presales[msg.sender].field_1024.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _60 + _56 + -mem[64] + 64]
            if return_data.size:
                _77 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_77] = return_data.size
                mem[_77 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_60 + _56 + 68] = 0
            call presales[msg.sender].field_1024.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _60 + _56 + -mem[64] + 64]
            if return_data.size:
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_78] = return_data.size
                mem[_78 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Whitelist removal failed'
        idx = idx + 1
        continue 
}

function CreatePresaleDep(string[10] arg1, address arg2, uint256[4] arg3, uint256[6] arg4, uint256[3] arg5) payable {
    require calldata.size - 4 >= 480
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    mem[64] = 416
    idx = 0
    s = arg1 + 4
    t = 96
    while idx < 10:
        require arg1 + cd[s] + 35 < calldata.size
        require cd[(arg1 + cd[s] + 4)] <= test266151307()
        _3 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + 4)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + 4)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + 4)]) + 32
        mem[_3] = cd[(arg1 + cd[s] + 4)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 4)] + 36 <= calldata.size
        mem[_3 + 32 len cd[(arg1 + cd[s] + 4)]] = call.data[arg1 + cd[s] + 36 len cd[(arg1 + cd[s] + 4)]]
        mem[_3 + cd[(arg1 + cd[s] + 4)] + 32] = 0
        mem[t] = _3
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    require 99 < calldata.size
    _4 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    require 196 <= calldata.size
    idx = 0
    s = 68
    t = _4
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 227 < calldata.size
    _5 = mem[64]
    require mem[64] + 192 >= mem[64] and mem[64] + 192 <= test266151307()
    mem[64] = mem[64] + 192
    require 388 <= calldata.size
    idx = 0
    s = 196
    t = _5
    while idx < 6:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 419 < calldata.size
    _6 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    require 484 <= calldata.size
    idx = 0
    s = 388
    t = _6
    while idx < 3:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 17
    if presales[msg.sender].field_0:
        revert with 0, 'User already made a presale'
    if block.timestamp >= mem[_4]:
        revert with 0, 'start time not in future'
    if deltaStartEndTime + mem[_4] < mem[_4]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_4 + 32] > deltaStartEndTime + mem[_4]:
        revert with 0, 'presale duration exceeds limit'
    _17 = mem[_5]
    _19 = mem[64]
    mem[64] = mem[64] + 64
    mem[_19] = 26
    mem[_19 + 32] = 'SafeMath: division by zero'
    if mem[_5] < _17 / 2:
        revert with 0, 'scap must be atleast half of hcap!'
    if not mem[_5 + 96]:
        revert with 0, 'min cont must be > 0'
    if mem[_5 + 128] < mem[_5 + 96]:
        revert with 0, 'max cont must be >= min cont'
    _29 = mem[64]
    mem[64] = mem[64] + 64
    mem[_29 len 64] = call.data[calldata.size len 64]
    _31 = mem[64]
    mem[64] = mem[64] + 64
    mem[_31] = mem[_4]
    mem[_31 + 32] = mem[_4 + 32]
    if msg.value < presaleFees:
        revert with 0, 'msg.value must be >= presale_fees!'
    call team_accAddress with:
       value presaleFees wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_4] + 600 < mem[_4]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_4] + 600 > mem[_4 + 32]:
        revert with 0, 'presale period less than minimum'
    if mem[_4 + 32] + 600 < mem[_4 + 32]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_6] <= mem[_4 + 32] + 600:
        revert with 0, 'Lock time must be higher than presale end time'
    if mem[_6 + 64] <= minUniPercentage:
        revert with 0, 'Uniswap percentage is lower than min threshold'
    _50 = mem[64]
    mem[mem[64] len 5229] = code.data[15032 len 5229]
    mem[mem[64] + 5229] = 64
    idx = 0
    s = 96
    t = mem[64] + 5293
    u = mem[64] + 5613
    while idx < 10:
        mem[t] = u + -_50 - 5293
        _57 = mem[s]
        _59 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _59:
            mem[v + u + 32] = mem[v + _57 + 32]
            v = v + 32
            continue 
        if ceil32(_59) > _59:
            mem[_59 + u + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_59) + u + 32
        continue 
    mem[_50 + 5261] = msg.sender
    create contract with 0 wei
                    code: mem[mem[64] len u - mem[64]]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64]] = 0xf2fde38b00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _63 = mem[64]
    mem[64] = mem[64] + 448
    mem[_63] = 0
    mem[_63 + 32] = 0
    mem[_63 + 64] = 0
    mem[_63 + 96] = 0
    mem[_63 + 128] = 0
    mem[_63 + 160] = 0
    mem[_63 + 192] = 0
    mem[_63 + 224] = 0
    mem[_63 + 256] = 0
    mem[_63 + 288] = 0
    mem[_63 + 320] = 0
    mem[_63 + 352] = 0
    mem[_63 + 384] = 0
    mem[_63 + 416] = 0
    _64 = mem[64]
    mem[64] = mem[64] + 448
    mem[_64] = 1
    mem[_64 + 32] = block.timestamp
    mem[_64 + 64] = address(create.new_address)
    mem[_64 + 96] = arg2
    mem[_64 + 128] = 0
    mem[_64 + 160] = 0
    mem[_64 + 192] = 1
    if mem[_4] > block.timestamp:
        mem[_64 + 224] = mem[_4]
        mem[_64 + 256] = mem[_4 + 32]
        mem[_64 + 288] = mem[_5 + 160]
        mem[_64 + 320] = 0
        mem[_64 + 352] = mem[_6 + 64]
        mem[_64 + 384] = mem[_6 + 32]
        mem[_64 + 416] = mem[_6]
        mem[0] = msg.sender
        mem[32] = 17
        presales[msg.sender].field_0 = 1
        presales[msg.sender].field_256 = block.timestamp
        presales[msg.sender].field_512 = address(create.new_address)
        presales[msg.sender].field_768 = arg2
        presales[msg.sender].field_1024 = 0
        presales[msg.sender].field_1280 = 0
        presales[msg.sender].field_1280 = 0
        presales[msg.sender].field_1440 = 1
        presales[msg.sender].field_1536 = 0
        presales[msg.sender].field_1536 = mem[_64 + 224]
        presales[msg.sender].field_1792 = mem[_64 + 256]
        presales[msg.sender].field_2048 = mem[_64 + 288]
        presales[msg.sender].field_2304 = 0
        presales[msg.sender].field_2560 = 0
        presales[msg.sender].field_2560 = mem[_64 + 352]
        presales[msg.sender].field_2816 = mem[_64 + 384]
        presales[msg.sender].field_3072 = mem[_64 + 416]
        _107 = mem[64]
        mem[64] = mem[64] + 96
        mem[_107 len 96] = call.data[calldata.size len 96]
        _109 = mem[64]
        mem[64] = mem[64] + 96
        mem[_109] = this.address
        mem[_109 + 32] = msg.sender
        mem[_109 + 64] = presales[msg.sender].field_768
        mem[0] = msg.sender
        mem[32] = 17
        _111 = mem[64]
        idx = 0
        s = _109
        t = mem[64] + 36
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 64] = mem[_31 len 64]
        mem[mem[64] + 196 len 192] = mem[_5 len 192]
        mem[mem[64] + 388] = presales[msg.sender].field_2560
        _128 = mem[64]
        mem[mem[64]] = 388
        mem[64] = mem[64] + 420
        mem[_128 + 35 len 1] = 0
        mem[_128 + 32 len 3] = 4329989
        _134 = mem[_128]
        mem[_111 + 420 len ceil32(mem[_128])] = mem[_128 + 32 len ceil32(mem[_128])]
        if ceil32(_134) <= _134:
            call presaleDappAddr with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _134 + _111 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require mem[96] >= 32
                _436 = mem[128]
                require mem[128] == mem[140 len 20]
                presales[msg.sender].field_1024 = mem[140 len 20]
                uint256(presaleOwners[stor23]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor23]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor17[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 4035] = code.data[20261 len 4035]
                mem[mem[64] + 4035] = presales[msg.sender].field_768
                mem[mem[64] + 4067] = msg.sender
                mem[mem[64] + 4099] = presales[msg.sender].field_3072
                mem[mem[64] + 4131] = UNISWAP_ADDRESS
                mem[mem[64] + 4163] = factoryAddress
                create contract with 0 wei
                                code: code.data[20261 len 4035], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, UNISWAP_ADDRESS, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_436)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 17
                _505 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _548 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_548 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _572 = mem[_548]
                mem[_505 + 132 len ceil32(mem[_548])] = mem[_548 + 32 len ceil32(mem[_548])]
                if ceil32(_572) > _572:
                    mem[_572 + _505 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _572 + _505 + -mem[64] + 128]
            else:
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_416] = return_data.size
                mem[_416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require return_data.size >= 32
                _438 = mem[_416 + 32]
                require mem[_416 + 32] == mem[_416 + 44 len 20]
                presales[msg.sender].field_1024 = mem[_416 + 44 len 20]
                uint256(presaleOwners[stor23]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor23]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor17[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 4035] = code.data[20261 len 4035]
                mem[mem[64] + 4035] = presales[msg.sender].field_768
                mem[mem[64] + 4067] = msg.sender
                mem[mem[64] + 4099] = presales[msg.sender].field_3072
                mem[mem[64] + 4131] = UNISWAP_ADDRESS
                mem[mem[64] + 4163] = factoryAddress
                create contract with 0 wei
                                code: code.data[20261 len 4035], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, UNISWAP_ADDRESS, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_438)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 17
                _511 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _551 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_551 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _573 = mem[_551]
                mem[_511 + 132 len ceil32(mem[_551])] = mem[_551 + 32 len ceil32(mem[_551])]
                if ceil32(_573) > _573:
                    mem[_573 + _511 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _573 + _511 + -mem[64] + 128]
        else:
            mem[_134 + _111 + 420] = 0
            call presaleDappAddr with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _134 + _111 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require mem[96] >= 32
                _440 = mem[128]
                require mem[128] == mem[140 len 20]
                presales[msg.sender].field_1024 = mem[140 len 20]
                uint256(presaleOwners[stor23]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor23]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor17[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 4035] = code.data[20261 len 4035]
                mem[mem[64] + 4035] = presales[msg.sender].field_768
                mem[mem[64] + 4067] = msg.sender
                mem[mem[64] + 4099] = presales[msg.sender].field_3072
                mem[mem[64] + 4131] = UNISWAP_ADDRESS
                mem[mem[64] + 4163] = factoryAddress
                create contract with 0 wei
                                code: code.data[20261 len 4035], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, UNISWAP_ADDRESS, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_440)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 17
                _517 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _554 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_554 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _574 = mem[_554]
                mem[_517 + 132 len ceil32(mem[_554])] = mem[_554 + 32 len ceil32(mem[_554])]
                if ceil32(_574) > _574:
                    mem[_574 + _517 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _574 + _517 + -mem[64] + 128]
            else:
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_417] = return_data.size
                mem[_417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require return_data.size >= 32
                _442 = mem[_417 + 32]
                require mem[_417 + 32] == mem[_417 + 44 len 20]
                presales[msg.sender].field_1024 = mem[_417 + 44 len 20]
                uint256(presaleOwners[stor23]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor23]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor17[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 4035] = code.data[20261 len 4035]
                mem[mem[64] + 4035] = presales[msg.sender].field_768
                mem[mem[64] + 4067] = msg.sender
                mem[mem[64] + 4099] = presales[msg.sender].field_3072
                mem[mem[64] + 4131] = UNISWAP_ADDRESS
                mem[mem[64] + 4163] = factoryAddress
                create contract with 0 wei
                                code: code.data[20261 len 4035], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, UNISWAP_ADDRESS, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_442)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 17
                _523 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _557 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_557 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _575 = mem[_557]
                mem[_523 + 132 len ceil32(mem[_557])] = mem[_557 + 32 len ceil32(mem[_557])]
                if ceil32(_575) > _575:
                    mem[_575 + _523 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _575 + _523 + -mem[64] + 128]
    else:
        mem[_64 + 224] = block.timestamp
        mem[_64 + 256] = mem[_4 + 32]
        mem[_64 + 288] = mem[_5 + 160]
        mem[_64 + 320] = 0
        mem[_64 + 352] = mem[_6 + 64]
        mem[_64 + 384] = mem[_6 + 32]
        mem[_64 + 416] = mem[_6]
        mem[0] = msg.sender
        mem[32] = 17
        presales[msg.sender].field_0 = 1
        presales[msg.sender].field_256 = block.timestamp
        presales[msg.sender].field_512 = address(create.new_address)
        presales[msg.sender].field_768 = arg2
        presales[msg.sender].field_1024 = 0
        presales[msg.sender].field_1280 = 0
        presales[msg.sender].field_1280 = 0
        presales[msg.sender].field_1440 = 1
        presales[msg.sender].field_1536 = 0
        presales[msg.sender].field_1536 = block.timestamp
        presales[msg.sender].field_1792 = mem[_64 + 256]
        presales[msg.sender].field_2048 = mem[_64 + 288]
        presales[msg.sender].field_2304 = 0
        presales[msg.sender].field_2560 = 0
        presales[msg.sender].field_2560 = mem[_64 + 352]
        presales[msg.sender].field_2816 = mem[_64 + 384]
        presales[msg.sender].field_3072 = mem[_64 + 416]
        _108 = mem[64]
        mem[64] = mem[64] + 96
        mem[_108 len 96] = call.data[calldata.size len 96]
        _112 = mem[64]
        mem[64] = mem[64] + 96
        mem[_112] = this.address
        mem[_112 + 32] = msg.sender
        mem[_112 + 64] = presales[msg.sender].field_768
        mem[0] = msg.sender
        mem[32] = 17
        _114 = mem[64]
        idx = 0
        s = _112
        t = mem[64] + 36
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 64] = mem[_31 len 64]
        mem[mem[64] + 196 len 192] = mem[_5 len 192]
        mem[mem[64] + 388] = presales[msg.sender].field_2560
        _131 = mem[64]
        mem[mem[64]] = 388
        mem[64] = mem[64] + 420
        mem[_131 + 35 len 1] = 0
        mem[_131 + 32 len 3] = 4329989
        _135 = mem[_131]
        mem[_114 + 420 len ceil32(mem[_131])] = mem[_131 + 32 len ceil32(mem[_131])]
        if ceil32(_135) <= _135:
            call presaleDappAddr with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _135 + _114 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require mem[96] >= 32
                _444 = mem[128]
                require mem[128] == mem[140 len 20]
                presales[msg.sender].field_1024 = mem[140 len 20]
                uint256(presaleOwners[stor23]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor23]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor17[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 4035] = code.data[20261 len 4035]
                mem[mem[64] + 4035] = presales[msg.sender].field_768
                mem[mem[64] + 4067] = msg.sender
                mem[mem[64] + 4099] = presales[msg.sender].field_3072
                mem[mem[64] + 4131] = UNISWAP_ADDRESS
                mem[mem[64] + 4163] = factoryAddress
                create contract with 0 wei
                                code: code.data[20261 len 4035], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, UNISWAP_ADDRESS, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_444)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 17
                _529 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _560 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_560 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _576 = mem[_560]
                mem[_529 + 132 len ceil32(mem[_560])] = mem[_560 + 32 len ceil32(mem[_560])]
                if ceil32(_576) > _576:
                    mem[_576 + _529 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _576 + _529 + -mem[64] + 128]
            else:
                _418 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_418] = return_data.size
                mem[_418 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require return_data.size >= 32
                _446 = mem[_418 + 32]
                require mem[_418 + 32] == mem[_418 + 44 len 20]
                presales[msg.sender].field_1024 = mem[_418 + 44 len 20]
                uint256(presaleOwners[stor23]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor23]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor17[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 4035] = code.data[20261 len 4035]
                mem[mem[64] + 4035] = presales[msg.sender].field_768
                mem[mem[64] + 4067] = msg.sender
                mem[mem[64] + 4099] = presales[msg.sender].field_3072
                mem[mem[64] + 4131] = UNISWAP_ADDRESS
                mem[mem[64] + 4163] = factoryAddress
                create contract with 0 wei
                                code: code.data[20261 len 4035], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, UNISWAP_ADDRESS, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_446)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 17
                _535 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _563 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_563 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _577 = mem[_563]
                mem[_535 + 132 len ceil32(mem[_563])] = mem[_563 + 32 len ceil32(mem[_563])]
                if ceil32(_577) > _577:
                    mem[_577 + _535 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _577 + _535 + -mem[64] + 128]
        else:
            mem[_135 + _114 + 420] = 0
            call presaleDappAddr with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _135 + _114 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require mem[96] >= 32
                _448 = mem[128]
                require mem[128] == mem[140 len 20]
                presales[msg.sender].field_1024 = mem[140 len 20]
                uint256(presaleOwners[stor23]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor23]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor17[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 4035] = code.data[20261 len 4035]
                mem[mem[64] + 4035] = presales[msg.sender].field_768
                mem[mem[64] + 4067] = msg.sender
                mem[mem[64] + 4099] = presales[msg.sender].field_3072
                mem[mem[64] + 4131] = UNISWAP_ADDRESS
                mem[mem[64] + 4163] = factoryAddress
                create contract with 0 wei
                                code: code.data[20261 len 4035], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, UNISWAP_ADDRESS, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_448)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 17
                _541 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _566 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_566 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _578 = mem[_566]
                mem[_541 + 132 len ceil32(mem[_566])] = mem[_566 + 32 len ceil32(mem[_566])]
                if ceil32(_578) > _578:
                    mem[_578 + _541 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _578 + _541 + -mem[64] + 128]
            else:
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_419] = return_data.size
                mem[_419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require return_data.size >= 32
                _450 = mem[_419 + 32]
                require mem[_419 + 32] == mem[_419 + 44 len 20]
                presales[msg.sender].field_1024 = mem[_419 + 44 len 20]
                uint256(presaleOwners[stor23]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor23]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor17[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 4035] = code.data[20261 len 4035]
                mem[mem[64] + 4035] = presales[msg.sender].field_768
                mem[mem[64] + 4067] = msg.sender
                mem[mem[64] + 4099] = presales[msg.sender].field_3072
                mem[mem[64] + 4131] = UNISWAP_ADDRESS
                mem[mem[64] + 4163] = factoryAddress
                create contract with 0 wei
                                code: code.data[20261 len 4035], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, UNISWAP_ADDRESS, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_450)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 17
                _547 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _569 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_569 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _579 = mem[_569]
                mem[_547 + 132 len ceil32(mem[_569])] = mem[_569 + 32 len ceil32(mem[_569])]
                if ceil32(_579) > _579:
                    mem[_579 + _547 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _579 + _547 + -mem[64] + 128]
    if not ext_call.success:
        revert with 0, 'adding to Live Filter failed'
}



}
