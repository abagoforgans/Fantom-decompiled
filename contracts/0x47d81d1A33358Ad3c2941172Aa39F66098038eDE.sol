contract main {




// =====================  Runtime code  =====================


#
#  - propose(address[] arg1, uint256[] arg2, string[] arg3, bytes[] arg4, string arg5)
#  - queue(uint256 arg1)
#
const votingPeriod = 17280

const name = 'Bitgem Governor Alpha', 0

const quorumVotes = 1200000 * 10^18

const votingDelay = 1

const proposalMaxOperations = 10

const proposalThreshold = 300000 * 10^18

const DOMAIN_TYPEHASH = sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', Mask(24, 232, 'ct)') >> 232)

const BALLOT_TYPEHASH = sha3('Ballot(uint256 proposalId,bool s', Mask(56, 200, 'upport)') >> 200)


address timelockAddress;
uint256 stor0;
array of uint256 stor1;
address guardianAddress;
uint256 proposalCount;
mapping of struct receipt;
mapping of uint256 latestProposalIds;

function proposals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return receipt[arg1].field_0, 
           address(receipt[arg1].field_256),
           receipt[arg1].field_512,
           receipt[arg1].field_1792,
           receipt[arg1].field_2048,
           receipt[arg1].field_2304,
           receipt[arg1].field_2560,
           bool(uint8(receipt[arg1].field_2816)),
           bool(uint8(receipt[arg1].field_2824))
}

function comp() {
    return address(stor1.length)
}

function latestProposalIds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return latestProposalIds[arg1]
}

function guardian() {
    return guardianAddress
}

function timelock() {
    return address(timelockAddress)
}

function proposalCount() {
    return proposalCount
}

function getReceipt(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(receipt[arg1][12][address(arg2)].field_0)), 
           bool(uint8(receipt[arg1][12][address(arg2)].field_8)),
           Mask(96, 0, receipt[arg1][12][address(arg2)].field_16)
}

function _fallback() payable {
    revert
}

function __abdicate() {
    if guardianAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::__abdicate: sender must be gov guardian'
    guardianAddress = 0
}

function __acceptAdmin() {
    if guardianAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::__acceptAdmin: sender must be gov guardian'
    require ext_code.size(address(timelockAddress))
    call address(timelockAddress).acceptAdmin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function __queueSetTimelockPendingAdmin(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if guardianAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::__queueSetTimelockPendingAdmin: sender must be gov guardian'
    require ext_code.size(address(timelockAddress))
    call address(timelockAddress).0x3a66f901 with:
         gas gas_remaining wei
        args address(timelockAddress), 0, 160, 224, arg2, 24, 'setPendingAdmin(address)', 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}

function state(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_2816):
        return 2
    if block.number <= receipt[arg1].field_1792:
        return 0
    if block.number <= receipt[arg1].field_2048:
        return 1
    if receipt[arg1].field_2304 <= receipt[arg1].field_2560:
        return 3
    if receipt[arg1].field_2304 < 1200000 * 10^18:
        return 3
    if not receipt[arg1].field_512:
        return 4
    if uint8(receipt[arg1].field_2824):
        return 7
    require ext_code.size(address(timelockAddress))
    staticcall address(timelockAddress).0xc1a287e2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] + receipt[arg1].field_512 < receipt[arg1].field_512:
        revert with 0, 'addition overflow'
    if block.timestamp < ext_call.return_data[0] + receipt[arg1].field_512:
        return 5
    return 6
}

function __executeSetTimelockPendingAdmin(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if guardianAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha::__executeSetTimelockPendingAdmin: sender must be gov guardian'
    mem[128] = arg1
    mem[160] = 0x825f38f00000000000000000000000000000000000000000000000000000000
    mem[164] = address(timelockAddress)
    mem[196] = 0
    mem[228] = 160
    mem[324] = 24
    mem[356] = 'setPendingAdmin(address)'
    mem[260] = 224
    mem[388] = 32
    mem[420] = arg1
    mem[292] = arg2
    require ext_code.size(address(timelockAddress))
    call address(timelockAddress).executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(timelockAddress), 0, 160, 224, arg2, 24, 'setPendingAdmin(address)', 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    require mem[160 len 4], Mask(224, 0, stor0) <= test266151307()
    require mem[160 len 4], Mask(224, 0, stor0) + 191 < return_data.size + 160
    require mem[mem[160 len 4], Mask(224, 0, stor0) + 160] <= test266151307()
    require ceil32(mem[mem[160 len 4], Mask(224, 0, stor0) + 160]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[160 len 4], Mask(224, 0, stor0) + 160]) + 192 <= test266151307()
    require mem[160 len 4], Mask(224, 0, stor0) + mem[mem[160 len 4], Mask(224, 0, stor0) + 160] + 32 <= return_data.size
}

