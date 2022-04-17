contract main {




// =====================  Runtime code  =====================


#
#  - callFinalizeDG()
#  - checkTotalEthraisedOfPresale(address arg1)
#  - platformCallsFinalizeRefund(address arg1)
#  - voterCallsFinalizeRefund(address arg1)
#
const CheckBlockTimestamp = block.timestamp


address team_accAddress;
address platformAirdropAddress;
uint256 stor2;
address owner;
address voterAddress;
uint256 presale_security;
uint256 minUniPercentage;
address presaleDappAddr;
address tokenDappAddr;
address filterAddress;
uint256 totalRaisedOnPlatform;
uint256 totalRefundedFromPlatform;
uint256 tokenFee;
address sub_c7c65ce0Address;
address factoryAddress;
mapping of struct presales;
mapping of address presaleOwners;
mapping of address tokenAddrToOwnerAddr;
mapping of address presaleAddrToOwnerAddr;
mapping of uint256 presaleOwnerToIndex;
mapping of uint256 tokenAddrToIndex;
uint256 numberOfPresaleOwners;
mapping of uint8 stor22;

function getNumberOfPresaleOwners() {
    return numberOfPresaleOwners
}

function finalizeBlocked(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor22[arg1])
}

function minUniPercentage() {
    return minUniPercentage
}

function tokenDappAddr() {
    return tokenDappAddr
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

function presaleOwnerToIndex(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return presaleOwnerToIndex[arg1]
}

function FilterAddress() {
    return filterAddress
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

function sub_c7c65ce0(?) {
    return sub_c7c65ce0Address
}

function presale_security() {
    return presale_security
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

function changeFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    presale_security = arg1
}

function sub_390f5e83(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    stor22[address(arg1)] = 0
}

function sub_e417f381(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    stor22[address(arg1)] = 1
}

function sub_35c9f1d3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == voterAddress
    stor22[address(arg1)] = 0
}

function sub_94772729(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == voterAddress
    stor22[address(arg1)] = 1
}

function changeUniPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > 100:
        revert with 0, 'uniPer value outside range'
    minUniPercentage = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ChangeAirdropFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 > 100:
        revert with 0, 'out of range fee value'
    if arg1 == stor2:
        revert with 0, 'New fee is same as Old fee'
    stor2 = arg1
}

function ChangeVoterAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if voterAddress == arg1:
        revert with 0, 'New addr is same as Old Addr'
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    voterAddress = arg1
}

function ChangeFilterAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if filterAddress == arg1:
        revert with 0, 'New addr is same as Old Addr'
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    filterAddress = arg1
}

function ChangeTeamAcc(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if team_accAddress == arg1:
        revert with 0, 'New addr is same as Old Addr'
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    team_accAddress = arg1
}

function enableWhitelist() {
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    mem[132] = 0, mem[132 len 28]
    call presales[msg.sender].field_1024.mem[132 len 4] with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Whitelist enablement failed'
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

function ChangeAirdropAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    if platformAirdropAddress == arg1:
        revert with 0, 'New addr is same as Old Addr'
    if not arg1:
        revert with 0, 'New Addr cant be zero addr'
    platformAirdropAddress = arg1
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
    sub_c7c65ce0Address = arg1
    factoryAddress = arg2
}