function castVoteBySig(uint256 arg1, bool arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    signer = erecover(sha3(0, sha3(sha3('EIP712Domain(string name,uint256', ' chainId,address verifyingContra', 'ct)'), 0x6cdb7656239a64901d008bdf9bc7bd9dba57d6edb29fd530185be55777d5f4ce, chainid, this.address), sha3(sha3('Ballot(uint256 proposalId,bool s', 'upport)'), arg1, arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'GovernorAlpha::castVoteBySig: invalid signature'
    if proposalCount < arg1:
        revert with 0, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_2816):
        revert with 0, 'GovernorAlpha::_castVote: voting is closed'
    if block.number <= receipt[arg1].field_1792:
        revert with 0, 'GovernorAlpha::_castVote: voting is closed'
    if block.number > receipt[arg1].field_2048:
        if receipt[arg1].field_2304 > receipt[arg1].field_2560:
            if receipt[arg1].field_2304 >= 1200000 * 10^18:
                if receipt[arg1].field_512:
                    if not uint8(receipt[arg1].field_2824):
                        require ext_code.size(address(timelockAddress))
                        staticcall address(timelockAddress).0xc1a287e2 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] + receipt[arg1].field_512 < receipt[arg1].field_512:
                            revert with 0, 'addition overflow'
        revert with 0, 'GovernorAlpha::_castVote: voting is closed'
    if uint8(receipt[arg1][12][address(signer)].field_0):
        revert with 0, 'GovernorAlpha::_castVote: voter already voted'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x782d6fe1 with:
            gas gas_remaining wei
           args address(signer), receipt[arg1].field_1792
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    if not arg2:
        if ext_call.return_data[20 len 12] + receipt[arg1].field_2560 < receipt[arg1].field_2560:
            revert with 0, 'addition overflow'
        receipt[arg1].field_2560 += ext_call.return_data[20 len 12]
    else:
        if ext_call.return_data[20 len 12] + receipt[arg1].field_2304 < receipt[arg1].field_2304:
            revert with 0, 'addition overflow'
        receipt[arg1].field_2304 += ext_call.return_data[20 len 12]
    uint8(receipt[arg1][12][address(signer)].field_0) = 1
    uint8(receipt[arg1][12][address(signer)].field_8) = uint8(arg2)
    Mask(96, 0, receipt[arg1][12][address(signer)].field_16) = ext_call.return_data[20 len 12]
    Mask(144, 0, receipt[arg1][12][address(signer)].field_112) = Mask(144, 104, arg2) >> 104
    receipt[arg1][12][address(signer)].field_256 % 1 = 0
    emit VoteCast(address(signer), arg1, arg2, Mask(96, 0, ext_call.return_data[0]));
}

function castVote(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_2816):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
    if block.number <= receipt[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
    if block.number > receipt[arg1].field_2048:
        if receipt[arg1].field_2304 <= receipt[arg1].field_2560:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
        if receipt[arg1].field_2304 < 1200000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
        if not receipt[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
        if uint8(receipt[arg1].field_2824):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voting is closed'
        require ext_code.size(address(timelockAddress))
        staticcall address(timelockAddress).0xc1a287e2 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] + receipt[arg1].field_512 < receipt[arg1].field_512:
            revert with 0, 'addition overflow'
        revert with 0, 'GovernorAlpha::_castVote: voting is closed'
    if uint8(receipt[arg1][12][address(msg.sender)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::_castVote: voter already voted'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x782d6fe1 with:
            gas gas_remaining wei
           args msg.sender, receipt[arg1].field_1792
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
    if not arg2:
        if ext_call.return_data[20 len 12] + receipt[arg1].field_2560 < receipt[arg1].field_2560:
            revert with 0, 'addition overflow'
        receipt[arg1].field_2560 += ext_call.return_data[20 len 12]
    else:
        if ext_call.return_data[20 len 12] + receipt[arg1].field_2304 < receipt[arg1].field_2304:
            revert with 0, 'addition overflow'
        receipt[arg1].field_2304 += ext_call.return_data[20 len 12]
    uint8(receipt[arg1][12][address(msg.sender)].field_0) = 1
    uint8(receipt[arg1][12][address(msg.sender)].field_8) = uint8(arg2)
    Mask(96, 0, receipt[arg1][12][address(msg.sender)].field_16) = ext_call.return_data[20 len 12]
    Mask(144, 0, receipt[arg1][12][address(msg.sender)].field_112) = Mask(144, 104, arg2) >> 104
    receipt[arg1][12][address(msg.sender)].field_256 % 1 = 0
    emit VoteCast(msg.sender, arg1, arg2, Mask(96, 0, ext_call.return_data[0]));
}

function getActions(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 4
    mem[96] = receipt[arg1].field_768
    if not receipt[arg1].field_768:
        mem[(32 * receipt[arg1].field_768) + 128] = receipt[arg1].field_1024
        if not receipt[arg1].field_1024:
            mem[64] = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + (32 * receipt[arg1].field_1280) + 192
            mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160] = receipt[arg1].field_1280
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            idx = 0
            while idx < receipt[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                _30 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 5].length) + 32
                mem[_30] = receipt[arg1][idx + 5].length
                mem[0] = idx + sha3(sha3(arg1, 4) + 5)
                mem[_30 + 32] = receipt[arg1][idx + 5].field_0
                t = _30 + 32
                u = sha3(mem[0])
                while _30 + receipt[arg1][idx + 5].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _30
                s = s + 32
                idx = idx + 1
                continue 
            _28 = mem[64]
            mem[64] = mem[64] + (32 * receipt[arg1].field_1536) + 32
            mem[_28] = receipt[arg1].field_1536
            s = _28 + 32
            idx = 0
            while idx < receipt[arg1].field_1536:
                mem[0] = sha3(arg1, 4) + 6
                _52 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 6].length) + 32
                mem[_52] = receipt[arg1][idx + 6].length
                mem[0] = idx + sha3(sha3(arg1, 4) + 6)
                mem[_52 + 32] = receipt[arg1][idx + 6].field_0
                t = _52 + 32
                u = sha3(mem[0])
                while _52 + receipt[arg1][idx + 6].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _52
                s = s + 32
                idx = idx + 1
                continue 
            _55 = mem[64]
            mem[mem[64]] = 128
            _66 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _66:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _66) + 160
            _125 = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _66) + 160] = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _66) + 192 len 32 * _125] = mem[(32 * receipt[arg1].field_768) + 160 len 32 * _125]
            mem[mem[64] + 64] = (32 * _66) + (32 * _125) + 192
            _179 = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            mem[mem[64] + (32 * _66) + (32 * _125) + 192] = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            idx = 0
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            t = mem[64] + (32 * _66) + (32 * _125) + (32 * _179) + 224
            u = mem[64] + (32 * _66) + (32 * _125) + 224
            while idx < _179:
                mem[u] = t + -_55 + -(32 * _66) + -(32 * _125) - 224
                _232 = mem[s]
                _242 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _242:
                    mem[v + t + 32] = mem[v + _232 + 32]
                    v = v + 32
                    continue 
                if ceil32(_242) > _242:
                    mem[_242 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_242) + 32
                u = u + 32
                continue 
            mem[_55 + 96] = t - _55
            _241 = mem[_28]
            mem[t] = mem[_28]
            idx = 0
            s = _28 + 32
            u = t + (32 * _241) + 32
            v = t + 32
            while idx < _241:
                mem[v] = u + -t - 32
                _285 = mem[s]
                _294 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _294:
                    mem[t + u + 32] = mem[t + _285 + 32]
                    t = t + 32
                    continue 
                if ceil32(_294) > _294:
                    mem[_294 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_294) + 32
                v = v + 32
                continue 
        else:
            mem[0] = sha3(arg1, 4) + 4
            mem[(32 * receipt[arg1].field_768) + 160] = receipt[arg1][4].field_0
            idx = (32 * receipt[arg1].field_768) + 160
            s = 0
            while (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 128 > idx:
                mem[idx + 32] = receipt[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + (32 * receipt[arg1].field_1280) + 192
            mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160] = receipt[arg1].field_1280
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            idx = 0
            while idx < receipt[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                _115 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 5].length) + 32
                mem[_115] = receipt[arg1][idx + 5].length
                mem[0] = idx + sha3(sha3(arg1, 4) + 5)
                mem[_115 + 32] = receipt[arg1][idx + 5].field_0
                t = _115 + 32
                u = sha3(mem[0])
                while _115 + receipt[arg1][idx + 5].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _115
                s = s + 32
                idx = idx + 1
                continue 
            _113 = mem[64]
            mem[64] = mem[64] + (32 * receipt[arg1].field_1536) + 32
            mem[_113] = receipt[arg1].field_1536
            s = _113 + 32
            idx = 0
            while idx < receipt[arg1].field_1536:
                mem[0] = sha3(arg1, 4) + 6
                _169 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 6].length) + 32
                mem[_169] = receipt[arg1][idx + 6].length
                mem[0] = idx + sha3(sha3(arg1, 4) + 6)
                mem[_169 + 32] = receipt[arg1][idx + 6].field_0
                t = _169 + 32
                u = sha3(mem[0])
                while _169 + receipt[arg1][idx + 6].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _169
                s = s + 32
                idx = idx + 1
                continue 
            _172 = mem[64]
            mem[mem[64]] = 128
            _183 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _183:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _183) + 160
            _243 = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _183) + 160] = mem[(32 * receipt[arg1].field_768) + 128]
            mem[mem[64] + (32 * _183) + 192 len 32 * _243] = mem[(32 * receipt[arg1].field_768) + 160 len 32 * _243]
            mem[mem[64] + 64] = (32 * _183) + (32 * _243) + 192
            _295 = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            mem[mem[64] + (32 * _183) + (32 * _243) + 192] = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            idx = 0
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            t = mem[64] + (32 * _183) + (32 * _243) + (32 * _295) + 224
            u = mem[64] + (32 * _183) + (32 * _243) + 224
            while idx < _295:
                mem[u] = t + -_172 + -(32 * _183) + -(32 * _243) - 224
                _328 = mem[s]
                _332 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _332:
                    mem[v + t + 32] = mem[v + _328 + 32]
                    v = v + 32
                    continue 
                if ceil32(_332) > _332:
                    mem[_332 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_332) + 32
                u = u + 32
                continue 
            mem[_172 + 96] = t - _172
            _331 = mem[_113]
            mem[t] = mem[_113]
            idx = 0
            s = _113 + 32
            u = t + (32 * _331) + 32
            v = t + 32
            while idx < _331:
                mem[v] = u + -t - 32
                _356 = mem[s]
                _363 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _363:
                    mem[t + u + 32] = mem[t + _356 + 32]
                    t = t + 32
                    continue 
                if ceil32(_363) > _363:
                    mem[_363 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_363) + 32
                v = v + 32
                continue 
    else:
        mem[0] = sha3(arg1, 4) + 3
        mem[128] = address(receipt[arg1][3].field_0)
        idx = 128
        s = 0
        while (32 * receipt[arg1].field_768) + 96 > idx:
            mem[idx + 32] = address(receipt[arg1][s + 3].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * receipt[arg1].field_768) + 128] = receipt[arg1].field_1024
        if not receipt[arg1].field_1024:
            mem[64] = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + (32 * receipt[arg1].field_1280) + 192
            mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160] = receipt[arg1].field_1280
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            idx = 0
            while idx < receipt[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                _118 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 5].length) + 32
                mem[_118] = receipt[arg1][idx + 5].length
                mem[0] = idx + sha3(sha3(arg1, 4) + 5)
                mem[_118 + 32] = receipt[arg1][idx + 5].field_0
                t = _118 + 32
                u = sha3(mem[0])
                while _118 + receipt[arg1][idx + 5].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _118
                s = s + 32
                idx = idx + 1
                continue 
            _116 = mem[64]
            mem[64] = mem[64] + (32 * receipt[arg1].field_1536) + 32
            mem[_116] = receipt[arg1].field_1536
            s = _116 + 32
            idx = 0
            while idx < receipt[arg1].field_1536:
                mem[0] = sha3(arg1, 4) + 6
                _171 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 6].length) + 32
                mem[_171] = receipt[arg1][idx + 6].length
                mem[0] = idx + sha3(sha3(arg1, 4) + 6)
                mem[_171 + 32] = receipt[arg1][idx + 6].field_0
                t = _171 + 32
                u = sha3(mem[0])
                while _171 + receipt[arg1][idx + 6].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _171
                s = s + 32
                idx = idx + 1
                continue 
            _173 = mem[64]
            mem[mem[64]] = 128
            _184 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _184:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_173 + 32] = (32 * _184) + 160
            _244 = mem[(32 * receipt[arg1].field_768) + 128]
            mem[_173 + (32 * _184) + 160] = mem[(32 * receipt[arg1].field_768) + 128]
            mem[_173 + (32 * _184) + 192 len 32 * _244] = mem[(32 * receipt[arg1].field_768) + 160 len 32 * _244]
            mem[_173 + 64] = (32 * _184) + (32 * _244) + 192
            _296 = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            mem[_173 + (32 * _184) + (32 * _244) + 192] = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            idx = 0
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            t = _173 + (32 * _184) + (32 * _244) + (32 * _296) + 224
            u = _173 + (32 * _184) + (32 * _244) + 224
            while idx < _296:
                mem[u] = t + -_173 + -(32 * _184) + -(32 * _244) - 224
                _329 = mem[s]
                _334 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _334:
                    mem[v + t + 32] = mem[v + _329 + 32]
                    v = v + 32
                    continue 
                if ceil32(_334) > _334:
                    mem[_334 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_334) + 32
                u = u + 32
                continue 
            mem[_173 + 96] = t - _173
            _333 = mem[_116]
            mem[t] = mem[_116]
            idx = 0
            s = _116 + 32
            u = t + (32 * _333) + 32
            v = t + 32
            while idx < _333:
                mem[v] = u + -t - 32
                _358 = mem[s]
                _364 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _364:
                    mem[t + u + 32] = mem[t + _358 + 32]
                    t = t + 32
                    continue 
                if ceil32(_364) > _364:
                    mem[_364 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_364) + 32
                v = v + 32
                continue 
        else:
            mem[0] = sha3(arg1, 4) + 4
            mem[(32 * receipt[arg1].field_768) + 160] = receipt[arg1][4].field_0
            idx = (32 * receipt[arg1].field_768) + 160
            s = 0
            while (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 128 > idx:
                mem[idx + 32] = receipt[arg1][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[64] = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + (32 * receipt[arg1].field_1280) + 192
            mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160] = receipt[arg1].field_1280
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            idx = 0
            while idx < receipt[arg1].field_1280:
                mem[0] = sha3(arg1, 4) + 5
                _237 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 5].length) + 32
                mem[_237] = receipt[arg1][idx + 5].length
                mem[0] = idx + sha3(sha3(arg1, 4) + 5)
                mem[_237 + 32] = receipt[arg1][idx + 5].field_0
                t = _237 + 32
                u = sha3(mem[0])
                while _237 + receipt[arg1][idx + 5].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _237
                s = s + 32
                idx = idx + 1
                continue 
            _235 = mem[64]
            mem[64] = mem[64] + (32 * receipt[arg1].field_1536) + 32
            mem[_235] = receipt[arg1].field_1536
            s = _235 + 32
            idx = 0
            while idx < receipt[arg1].field_1536:
                mem[0] = sha3(arg1, 4) + 6
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(receipt[arg1][idx + 6].length) + 32
                mem[_290] = receipt[arg1][idx + 6].length
                mem[0] = idx + sha3(sha3(arg1, 4) + 6)
                mem[_290 + 32] = receipt[arg1][idx + 6].field_0
                t = _290 + 32
                u = sha3(mem[0])
                while _290 + receipt[arg1][idx + 6].length > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[s] = _290
                s = s + 32
                idx = idx + 1
                continue 
            _291 = mem[64]
            mem[mem[64]] = 128
            _297 = mem[96]
            mem[mem[64] + 128] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 160
            while idx < _297:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_291 + 32] = (32 * _297) + 160
            _335 = mem[(32 * receipt[arg1].field_768) + 128]
            mem[_291 + (32 * _297) + 160] = mem[(32 * receipt[arg1].field_768) + 128]
            mem[_291 + (32 * _297) + 192 len 32 * _335] = mem[(32 * receipt[arg1].field_768) + 160 len 32 * _335]
            mem[_291 + 64] = (32 * _297) + (32 * _335) + 192
            _365 = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            mem[_291 + (32 * _297) + (32 * _335) + 192] = mem[(32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 160]
            idx = 0
            s = (32 * receipt[arg1].field_768) + (32 * receipt[arg1].field_1024) + 192
            t = _291 + (32 * _297) + (32 * _335) + (32 * _365) + 224
            u = _291 + (32 * _297) + (32 * _335) + 224
            while idx < _365:
                mem[u] = t + -_291 + -(32 * _297) + -(32 * _335) - 224
                _378 = mem[s]
                _380 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _380:
                    mem[v + t + 32] = mem[v + _378 + 32]
                    v = v + 32
                    continue 
                if ceil32(_380) > _380:
                    mem[_380 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_380) + 32
                u = u + 32
                continue 
            mem[_291 + 96] = t - _291
            _379 = mem[_235]
            mem[t] = mem[_235]
            idx = 0
            s = _235 + 32
            u = t + (32 * _379) + 32
            v = t + 32
            while idx < _379:
                mem[v] = u + -t - 32
                _386 = mem[s]
                _389 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _389:
                    mem[t + u + 32] = mem[t + _386 + 32]
                    t = t + 32
                    continue 
                if ceil32(_389) > _389:
                    mem[_389 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_389) + 32
                v = v + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function execute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_2816):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha:proposal can only be executed if it is queued'
    if block.number <= receipt[arg1].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha:proposal can only be executed if it is queued'
    if block.number <= receipt[arg1].field_2048:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha:proposal can only be executed if it is queued'
    if receipt[arg1].field_2304 <= receipt[arg1].field_2560:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha:proposal can only be executed if it is queued'
    if receipt[arg1].field_2304 < 1200000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha:proposal can only be executed if it is queued'
    if not receipt[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha:proposal can only be executed if it is queued'
    if uint8(receipt[arg1].field_2824):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GovernorAlpha:proposal can only be executed if it is queued'
    require ext_code.size(address(timelockAddress))
    staticcall address(timelockAddress).0xc1a287e2 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] + receipt[arg1].field_512 < receipt[arg1].field_512:
        revert with 0, 'addition overflow'
    if block.timestamp >= ext_call.return_data[0] + receipt[arg1].field_512:
        revert with 0, 'GovernorAlpha:proposal can only be executed if it is queued'
    mem[0] = arg1
    mem[32] = 4
    uint8(receipt[arg1].field_2824) = 1
    idx = 0
    while idx < receipt[arg1].field_768:
        require idx < receipt[arg1].field_1024
        require idx < receipt[arg1].field_768
        require idx < receipt[arg1].field_1024
        require idx < receipt[arg1].field_1280
        require idx < receipt[arg1].field_1536
        mem[0] = sha3(arg1, 4) + 6
        _101 = mem[64]
        mem[mem[64]] = 0x825f38f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
        mem[mem[64] + 68] = 160
        if not bool(receipt[arg1][idx + 5].field_0):
            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
            mem[mem[64] + 100] = 224
            if not bool(receipt[arg1][idx + 6].field_0):
                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                mem[mem[64] + 132] = receipt[arg1].field_512
                require ext_code.size(address(timelockAddress))
                call address(timelockAddress).executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) with:
                   value receipt[arg1][idx + 4].field_0 wei
                     gas gas_remaining wei
                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _114 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _118 = mem[_114]
                require mem[_114] <= test266151307()
                require _114 + mem[_114] + 31 < _114 + return_data.size
                _128 = mem[_114 + mem[_114]]
                require mem[_114 + mem[_114]] <= test266151307()
                require ceil32(mem[_114 + mem[_114]]) + 32 >= 0 and _114 + ceil32(return_data.size) + ceil32(mem[_114 + mem[_114]]) + 32 <= test266151307()
                mem[64] = _114 + ceil32(return_data.size) + ceil32(mem[_114 + mem[_114]]) + 32
                mem[_114 + ceil32(return_data.size)] = _128
                require _118 + _128 + 32 <= return_data.size
                s = 0
                while s < _128:
                    mem[s + _114 + ceil32(return_data.size) + 32] = mem[s + _114 + _118 + 32]
                    s = s + 32
                    continue 
                if ceil32(_128) > _128:
                    mem[_128 + _114 + ceil32(return_data.size) + 32] = 0
            else:
                if bool(receipt[arg1][idx + 6].field_0) != 1:
                    mem[mem[64] + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) with:
                       value receipt[arg1][idx + 4].field_0 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _112 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _116 = mem[_112]
                    require mem[_112] <= test266151307()
                    require _112 + mem[_112] + 31 < _112 + return_data.size
                    _124 = mem[_112 + mem[_112]]
                    require mem[_112 + mem[_112]] <= test266151307()
                    require ceil32(mem[_112 + mem[_112]]) + 32 >= 0 and _112 + ceil32(return_data.size) + ceil32(mem[_112 + mem[_112]]) + 32 <= test266151307()
                    mem[64] = _112 + ceil32(return_data.size) + ceil32(mem[_112 + mem[_112]]) + 32
                    mem[_112 + ceil32(return_data.size)] = _124
                    require _116 + _124 + 32 <= return_data.size
                    s = 0
                    while s < _124:
                        mem[s + _112 + ceil32(return_data.size) + 32] = mem[s + _112 + _116 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_124) > _124:
                        mem[_124 + _112 + ceil32(return_data.size) + 32] = 0
                else:
                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                    s = 0
                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                    while s < uint255(receipt[arg1][idx + 6].field_1):
                        mem[s + mem[64] + 260] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_101 + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).mem[mem[64] len 4] with:
                       value receipt[arg1][idx + 4].field_0 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _101 + s + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _168 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _170 = mem[_168]
                    require mem[_168] <= test266151307()
                    require _168 + mem[_168] + 31 < _168 + return_data.size
                    _174 = mem[_168 + mem[_168]]
                    require mem[_168 + mem[_168]] <= test266151307()
                    require ceil32(mem[_168 + mem[_168]]) + 32 >= 0 and _168 + ceil32(return_data.size) + ceil32(mem[_168 + mem[_168]]) + 32 <= test266151307()
                    mem[64] = _168 + ceil32(return_data.size) + ceil32(mem[_168 + mem[_168]]) + 32
                    mem[_168 + ceil32(return_data.size)] = _174
                    require _170 + _174 + 32 <= return_data.size
                    s = 0
                    while s < _174:
                        mem[s + _168 + ceil32(return_data.size) + 32] = mem[s + _168 + _170 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_174) > _174:
                        mem[_174 + _168 + ceil32(return_data.size) + 32] = 0
        else:
            if bool(receipt[arg1][idx + 5].field_0) != 1:
                mem[mem[64] + 100] = -mem[64] - 4
                if not bool(receipt[arg1][idx + 6].field_0):
                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                    mem[mem[64] + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) with:
                       value receipt[arg1][idx + 4].field_0 wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] + 60]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _113 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _117 = mem[_113]
                    require mem[_113] <= test266151307()
                    require _113 + mem[_113] + 31 < _113 + return_data.size
                    _126 = mem[_113 + mem[_113]]
                    require mem[_113 + mem[_113]] <= test266151307()
                    require ceil32(mem[_113 + mem[_113]]) + 32 >= 0 and _113 + ceil32(return_data.size) + ceil32(mem[_113 + mem[_113]]) + 32 <= test266151307()
                    mem[64] = _113 + ceil32(return_data.size) + ceil32(mem[_113 + mem[_113]]) + 32
                    mem[_113 + ceil32(return_data.size)] = _126
                    require _117 + _126 + 32 <= return_data.size
                    s = 0
                    while s < _126:
                        mem[s + _113 + ceil32(return_data.size) + 32] = mem[s + _113 + _117 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_126) > _126:
                        mem[_126 + _113 + ceil32(return_data.size) + 32] = 0
                else:
                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) with:
                           value receipt[arg1][idx + 4].field_0 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _111 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _115 = mem[_111]
                        require mem[_111] <= test266151307()
                        require _111 + mem[_111] + 31 < _111 + return_data.size
                        _123 = mem[_111 + mem[_111]]
                        require mem[_111 + mem[_111]] <= test266151307()
                        require ceil32(mem[_111 + mem[_111]]) + 32 >= 0 and _111 + ceil32(return_data.size) + ceil32(mem[_111 + mem[_111]]) + 32 <= test266151307()
                        mem[64] = _111 + ceil32(return_data.size) + ceil32(mem[_111 + mem[_111]]) + 32
                        mem[_111 + ceil32(return_data.size)] = _123
                        require _115 + _123 + 32 <= return_data.size
                        s = 0
                        while s < _123:
                            mem[s + _111 + ceil32(return_data.size) + 32] = mem[s + _111 + _115 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_123) > _123:
                            mem[_123 + _111 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                        s = 0
                        t = sha3(mem[0])
                        while s < uint255(receipt[arg1][idx + 6].field_1):
                            mem[s + 32] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_101 + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).mem[mem[64] len 4] with:
                           value receipt[arg1][idx + 4].field_0 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _169 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _171 = mem[_169]
                        require mem[_169] <= test266151307()
                        require _169 + mem[_169] + 31 < _169 + return_data.size
                        _176 = mem[_169 + mem[_169]]
                        require mem[_169 + mem[_169]] <= test266151307()
                        require ceil32(mem[_169 + mem[_169]]) + 32 >= 0 and _169 + ceil32(return_data.size) + ceil32(mem[_169 + mem[_169]]) + 32 <= test266151307()
                        mem[64] = _169 + ceil32(return_data.size) + ceil32(mem[_169 + mem[_169]]) + 32
                        mem[_169 + ceil32(return_data.size)] = _176
                        require _171 + _176 + 32 <= return_data.size
                        s = 0
                        while s < _176:
                            mem[s + _169 + ceil32(return_data.size) + 32] = mem[s + _169 + _171 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_176) > _176:
                            mem[_176 + _169 + ceil32(return_data.size) + 32] = 0
            else:
                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                s = 0
                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                while s < uint255(receipt[arg1][idx + 5].field_1):
                    mem[s + mem[64] + 196] = stor[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[mem[64] + 100] = s + 192
                if not bool(receipt[arg1][idx + 6].field_0):
                    mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                    mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                    mem[mem[64] + 132] = receipt[arg1].field_512
                    require ext_code.size(address(timelockAddress))
                    call address(timelockAddress).executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) with:
                       value receipt[arg1][idx + 4].field_0 wei
                         gas gas_remaining wei
                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _177 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _179 = mem[_177]
                    require mem[_177] <= test266151307()
                    require _177 + mem[_177] + 31 < _177 + return_data.size
                    _184 = mem[_177 + mem[_177]]
                    require mem[_177 + mem[_177]] <= test266151307()
                    require ceil32(mem[_177 + mem[_177]]) + 32 >= 0 and _177 + ceil32(return_data.size) + ceil32(mem[_177 + mem[_177]]) + 32 <= test266151307()
                    mem[64] = _177 + ceil32(return_data.size) + ceil32(mem[_177 + mem[_177]]) + 32
                    mem[_177 + ceil32(return_data.size)] = _184
                    require _179 + _184 + 32 <= return_data.size
                    s = 0
                    while s < _184:
                        mem[s + _177 + ceil32(return_data.size) + 32] = mem[s + _177 + _179 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_184) > _184:
                        mem[_184 + _177 + ceil32(return_data.size) + 32] = 0
                else:
                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) with:
                           value receipt[arg1][idx + 4].field_0 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len -mem[64] - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _175 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _178 = mem[_175]
                        require mem[_175] <= test266151307()
                        require _175 + mem[_175] + 31 < _175 + return_data.size
                        _183 = mem[_175 + mem[_175]]
                        require mem[_175 + mem[_175]] <= test266151307()
                        require ceil32(mem[_175 + mem[_175]]) + 32 >= 0 and _175 + ceil32(return_data.size) + ceil32(mem[_175 + mem[_175]]) + 32 <= test266151307()
                        mem[64] = _175 + ceil32(return_data.size) + ceil32(mem[_175 + mem[_175]]) + 32
                        mem[_175 + ceil32(return_data.size)] = _183
                        require _178 + _183 + 32 <= return_data.size
                        s = 0
                        while s < _183:
                            mem[s + _175 + ceil32(return_data.size) + 32] = mem[s + _175 + _178 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_183) > _183:
                            mem[_183 + _175 + ceil32(return_data.size) + 32] = 0
                    else:
                        mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                        t = 0
                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                        while t < uint255(receipt[arg1][idx + 6].field_1):
                            mem[t + mem[64] + s + 228] = stor[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4, uint256 arg5) with:
                           value receipt[arg1][idx + 4].field_0 wei
                             gas gas_remaining wei
                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + t + 32]), s + 192, receipt[arg1].field_512
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _201 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _202 = mem[_201]
                        require mem[_201] <= test266151307()
                        require _201 + mem[_201] + 31 < _201 + return_data.size
                        _203 = mem[_201 + mem[_201]]
                        require mem[_201 + mem[_201]] <= test266151307()
                        require ceil32(mem[_201 + mem[_201]]) + 32 >= 0 and _201 + ceil32(return_data.size) + ceil32(mem[_201 + mem[_201]]) + 32 <= test266151307()
                        mem[64] = _201 + ceil32(return_data.size) + ceil32(mem[_201 + mem[_201]]) + 32
                        mem[_201 + ceil32(return_data.size)] = _203
                        require _202 + _203 + 32 <= return_data.size
                        s = 0
                        while s < _203:
                            mem[s + _201 + ceil32(return_data.size) + 32] = mem[s + _201 + _202 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_203) > _203:
                            mem[_203 + _201 + ceil32(return_data.size) + 32] = 0
        idx = idx + 1
        continue 
    emit ProposalExecuted(arg1);
}

function cancel(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if proposalCount < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GovernorAlpha::state: invalid proposal id'
    if uint8(receipt[arg1].field_2816):
        mem[0] = arg1
        if msg.sender == guardianAddress:
            uint8(receipt[arg1].field_2816) = 1
            idx = 0
            while idx < receipt[arg1].field_768:
                require idx < receipt[arg1].field_1024
                require idx < receipt[arg1].field_1280
                require idx < receipt[arg1].field_1536
                mem[0] = sha3(arg1, 4) + 6
                _499 = mem[64]
                mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                mem[mem[64] + 68] = 160
                if not bool(receipt[arg1][idx + 5].field_0):
                    mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                    mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                    mem[mem[64] + 100] = 224
                    if not bool(receipt[arg1][idx + 6].field_0):
                        mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                        mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).0x591fcdfe with:
                             gas gas_remaining wei
                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                    else:
                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] - 4]
                        else:
                            mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                            s = 0
                            t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                mem[s + mem[64] + 260] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_499 + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _499 + s + -mem[64] + 256]
                else:
                    if bool(receipt[arg1][idx + 5].field_0) != 1:
                        mem[mem[64] + 100] = -mem[64] - 4
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[0] = receipt[arg1][idx + 6].field_1 % 128
                            mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] + 60]
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_499 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len s + -mem[64] + 28]
                    else:
                        mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        s = 0
                        t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                        while s < uint255(receipt[arg1][idx + 5].field_1):
                            mem[s + mem[64] + 196] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[mem[64] + 100] = s + 192
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                            mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                t = 0
                                u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                while t < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[t + mem[64] + s + 228] = stor[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_499 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _499 + s + t + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            if 1 > block.number:
                revert with 0, 'subtraction underflow'
            mem[100] = address(receipt[arg1].field_256)
            mem[132] = block.number - 1
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x782d6fe1 with:
                    gas gas_remaining wei
                   args address(receipt[arg1].field_256), block.number - 1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[20 len 12]
            if ext_call.return_data[20 len 12] >= 300000 * 10^18:
                revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
            uint8(receipt[arg1].field_2816) = 1
            idx = 0
            while idx < receipt[arg1].field_768:
                require idx < receipt[arg1].field_1024
                require idx < receipt[arg1].field_1280
                require idx < receipt[arg1].field_1536
                mem[0] = sha3(arg1, 4) + 6
                _501 = mem[64]
                mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                mem[mem[64] + 68] = 160
                if not bool(receipt[arg1][idx + 5].field_0):
                    mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                    mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                    mem[mem[64] + 100] = 224
                    if not bool(receipt[arg1][idx + 6].field_0):
                        mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                        mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                        mem[mem[64] + 132] = receipt[arg1].field_512
                        require ext_code.size(address(timelockAddress))
                        call address(timelockAddress).0x591fcdfe with:
                             gas gas_remaining wei
                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                    else:
                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] - 4]
                        else:
                            mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                            s = 0
                            t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                mem[s + mem[64] + 260] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                else:
                    if bool(receipt[arg1][idx + 5].field_0) != 1:
                        mem[mem[64] + 100] = -mem[64] - 4
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[0] = receipt[arg1][idx + 6].field_1 % 128
                            mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len -mem[64] + 60]
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[s + 32] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_501 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len s + -mem[64] + 28]
                    else:
                        mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                        s = 0
                        t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                        while s < uint255(receipt[arg1][idx + 5].field_1):
                            mem[s + mem[64] + 196] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_501 + 100] = s + 192
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[_501 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                            mem[_501 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[_501 + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _501 + s + -mem[64] + 256]
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[_501 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[_501 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                t = 0
                                u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                while t < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[t + _501 + s + 228] = stor[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_501 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _501 + s + t + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
    else:
        if block.number <= receipt[arg1].field_1792:
            mem[0] = arg1
            if msg.sender == guardianAddress:
                uint8(receipt[arg1].field_2816) = 1
                idx = 0
                while idx < receipt[arg1].field_768:
                    require idx < receipt[arg1].field_1024
                    require idx < receipt[arg1].field_1280
                    require idx < receipt[arg1].field_1536
                    mem[0] = sha3(arg1, 4) + 6
                    _495 = mem[64]
                    mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                    mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                    mem[mem[64] + 68] = 160
                    if not bool(receipt[arg1][idx + 5].field_0):
                        mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                        mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                        mem[mem[64] + 100] = 224
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                            mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                s = 0
                                t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[s + mem[64] + 260] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_495 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _495 + s + -mem[64] + 256]
                    else:
                        if bool(receipt[arg1][idx + 5].field_0) != 1:
                            mem[mem[64] + 100] = -mem[64] - 4
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] + 60]
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[s + 32] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_495 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len s + -mem[64] + 28]
                        else:
                            mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            s = 0
                            t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                            while s < uint255(receipt[arg1][idx + 5].field_1):
                                mem[s + mem[64] + 196] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_495 + 100] = s + 192
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[_495 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                mem[_495 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[_495 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _495 + s + -mem[64] + 256]
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[_495 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[_495 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    t = 0
                                    u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                    while t < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[t + _495 + s + 228] = stor[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                                    mem[_495 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _495 + s + t + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
            else:
                if 1 > block.number:
                    revert with 0, 'subtraction underflow'
                mem[100] = address(receipt[arg1].field_256)
                mem[132] = block.number - 1
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x782d6fe1 with:
                        gas gas_remaining wei
                       args address(receipt[arg1].field_256), block.number - 1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                if ext_call.return_data[20 len 12] >= 300000 * 10^18:
                    revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                uint8(receipt[arg1].field_2816) = 1
                idx = 0
                while idx < receipt[arg1].field_768:
                    require idx < receipt[arg1].field_1024
                    require idx < receipt[arg1].field_1280
                    require idx < receipt[arg1].field_1536
                    mem[0] = sha3(arg1, 4) + 6
                    _497 = mem[64]
                    mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                    mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                    mem[mem[64] + 68] = 160
                    if not bool(receipt[arg1][idx + 5].field_0):
                        mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                        mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                        mem[mem[64] + 100] = 224
                        if not bool(receipt[arg1][idx + 6].field_0):
                            mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                            mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            mem[mem[64] + 132] = receipt[arg1].field_512
                            require ext_code.size(address(timelockAddress))
                            call address(timelockAddress).0x591fcdfe with:
                                 gas gas_remaining wei
                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                        else:
                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] - 4]
                            else:
                                mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                s = 0
                                t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                    mem[s + mem[64] + 260] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_497 + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _497 + s + -mem[64] + 256]
                    else:
                        if bool(receipt[arg1][idx + 5].field_0) != 1:
                            mem[mem[64] + 100] = -mem[64] - 4
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len -mem[64] + 60]
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    s = 0
                                    t = sha3(mem[0])
                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[s + 32] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_497 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len s + -mem[64] + 28]
                        else:
                            mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                            s = 0
                            t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                            while s < uint255(receipt[arg1][idx + 5].field_1):
                                mem[s + mem[64] + 196] = stor[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[mem[64] + 100] = s + 192
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    t = 0
                                    u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                    while t < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[t + mem[64] + s + 228] = stor[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                                    mem[_497 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _497 + s + t + -mem[64] + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    continue 
        else:
            if block.number <= receipt[arg1].field_2048:
                mem[0] = arg1
                if msg.sender == guardianAddress:
                    uint8(receipt[arg1].field_2816) = 1
                    idx = 0
                    while idx < receipt[arg1].field_768:
                        require idx < receipt[arg1].field_1024
                        require idx < receipt[arg1].field_1280
                        require idx < receipt[arg1].field_1536
                        mem[0] = sha3(arg1, 4) + 6
                        _491 = mem[64]
                        mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                        mem[mem[64] + 68] = 160
                        if not bool(receipt[arg1][idx + 5].field_0):
                            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                            mem[mem[64] + 100] = 224
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[s + mem[64] + 260] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                        else:
                            if bool(receipt[arg1][idx + 5].field_0) != 1:
                                mem[mem[64] + 100] = -mem[64] - 4
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] + 60]
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        s = 0
                                        t = sha3(mem[0])
                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[s + 32] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_491 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                            else:
                                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                s = 0
                                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                while s < uint255(receipt[arg1][idx + 5].field_1):
                                    mem[s + mem[64] + 196] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_491 + 100] = s + 192
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[_491 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[_491 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[_491 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _491 + s + -mem[64] + 256]
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[_491 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[_491 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        t = 0
                                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                        while t < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[t + _491 + s + 228] = stor[u]
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                        mem[_491 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _491 + s + t + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    if 1 > block.number:
                        revert with 0, 'subtraction underflow'
                    mem[100] = address(receipt[arg1].field_256)
                    mem[132] = block.number - 1
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).0x782d6fe1 with:
                            gas gas_remaining wei
                           args address(receipt[arg1].field_256), block.number - 1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                    if ext_call.return_data[20 len 12] >= 300000 * 10^18:
                        revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                    uint8(receipt[arg1].field_2816) = 1
                    idx = 0
                    while idx < receipt[arg1].field_768:
                        require idx < receipt[arg1].field_1024
                        require idx < receipt[arg1].field_1280
                        require idx < receipt[arg1].field_1536
                        mem[0] = sha3(arg1, 4) + 6
                        _493 = mem[64]
                        mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                        mem[mem[64] + 68] = 160
                        if not bool(receipt[arg1][idx + 5].field_0):
                            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                            mem[mem[64] + 100] = 224
                            if not bool(receipt[arg1][idx + 6].field_0):
                                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                mem[mem[64] + 132] = receipt[arg1].field_512
                                require ext_code.size(address(timelockAddress))
                                call address(timelockAddress).0x591fcdfe with:
                                     gas gas_remaining wei
                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                            else:
                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                else:
                                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                        mem[s + mem[64] + 260] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_493 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _493 + s + -mem[64] + 256]
                        else:
                            if bool(receipt[arg1][idx + 5].field_0) != 1:
                                mem[mem[64] + 100] = -mem[64] - 4
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len -mem[64] + 60]
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        s = 0
                                        t = sha3(mem[0])
                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[s + 32] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_493 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                            else:
                                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                s = 0
                                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                while s < uint255(receipt[arg1][idx + 5].field_1):
                                    mem[s + mem[64] + 196] = stor[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_493 + 100] = s + 192
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[_493 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[_493 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[_493 + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _493 + s + -mem[64] + 256]
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[_493 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[_493 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        t = 0
                                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                        while t < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[t + _493 + s + 228] = stor[u]
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                        mem[_493 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _493 + s + t + -mem[64] + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                if receipt[arg1].field_2304 <= receipt[arg1].field_2560:
                    mem[0] = arg1
                    if msg.sender == guardianAddress:
                        uint8(receipt[arg1].field_2816) = 1
                        idx = 0
                        while idx < receipt[arg1].field_768:
                            require idx < receipt[arg1].field_1024
                            require idx < receipt[arg1].field_1280
                            require idx < receipt[arg1].field_1536
                            mem[0] = sha3(arg1, 4) + 6
                            _471 = mem[64]
                            mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                            mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                            mem[mem[64] + 68] = 160
                            if not bool(receipt[arg1][idx + 5].field_0):
                                mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                mem[mem[64] + 100] = 224
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[s + mem[64] + 260] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_471 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _471 + s + -mem[64] + 256]
                            else:
                                if bool(receipt[arg1][idx + 5].field_0) != 1:
                                    mem[mem[64] + 100] = -mem[64] - 4
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] + 60]
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            s = 0
                                            t = sha3(mem[0])
                                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[s + 32] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_471 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len s + -mem[64] + 28]
                                else:
                                    mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                    while s < uint255(receipt[arg1][idx + 5].field_1):
                                        mem[s + mem[64] + 196] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[mem[64] + 100] = s + 192
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            t = 0
                                            u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                            while t < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[t + mem[64] + s + 228] = stor[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            mem[_471 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _471 + s + t + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                    else:
                        if 1 > block.number:
                            revert with 0, 'subtraction underflow'
                        mem[100] = address(receipt[arg1].field_256)
                        mem[132] = block.number - 1
                        require ext_code.size(address(stor1.length))
                        staticcall address(stor1.length).0x782d6fe1 with:
                                gas gas_remaining wei
                               args address(receipt[arg1].field_256), block.number - 1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                        if ext_call.return_data[20 len 12] >= 300000 * 10^18:
                            revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                        uint8(receipt[arg1].field_2816) = 1
                        idx = 0
                        while idx < receipt[arg1].field_768:
                            require idx < receipt[arg1].field_1024
                            require idx < receipt[arg1].field_1280
                            require idx < receipt[arg1].field_1536
                            mem[0] = sha3(arg1, 4) + 6
                            _473 = mem[64]
                            mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                            mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                            mem[mem[64] + 68] = 160
                            if not bool(receipt[arg1][idx + 5].field_0):
                                mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                mem[mem[64] + 100] = 224
                                if not bool(receipt[arg1][idx + 6].field_0):
                                    mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                    mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                    require ext_code.size(address(timelockAddress))
                                    call address(timelockAddress).0x591fcdfe with:
                                         gas gas_remaining wei
                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                else:
                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                    else:
                                        mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                            mem[s + mem[64] + 260] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                            else:
                                if bool(receipt[arg1][idx + 5].field_0) != 1:
                                    mem[mem[64] + 100] = -mem[64] - 4
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len -mem[64] + 60]
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            s = 0
                                            t = sha3(mem[0])
                                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[s + 32] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_473 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len s + -mem[64] + 28]
                                else:
                                    mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                    mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                    s = 0
                                    t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                    while s < uint255(receipt[arg1][idx + 5].field_1):
                                        mem[s + mem[64] + 196] = stor[t]
                                        s = s + 32
                                        t = t + 1
                                        continue 
                                    mem[_473 + 100] = s + 192
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[_473 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[_473 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[_473 + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _473 + s + -mem[64] + 256]
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[_473 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[_473 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            t = 0
                                            u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                            while t < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[t + _473 + s + 228] = stor[u]
                                                t = t + 32
                                                u = u + 1
                                                continue 
                                            mem[_473 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _473 + s + t + -mem[64] + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    if receipt[arg1].field_2304 < 1200000 * 10^18:
                        mem[0] = arg1
                        if msg.sender == guardianAddress:
                            uint8(receipt[arg1].field_2816) = 1
                            idx = 0
                            while idx < receipt[arg1].field_768:
                                require idx < receipt[arg1].field_1024
                                require idx < receipt[arg1].field_1280
                                require idx < receipt[arg1].field_1536
                                mem[0] = sha3(arg1, 4) + 6
                                _487 = mem[64]
                                mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                mem[mem[64] + 68] = 160
                                if not bool(receipt[arg1][idx + 5].field_0):
                                    mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                    mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                    mem[mem[64] + 100] = 224
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[s + mem[64] + 260] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                                else:
                                    if bool(receipt[arg1][idx + 5].field_0) != 1:
                                        mem[mem[64] + 100] = -mem[64] - 4
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] + 60]
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_487 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len s + -mem[64] + 28]
                                    else:
                                        mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                        while s < uint255(receipt[arg1][idx + 5].field_1):
                                            mem[s + mem[64] + 196] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_487 + 100] = s + 192
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[_487 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[_487 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[_487 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _487 + s + -mem[64] + 256]
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[_487 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[_487 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                while t < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[t + _487 + s + 228] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                mem[_487 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _487 + s + t + -mem[64] + 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                        else:
                            if 1 > block.number:
                                revert with 0, 'subtraction underflow'
                            mem[100] = address(receipt[arg1].field_256)
                            mem[132] = block.number - 1
                            require ext_code.size(address(stor1.length))
                            staticcall address(stor1.length).0x782d6fe1 with:
                                    gas gas_remaining wei
                                   args address(receipt[arg1].field_256), block.number - 1
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                            if ext_call.return_data[20 len 12] >= 300000 * 10^18:
                                revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                            uint8(receipt[arg1].field_2816) = 1
                            idx = 0
                            while idx < receipt[arg1].field_768:
                                require idx < receipt[arg1].field_1024
                                require idx < receipt[arg1].field_1280
                                require idx < receipt[arg1].field_1536
                                mem[0] = sha3(arg1, 4) + 6
                                _489 = mem[64]
                                mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                mem[mem[64] + 68] = 160
                                if not bool(receipt[arg1][idx + 5].field_0):
                                    mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                    mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                    mem[mem[64] + 100] = 224
                                    if not bool(receipt[arg1][idx + 6].field_0):
                                        mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                        mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                        require ext_code.size(address(timelockAddress))
                                        call address(timelockAddress).0x591fcdfe with:
                                             gas gas_remaining wei
                                            args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                    else:
                                        if bool(receipt[arg1][idx + 6].field_0) != 1:
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] - 4]
                                        else:
                                            mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                            while s < uint255(receipt[arg1][idx + 6].field_1):
                                                mem[s + mem[64] + 260] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_489 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _489 + s + -mem[64] + 256]
                                else:
                                    if bool(receipt[arg1][idx + 5].field_0) != 1:
                                        mem[mem[64] + 100] = -mem[64] - 4
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len -mem[64] + 60]
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                s = 0
                                                t = sha3(mem[0])
                                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[s + 32] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_489 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len s + -mem[64] + 28]
                                    else:
                                        mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                        mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                        s = 0
                                        t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                        while s < uint255(receipt[arg1][idx + 5].field_1):
                                            mem[s + mem[64] + 196] = stor[t]
                                            s = s + 32
                                            t = t + 1
                                            continue 
                                        mem[_489 + 100] = s + 192
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[_489 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[_489 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[_489 + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _489 + s + -mem[64] + 256]
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[_489 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[_489 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                t = 0
                                                u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                while t < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[t + _489 + s + 228] = stor[u]
                                                    t = t + 32
                                                    u = u + 1
                                                    continue 
                                                mem[_489 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _489 + s + t + -mem[64] + 224]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        if not receipt[arg1].field_512:
                            mem[0] = arg1
                            if msg.sender == guardianAddress:
                                uint8(receipt[arg1].field_2816) = 1
                                idx = 0
                                while idx < receipt[arg1].field_768:
                                    require idx < receipt[arg1].field_1024
                                    require idx < receipt[arg1].field_1280
                                    require idx < receipt[arg1].field_1536
                                    mem[0] = sha3(arg1, 4) + 6
                                    _483 = mem[64]
                                    mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                    mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                    mem[mem[64] + 68] = 160
                                    if not bool(receipt[arg1][idx + 5].field_0):
                                        mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                        mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                        mem[mem[64] + 100] = 224
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[s + mem[64] + 260] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                                    else:
                                        if bool(receipt[arg1][idx + 5].field_0) != 1:
                                            mem[mem[64] + 100] = -mem[64] - 4
                                            if not bool(receipt[arg1][idx + 6].field_0):
                                                mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                                mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] + 60]
                                            else:
                                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[_483 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len s + -mem[64] + 28]
                                        else:
                                            mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                            while s < uint255(receipt[arg1][idx + 5].field_1):
                                                mem[s + mem[64] + 196] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[mem[64] + 100] = s + 192
                                            if not bool(receipt[arg1][idx + 6].field_0):
                                                mem[mem[64] + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                                mem[mem[64] + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, Array(len=2 * Mask(256, -1, uint255(receipt[arg1][idx + 5].field_1)), data=mem[mem[64] + 196 len s + 32], Mask(248, 8, receipt[arg1][idx + 6].field_0)), s + 192, receipt[arg1].field_512
                                            else:
                                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                                else:
                                                    mem[mem[64] + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                    while t < uint255(receipt[arg1][idx + 6].field_1):
                                                        mem[t + mem[64] + s + 228] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    mem[_483 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _483 + s + t + -mem[64] + 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                            else:
                                if 1 > block.number:
                                    revert with 0, 'subtraction underflow'
                                mem[100] = address(receipt[arg1].field_256)
                                mem[132] = block.number - 1
                                require ext_code.size(address(stor1.length))
                                staticcall address(stor1.length).0x782d6fe1 with:
                                        gas gas_remaining wei
                                       args address(receipt[arg1].field_256), block.number - 1
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                                if ext_call.return_data[20 len 12] >= 300000 * 10^18:
                                    revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                                uint8(receipt[arg1].field_2816) = 1
                                idx = 0
                                while idx < receipt[arg1].field_768:
                                    require idx < receipt[arg1].field_1024
                                    require idx < receipt[arg1].field_1280
                                    require idx < receipt[arg1].field_1536
                                    mem[0] = sha3(arg1, 4) + 6
                                    _485 = mem[64]
                                    mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                    mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                    mem[mem[64] + 68] = 160
                                    if not bool(receipt[arg1][idx + 5].field_0):
                                        mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                        mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                        mem[mem[64] + 100] = 224
                                        if not bool(receipt[arg1][idx + 6].field_0):
                                            mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                            mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            mem[mem[64] + 132] = receipt[arg1].field_512
                                            require ext_code.size(address(timelockAddress))
                                            call address(timelockAddress).0x591fcdfe with:
                                                 gas gas_remaining wei
                                                args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                        else:
                                            if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] - 4]
                                            else:
                                                mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                while s < uint255(receipt[arg1][idx + 6].field_1):
                                                    mem[s + mem[64] + 260] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                                    else:
                                        if bool(receipt[arg1][idx + 5].field_0) != 1:
                                            mem[mem[64] + 100] = -mem[64] - 4
                                            if not bool(receipt[arg1][idx + 6].field_0):
                                                mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                                mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len -mem[64] + 60]
                                            else:
                                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                                else:
                                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                    s = 0
                                                    t = sha3(mem[0])
                                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                                        mem[s + 32] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[_485 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len s + -mem[64] + 28]
                                        else:
                                            mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                            mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                            s = 0
                                            t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                            while s < uint255(receipt[arg1][idx + 5].field_1):
                                                mem[s + mem[64] + 196] = stor[t]
                                                s = s + 32
                                                t = t + 1
                                                continue 
                                            mem[_485 + 100] = s + 192
                                            if not bool(receipt[arg1][idx + 6].field_0):
                                                mem[_485 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                                mem[_485 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                mem[_485 + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _485 + s + -mem[64] + 256]
                                            else:
                                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                    mem[_485 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                                else:
                                                    mem[_485 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                    t = 0
                                                    u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                    while t < uint255(receipt[arg1][idx + 6].field_1):
                                                        mem[t + _485 + s + 228] = stor[u]
                                                        t = t + 32
                                                        u = u + 1
                                                        continue 
                                                    mem[_485 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _485 + s + t + -mem[64] + 224]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            if uint8(receipt[arg1].field_2824):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'GovernorAlpha::cancel: cannot cancel executed proposal'
                            require ext_code.size(address(timelockAddress))
                            staticcall address(timelockAddress).0xc1a287e2 with:
                                    gas gas_remaining wei
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] + receipt[arg1].field_512 < receipt[arg1].field_512:
                                revert with 0, 'addition overflow'
                            mem[0] = arg1
                            if block.timestamp < ext_call.return_data[0] + receipt[arg1].field_512:
                                if msg.sender == guardianAddress:
                                    uint8(receipt[arg1].field_2816) = 1
                                    idx = 0
                                    while idx < receipt[arg1].field_768:
                                        require idx < receipt[arg1].field_1024
                                        require idx < receipt[arg1].field_1280
                                        require idx < receipt[arg1].field_1536
                                        mem[0] = sha3(arg1, 4) + 6
                                        _475 = mem[64]
                                        mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                        mem[mem[64] + 68] = 160
                                        if not bool(receipt[arg1][idx + 5].field_0):
                                            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                            mem[mem[64] + 100] = 224
                                            if not bool(receipt[arg1][idx + 6].field_0):
                                                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            else:
                                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                                else:
                                                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                    s = 0
                                                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                                        mem[s + mem[64] + 260] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                                        else:
                                            if bool(receipt[arg1][idx + 5].field_0) != 1:
                                                mem[mem[64] + 100] = -mem[64] - 4
                                                if not bool(receipt[arg1][idx + 6].field_0):
                                                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] + 60]
                                                else:
                                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).0x591fcdfe with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                                    else:
                                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                        s = 0
                                                        t = sha3(mem[0])
                                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                                            mem[s + 32] = stor[t]
                                                            s = s + 32
                                                            t = t + 1
                                                            continue 
                                                        mem[_475 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                                            else:
                                                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                                while s < uint255(receipt[arg1][idx + 5].field_1):
                                                    mem[s + mem[64] + 196] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_475 + 100] = s + 192
                                                if not bool(receipt[arg1][idx + 6].field_0):
                                                    mem[_475 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                                    mem[_475 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                    mem[_475 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _475 + s + -mem[64] + 256]
                                                else:
                                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                        mem[_475 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                                    else:
                                                        mem[_475 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                        t = 0
                                                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                        while t < uint255(receipt[arg1][idx + 6].field_1):
                                                            mem[t + _475 + s + 228] = stor[u]
                                                            t = t + 32
                                                            u = u + 1
                                                            continue 
                                                        mem[_475 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _475 + s + t + -mem[64] + 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 1 > block.number:
                                        revert with 0, 'subtraction underflow'
                                    mem[ceil32(return_data.size) + 100] = address(receipt[arg1].field_256)
                                    mem[ceil32(return_data.size) + 132] = block.number - 1
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0x782d6fe1 with:
                                            gas gas_remaining wei
                                           args address(receipt[arg1].field_256), block.number - 1
                                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                                    if ext_call.return_data[20 len 12] >= 300000 * 10^18:
                                        revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                                    uint8(receipt[arg1].field_2816) = 1
                                    idx = 0
                                    while idx < receipt[arg1].field_768:
                                        require idx < receipt[arg1].field_1024
                                        require idx < receipt[arg1].field_1280
                                        require idx < receipt[arg1].field_1536
                                        mem[0] = sha3(arg1, 4) + 6
                                        _477 = mem[64]
                                        mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                        mem[mem[64] + 68] = 160
                                        if not bool(receipt[arg1][idx + 5].field_0):
                                            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                            mem[mem[64] + 100] = 224
                                            if not bool(receipt[arg1][idx + 6].field_0):
                                                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            else:
                                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                                else:
                                                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                    s = 0
                                                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                                        mem[s + mem[64] + 260] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[_477 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _477 + s + -mem[64] + 256]
                                        else:
                                            if bool(receipt[arg1][idx + 5].field_0) != 1:
                                                mem[mem[64] + 100] = -mem[64] - 4
                                                if not bool(receipt[arg1][idx + 6].field_0):
                                                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] + 60]
                                                else:
                                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).0x591fcdfe with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                                    else:
                                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                        s = 0
                                                        t = sha3(mem[0])
                                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                                            mem[s + 32] = stor[t]
                                                            s = s + 32
                                                            t = t + 1
                                                            continue 
                                                        mem[_477 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                                            else:
                                                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                                while s < uint255(receipt[arg1][idx + 5].field_1):
                                                    mem[s + mem[64] + 196] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_477 + 100] = s + 192
                                                if not bool(receipt[arg1][idx + 6].field_0):
                                                    mem[_477 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                                    mem[_477 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                    mem[_477 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _477 + s + -mem[64] + 256]
                                                else:
                                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                        mem[_477 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                                    else:
                                                        mem[_477 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                        t = 0
                                                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                        while t < uint255(receipt[arg1][idx + 6].field_1):
                                                            mem[t + _477 + s + 228] = stor[u]
                                                            t = t + 32
                                                            u = u + 1
                                                            continue 
                                                        mem[_477 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _477 + s + t + -mem[64] + 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                            else:
                                if msg.sender == guardianAddress:
                                    uint8(receipt[arg1].field_2816) = 1
                                    idx = 0
                                    while idx < receipt[arg1].field_768:
                                        require idx < receipt[arg1].field_1024
                                        require idx < receipt[arg1].field_1280
                                        require idx < receipt[arg1].field_1536
                                        mem[0] = sha3(arg1, 4) + 6
                                        _479 = mem[64]
                                        mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                        mem[mem[64] + 68] = 160
                                        if not bool(receipt[arg1][idx + 5].field_0):
                                            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                            mem[mem[64] + 100] = 224
                                            if not bool(receipt[arg1][idx + 6].field_0):
                                                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            else:
                                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                                else:
                                                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                    s = 0
                                                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                                        mem[s + mem[64] + 260] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), 2 * Mask(256, -1, uint255(receipt[arg1][idx + 6].field_1)), mem[mem[64] + 260 len s]
                                        else:
                                            if bool(receipt[arg1][idx + 5].field_0) != 1:
                                                mem[mem[64] + 100] = -mem[64] - 4
                                                if not bool(receipt[arg1][idx + 6].field_0):
                                                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] + 60]
                                                else:
                                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).0x591fcdfe with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                                    else:
                                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                        s = 0
                                                        t = sha3(mem[0])
                                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                                            mem[s + 32] = stor[t]
                                                            s = s + 32
                                                            t = t + 1
                                                            continue 
                                                        mem[_479 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                                            else:
                                                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                                while s < uint255(receipt[arg1][idx + 5].field_1):
                                                    mem[s + mem[64] + 196] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_479 + 100] = s + 192
                                                if not bool(receipt[arg1][idx + 6].field_0):
                                                    mem[_479 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                                    mem[_479 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                    mem[_479 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _479 + s + -mem[64] + 256]
                                                else:
                                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                        mem[_479 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                                    else:
                                                        mem[_479 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                        t = 0
                                                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                        while t < uint255(receipt[arg1][idx + 6].field_1):
                                                            mem[t + _479 + s + 228] = stor[u]
                                                            t = t + 32
                                                            u = u + 1
                                                            continue 
                                                        mem[_479 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _479 + s + t + -mem[64] + 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 1 > block.number:
                                        revert with 0, 'subtraction underflow'
                                    mem[ceil32(return_data.size) + 100] = address(receipt[arg1].field_256)
                                    mem[ceil32(return_data.size) + 132] = block.number - 1
                                    require ext_code.size(address(stor1.length))
                                    staticcall address(stor1.length).0x782d6fe1 with:
                                            gas gas_remaining wei
                                           args address(receipt[arg1].field_256), block.number - 1
                                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[20 len 12]
                                    if ext_call.return_data[20 len 12] >= 300000 * 10^18:
                                        revert with 0, 'GovernorAlpha::cancel: proposer above threshold'
                                    uint8(receipt[arg1].field_2816) = 1
                                    idx = 0
                                    while idx < receipt[arg1].field_768:
                                        require idx < receipt[arg1].field_1024
                                        require idx < receipt[arg1].field_1280
                                        require idx < receipt[arg1].field_1536
                                        mem[0] = sha3(arg1, 4) + 6
                                        _481 = mem[64]
                                        mem[mem[64]] = 0x591fcdfe00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = address(receipt[arg1][idx + 3].field_0)
                                        mem[mem[64] + 36] = receipt[arg1][idx + 4].field_0
                                        mem[mem[64] + 68] = 160
                                        if not bool(receipt[arg1][idx + 5].field_0):
                                            mem[mem[64] + 164] = receipt[arg1][idx + 5].field_1 % 128
                                            mem[mem[64] + 196] = Mask(248, 8, receipt[arg1][idx + 5].field_0)
                                            mem[mem[64] + 100] = 224
                                            if not bool(receipt[arg1][idx + 6].field_0):
                                                mem[mem[64] + 228] = receipt[arg1][idx + 6].field_1 % 128
                                                mem[mem[64] + 260] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                mem[mem[64] + 132] = receipt[arg1].field_512
                                                require ext_code.size(address(timelockAddress))
                                                call address(timelockAddress).0x591fcdfe with:
                                                     gas gas_remaining wei
                                                    args address(receipt[arg1][idx + 3].field_0), receipt[arg1][idx + 4].field_0, 160, 224, receipt[arg1].field_512, receipt[arg1][idx + 5].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 5].field_0), receipt[arg1][idx + 6].field_0 % 128, Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                            else:
                                                if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] - 4]
                                                else:
                                                    mem[mem[64] + 228] = uint255(receipt[arg1][idx + 6].field_1)
                                                    mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                    s = 0
                                                    t = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                    while s < uint255(receipt[arg1][idx + 6].field_1):
                                                        mem[s + mem[64] + 260] = stor[t]
                                                        s = s + 32
                                                        t = t + 1
                                                        continue 
                                                    mem[_481 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _481 + s + -mem[64] + 256]
                                        else:
                                            if bool(receipt[arg1][idx + 5].field_0) != 1:
                                                mem[mem[64] + 100] = -mem[64] - 4
                                                if not bool(receipt[arg1][idx + 6].field_0):
                                                    mem[0] = receipt[arg1][idx + 6].field_1 % 128
                                                    mem[32] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                    mem[mem[64] + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).0x591fcdfe with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len -mem[64] + 60]
                                                else:
                                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                        mem[mem[64] + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).0x591fcdfe with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                                    else:
                                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                        s = 0
                                                        t = sha3(mem[0])
                                                        while s < uint255(receipt[arg1][idx + 6].field_1):
                                                            mem[s + 32] = stor[t]
                                                            s = s + 32
                                                            t = t + 1
                                                            continue 
                                                        mem[_481 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len s + -mem[64] + 28]
                                            else:
                                                mem[mem[64] + 164] = uint255(receipt[arg1][idx + 5].field_1)
                                                mem[0] = sha3(sha3(arg1, 4) + 5) + idx
                                                s = 0
                                                t = sha3(sha3(sha3(arg1, 4) + 5) + idx)
                                                while s < uint255(receipt[arg1][idx + 5].field_1):
                                                    mem[s + mem[64] + 196] = stor[t]
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                                mem[_481 + 100] = s + 192
                                                if not bool(receipt[arg1][idx + 6].field_0):
                                                    mem[_481 + s + 196] = receipt[arg1][idx + 6].field_1 % 128
                                                    mem[_481 + s + 228] = Mask(248, 8, receipt[arg1][idx + 6].field_0)
                                                    mem[_481 + 132] = receipt[arg1].field_512
                                                    require ext_code.size(address(timelockAddress))
                                                    call address(timelockAddress).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _481 + s + -mem[64] + 256]
                                                else:
                                                    if bool(receipt[arg1][idx + 6].field_0) != 1:
                                                        mem[_481 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len -mem[64] - 4]
                                                    else:
                                                        mem[_481 + s + 196] = uint255(receipt[arg1][idx + 6].field_1)
                                                        mem[0] = sha3(sha3(arg1, 4) + 6) + idx
                                                        t = 0
                                                        u = sha3(sha3(sha3(arg1, 4) + 6) + idx)
                                                        while t < uint255(receipt[arg1][idx + 6].field_1):
                                                            mem[t + _481 + s + 228] = stor[u]
                                                            t = t + 32
                                                            u = u + 1
                                                            continue 
                                                        mem[_481 + 132] = receipt[arg1].field_512
                                                        require ext_code.size(address(timelockAddress))
                                                        call address(timelockAddress).mem[mem[64] len 4] with:
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len _481 + s + t + -mem[64] + 224]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        continue 
    emit ProposalCanceled(arg1);
}



}