function BlockLPWithdrawMainDapp(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(presales[address(arg1)].field_2304)
    call presales[address(arg1)].field_2304.0x7effa6e3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function UnBlockLPWithdrawMainDapp(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require ext_code.size(presales[address(arg1)].field_2304)
    call presales[address(arg1)].field_2304.0x7caa9fae with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function BlockLPWithdrawVoter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == voterAddress
    require ext_code.size(presales[address(arg1)].field_2304)
    call presales[address(arg1)].field_2304.0x7effa6e3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function UnBlockLPWithdrawVoter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == voterAddress
    require ext_code.size(presales[address(arg1)].field_2304)
    call presales[address(arg1)].field_2304.0x7caa9fae with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    mem[32] = 15
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    idx = 0
    while idx < arg1.length:
        mem[0] = msg.sender
        mem[32] = 15
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
    mem[32] = 15
    if not presales[msg.sender].field_0:
        revert with 0, 'user has no presale!'
    idx = 0
    while idx < arg1.length:
        mem[0] = msg.sender
        mem[32] = 15
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
    _7 = mem[64]
    mem[64] = mem[64] + 64
    mem[_7 len 64] = call.data[calldata.size len 64]
    _8 = mem[64]
    mem[64] = mem[64] + 64
    mem[_8] = mem[_4]
    mem[_8 + 32] = mem[_4 + 32]
    if msg.value < presale_security:
        revert with 0, 'msg.value must be >= presale_security Matic!'
    call team_accAddress with:
       value presale_security wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp + 600 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_4 + 32] < block.timestamp + 600:
        revert with 0, 'presale end time less than minimum threshold'
    if mem[_4] + 600 < mem[_4]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_4] + 600 > mem[_4 + 32]:
        revert with 0, 'presale period less than minimum'
    if mem[_4 + 32] + 600 < mem[_4 + 32]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_6] <= mem[_4 + 32] + 600:
        revert with 0, 'Lock time must be higher than presale end time'
    if 100 < mem[_5 + 160]:
        revert with 0, 'Governance amount is beyond range'
    if mem[_6 + 64] <= minUniPercentage:
        revert with 0, 'Uniswap percentage is lower than min threshold'
    if mem[_5 + 160] + mem[_6 + 64] < mem[_6 + 64]:
        revert with 0, 'SafeMath: addition overflow'
    if mem[_5 + 160] + mem[_6 + 64] > 100:
        revert with 0, 'gov plus uni % greater than 100'
    mem[0] = msg.sender
    mem[32] = 15
    if presales[msg.sender].field_0:
        revert with 0, 'User already made a presale'
    _43 = mem[64]
    mem[mem[64] len 5229] = code.data[16063 len 5229]
    mem[mem[64] + 5229] = 64
    idx = 0
    s = 96
    t = mem[64] + 5293
    u = mem[64] + 5613
    while idx < 10:
        mem[t] = u + -_43 - 5293
        _50 = mem[s]
        _52 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _52:
            mem[v + u + 32] = mem[v + _50 + 32]
            v = v + 32
            continue 
        if ceil32(_52) > _52:
            mem[_52 + u + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_52) + u + 32
        continue 
    mem[_43 + 5261] = msg.sender
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
    _56 = mem[64]
    mem[64] = mem[64] + 448
    mem[_56] = 0
    mem[_56 + 32] = 0
    mem[_56 + 64] = 0
    mem[_56 + 96] = 0
    mem[_56 + 128] = 0
    mem[_56 + 160] = 0
    mem[_56 + 192] = 0
    mem[_56 + 224] = 0
    mem[_56 + 256] = 0
    mem[_56 + 288] = 0
    mem[_56 + 320] = 0
    mem[_56 + 352] = 0
    mem[_56 + 384] = 0
    mem[_56 + 416] = 0
    _57 = mem[64]
    mem[64] = mem[64] + 448
    mem[_57] = 1
    mem[_57 + 32] = block.timestamp
    mem[_57 + 64] = address(create.new_address)
    mem[_57 + 96] = arg2
    mem[_57 + 128] = 0
    mem[_57 + 160] = 0
    mem[_57 + 192] = 1
    if mem[_4] > block.timestamp:
        mem[_57 + 224] = mem[_4]
        mem[_57 + 256] = mem[_4 + 32]
        mem[_57 + 288] = mem[_5 + 160]
        mem[_57 + 320] = 0
        mem[_57 + 352] = mem[_6 + 64]
        mem[_57 + 384] = mem[_6 + 32]
        mem[_57 + 416] = mem[_6]
        mem[0] = msg.sender
        mem[32] = 15
        presales[msg.sender].field_0 = 1
        presales[msg.sender].field_256 = block.timestamp
        presales[msg.sender].field_512 = address(create.new_address)
        presales[msg.sender].field_768 = arg2
        presales[msg.sender].field_1024 = 0
        presales[msg.sender].field_1280 = 0
        presales[msg.sender].field_1280 = 0
        presales[msg.sender].field_1440 = 1
        presales[msg.sender].field_1536 = 0
        presales[msg.sender].field_1536 = mem[_57 + 224]
        presales[msg.sender].field_1792 = mem[_57 + 256]
        presales[msg.sender].field_2048 = mem[_57 + 288]
        presales[msg.sender].field_2304 = 0
        presales[msg.sender].field_2560 = 0
        presales[msg.sender].field_2560 = mem[_57 + 352]
        presales[msg.sender].field_2816 = mem[_57 + 384]
        presales[msg.sender].field_3072 = mem[_57 + 416]
        _100 = mem[64]
        mem[64] = mem[64] + 96
        mem[_100 len 96] = call.data[calldata.size len 96]
        _102 = mem[64]
        mem[64] = mem[64] + 96
        mem[_102] = this.address
        mem[_102 + 32] = msg.sender
        mem[_102 + 64] = presales[msg.sender].field_768
        mem[0] = msg.sender
        mem[32] = 15
        _104 = mem[64]
        idx = 0
        s = _102
        t = mem[64] + 36
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 64] = mem[_8 len 64]
        mem[mem[64] + 196 len 192] = mem[_5 len 192]
        mem[mem[64] + 388] = presales[msg.sender].field_2560
        _121 = mem[64]
        mem[mem[64]] = 388
        mem[64] = mem[64] + 420
        mem[_121 + 35 len 1] = 0
        mem[_121 + 32 len 3] = 4329989
        _127 = mem[_121]
        mem[_104 + 420 len ceil32(mem[_121])] = mem[_121 + 32 len ceil32(mem[_121])]
        if ceil32(_127) <= _127:
            call presaleDappAddr with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _127 + _104 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require mem[96] >= 32
                _429 = mem[128]
                require mem[128] == mem[140 len 20]
                presales[msg.sender].field_1024 = mem[140 len 20]
                uint256(presaleOwners[stor21]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor21]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor15[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 3074] = code.data[21292 len 3074]
                mem[mem[64] + 3074] = presales[msg.sender].field_768
                mem[mem[64] + 3106] = msg.sender
                mem[mem[64] + 3138] = presales[msg.sender].field_3072
                mem[mem[64] + 3170] = sub_c7c65ce0Address
                mem[mem[64] + 3202] = factoryAddress
                create contract with 0 wei
                                code: code.data[21292 len 3074], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, sub_c7c65ce0Address, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_429)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 15
                _498 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _541 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_541 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _565 = mem[_541]
                mem[_498 + 132 len ceil32(mem[_541])] = mem[_541 + 32 len ceil32(mem[_541])]
                if ceil32(_565) > _565:
                    mem[_565 + _498 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _565 + _498 + -mem[64] + 128]
            else:
                _409 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_409] = return_data.size
                mem[_409 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require return_data.size >= 32
                _431 = mem[_409 + 32]
                require mem[_409 + 32] == mem[_409 + 44 len 20]
                presales[msg.sender].field_1024 = mem[_409 + 44 len 20]
                uint256(presaleOwners[stor21]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor21]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor15[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 3074] = code.data[21292 len 3074]
                mem[mem[64] + 3074] = presales[msg.sender].field_768
                mem[mem[64] + 3106] = msg.sender
                mem[mem[64] + 3138] = presales[msg.sender].field_3072
                mem[mem[64] + 3170] = sub_c7c65ce0Address
                mem[mem[64] + 3202] = factoryAddress
                create contract with 0 wei
                                code: code.data[21292 len 3074], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, sub_c7c65ce0Address, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_431)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 15
                _504 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _544 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_544 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _566 = mem[_544]
                mem[_504 + 132 len ceil32(mem[_544])] = mem[_544 + 32 len ceil32(mem[_544])]
                if ceil32(_566) > _566:
                    mem[_566 + _504 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _566 + _504 + -mem[64] + 128]
        else:
            mem[_127 + _104 + 420] = 0
            call presaleDappAddr with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _127 + _104 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require mem[96] >= 32
                _433 = mem[128]
                require mem[128] == mem[140 len 20]
                presales[msg.sender].field_1024 = mem[140 len 20]
                uint256(presaleOwners[stor21]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor21]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor15[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 3074] = code.data[21292 len 3074]
                mem[mem[64] + 3074] = presales[msg.sender].field_768
                mem[mem[64] + 3106] = msg.sender
                mem[mem[64] + 3138] = presales[msg.sender].field_3072
                mem[mem[64] + 3170] = sub_c7c65ce0Address
                mem[mem[64] + 3202] = factoryAddress
                create contract with 0 wei
                                code: code.data[21292 len 3074], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, sub_c7c65ce0Address, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_433)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 15
                _510 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _547 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_547 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _567 = mem[_547]
                mem[_510 + 132 len ceil32(mem[_547])] = mem[_547 + 32 len ceil32(mem[_547])]
                if ceil32(_567) > _567:
                    mem[_567 + _510 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _567 + _510 + -mem[64] + 128]
            else:
                _410 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_410] = return_data.size
                mem[_410 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require return_data.size >= 32
                _435 = mem[_410 + 32]
                require mem[_410 + 32] == mem[_410 + 44 len 20]
                presales[msg.sender].field_1024 = mem[_410 + 44 len 20]
                uint256(presaleOwners[stor21]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor21]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor15[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 3074] = code.data[21292 len 3074]
                mem[mem[64] + 3074] = presales[msg.sender].field_768
                mem[mem[64] + 3106] = msg.sender
                mem[mem[64] + 3138] = presales[msg.sender].field_3072
                mem[mem[64] + 3170] = sub_c7c65ce0Address
                mem[mem[64] + 3202] = factoryAddress
                create contract with 0 wei
                                code: code.data[21292 len 3074], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, sub_c7c65ce0Address, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_435)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 15
                _516 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _550 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_550 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _568 = mem[_550]
                mem[_516 + 132 len ceil32(mem[_550])] = mem[_550 + 32 len ceil32(mem[_550])]
                if ceil32(_568) > _568:
                    mem[_568 + _516 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _568 + _516 + -mem[64] + 128]
    else:
        mem[_57 + 224] = block.timestamp
        mem[_57 + 256] = mem[_4 + 32]
        mem[_57 + 288] = mem[_5 + 160]
        mem[_57 + 320] = 0
        mem[_57 + 352] = mem[_6 + 64]
        mem[_57 + 384] = mem[_6 + 32]
        mem[_57 + 416] = mem[_6]
        mem[0] = msg.sender
        mem[32] = 15
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
        presales[msg.sender].field_1792 = mem[_57 + 256]
        presales[msg.sender].field_2048 = mem[_57 + 288]
        presales[msg.sender].field_2304 = 0
        presales[msg.sender].field_2560 = 0
        presales[msg.sender].field_2560 = mem[_57 + 352]
        presales[msg.sender].field_2816 = mem[_57 + 384]
        presales[msg.sender].field_3072 = mem[_57 + 416]
        _101 = mem[64]
        mem[64] = mem[64] + 96
        mem[_101 len 96] = call.data[calldata.size len 96]
        _105 = mem[64]
        mem[64] = mem[64] + 96
        mem[_105] = this.address
        mem[_105 + 32] = msg.sender
        mem[_105 + 64] = presales[msg.sender].field_768
        mem[0] = msg.sender
        mem[32] = 15
        _107 = mem[64]
        idx = 0
        s = _105
        t = mem[64] + 36
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 64] = mem[_8 len 64]
        mem[mem[64] + 196 len 192] = mem[_5 len 192]
        mem[mem[64] + 388] = presales[msg.sender].field_2560
        _124 = mem[64]
        mem[mem[64]] = 388
        mem[64] = mem[64] + 420
        mem[_124 + 35 len 1] = 0
        mem[_124 + 32 len 3] = 4329989
        _128 = mem[_124]
        mem[_107 + 420 len ceil32(mem[_124])] = mem[_124 + 32 len ceil32(mem[_124])]
        if ceil32(_128) <= _128:
            call presaleDappAddr with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _128 + _107 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require mem[96] >= 32
                _437 = mem[128]
                require mem[128] == mem[140 len 20]
                presales[msg.sender].field_1024 = mem[140 len 20]
                uint256(presaleOwners[stor21]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor21]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor15[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 3074] = code.data[21292 len 3074]
                mem[mem[64] + 3074] = presales[msg.sender].field_768
                mem[mem[64] + 3106] = msg.sender
                mem[mem[64] + 3138] = presales[msg.sender].field_3072
                mem[mem[64] + 3170] = sub_c7c65ce0Address
                mem[mem[64] + 3202] = factoryAddress
                create contract with 0 wei
                                code: code.data[21292 len 3074], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, sub_c7c65ce0Address, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_437)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 15
                _522 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _553 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_553 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _569 = mem[_553]
                mem[_522 + 132 len ceil32(mem[_553])] = mem[_553 + 32 len ceil32(mem[_553])]
                if ceil32(_569) > _569:
                    mem[_569 + _522 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _569 + _522 + -mem[64] + 128]
            else:
                _411 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_411] = return_data.size
                mem[_411 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require return_data.size >= 32
                _439 = mem[_411 + 32]
                require mem[_411 + 32] == mem[_411 + 44 len 20]
                presales[msg.sender].field_1024 = mem[_411 + 44 len 20]
                uint256(presaleOwners[stor21]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor21]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor15[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 3074] = code.data[21292 len 3074]
                mem[mem[64] + 3074] = presales[msg.sender].field_768
                mem[mem[64] + 3106] = msg.sender
                mem[mem[64] + 3138] = presales[msg.sender].field_3072
                mem[mem[64] + 3170] = sub_c7c65ce0Address
                mem[mem[64] + 3202] = factoryAddress
                create contract with 0 wei
                                code: code.data[21292 len 3074], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, sub_c7c65ce0Address, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_439)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 15
                _528 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _556 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_556 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _570 = mem[_556]
                mem[_528 + 132 len ceil32(mem[_556])] = mem[_556 + 32 len ceil32(mem[_556])]
                if ceil32(_570) > _570:
                    mem[_570 + _528 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _570 + _528 + -mem[64] + 128]
        else:
            mem[_128 + _107 + 420] = 0
            call presaleDappAddr with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _128 + _107 + -mem[64] + 416]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require mem[96] >= 32
                _441 = mem[128]
                require mem[128] == mem[140 len 20]
                presales[msg.sender].field_1024 = mem[140 len 20]
                uint256(presaleOwners[stor21]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor21]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor15[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 3074] = code.data[21292 len 3074]
                mem[mem[64] + 3074] = presales[msg.sender].field_768
                mem[mem[64] + 3106] = msg.sender
                mem[mem[64] + 3138] = presales[msg.sender].field_3072
                mem[mem[64] + 3170] = sub_c7c65ce0Address
                mem[mem[64] + 3202] = factoryAddress
                create contract with 0 wei
                                code: code.data[21292 len 3074], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, sub_c7c65ce0Address, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_441)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 15
                _534 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _559 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_559 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _571 = mem[_559]
                mem[_534 + 132 len ceil32(mem[_559])] = mem[_559 + 32 len ceil32(mem[_559])]
                if ceil32(_571) > _571:
                    mem[_571 + _534 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _571 + _534 + -mem[64] + 128]
            else:
                _412 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_412] = return_data.size
                mem[_412 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'presale creation failed'
                require return_data.size >= 32
                _443 = mem[_412 + 32]
                require mem[_412 + 32] == mem[_412 + 44 len 20]
                presales[msg.sender].field_1024 = mem[_412 + 44 len 20]
                uint256(presaleOwners[stor21]) = msg.sender or Mask(96, 160, uint256(presaleOwners[stor21]))
                presaleOwnerToIndex[msg.sender] = numberOfPresaleOwners
                tokenAddrToIndex[stor15[msg.sender].field_768] = numberOfPresaleOwners
                numberOfPresaleOwners++
                mem[mem[64] len 3074] = code.data[21292 len 3074]
                mem[mem[64] + 3074] = presales[msg.sender].field_768
                mem[mem[64] + 3106] = msg.sender
                mem[mem[64] + 3138] = presales[msg.sender].field_3072
                mem[mem[64] + 3170] = sub_c7c65ce0Address
                mem[mem[64] + 3202] = factoryAddress
                create contract with 0 wei
                                code: code.data[21292 len 3074], presales[msg.sender].field_768, msg.sender, presales[msg.sender].field_3072, sub_c7c65ce0Address, factoryAddress
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                presales[address(msg.sender)].field_2304 = address(create.new_address)
                tokenAddrToOwnerAddr[address(arg2)] = msg.sender
                presaleAddrToOwnerAddr[address(_443)] = msg.sender
                mem[0] = msg.sender
                mem[32] = 15
                _540 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = presales[address(msg.sender)].field_1024
                mem[mem[64] + 100] = presales[address(msg.sender)].field_768
                _562 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_562 + 32 len 4] = unknown_0xbd1b7e1d(?????)
                _572 = mem[_562]
                mem[_540 + 132 len ceil32(mem[_562])] = mem[_562 + 32 len ceil32(mem[_562])]
                if ceil32(_572) > _572:
                    mem[_572 + _540 + 132] = 0
                call filterAddress with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _572 + _540 + -mem[64] + 128]
    if not ext_call.success:
        revert with 0, 'adding to Live Filter failed'
}



}
