contract main {




// =====================  Runtime code  =====================


#
#  - startRound()
#
const sub_9bc335d5(?) = sha3(code.data[5365 len 19075])


address owner;
uint256 stor1;
uint8 stor2;
uint256 stor2;
uint256 currentRound;
address devAddr;
address rewardDistributorAddress;
uint256 sub_2e41cf80;
uint256 sub_3b11af5c;
uint256 sub_ce702329;
uint256 sub_4bfdba62;
array of address sub_2b64f2c0;
mapping of address exchanges;
mapping of uint256 sub_3835c95e;
mapping of uint256 sub_47495b75;
mapping of uint256 tokenFees;

function exchanges(uint256 arg1) {
    require calldata.size - 4 >= 32
    return exchanges[arg1]
}

function sub_2b64f2c0(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2b64f2c0.length
    return sub_2b64f2c0[arg1]
}

function sub_2e41cf80(?) {
    return sub_2e41cf80
}

function sub_3835c95e(?) {
    require calldata.size - 4 >= 32
    return sub_3835c95e[arg1]
}

function tokenFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenFees[arg1]
}

function sub_3b11af5c(?) {
    return sub_3b11af5c
}

function sub_47495b75(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_47495b75[arg1]
}

function sub_4bfdba62(?) {
    return sub_4bfdba62
}

function paused() {
    return bool(uint8(stor2))
}

function currentRound() {
    return currentRound
}

function owner() {
    return owner
}

function rewardDistributor() {
    return rewardDistributorAddress
}

function sub_ce702329(?) {
    return sub_ce702329
}

function devAddr() {
    return devAddr
}

function sub_82566662(?) {
    return address(sha3(0, this.address, currentRound, sha3(code.data[5365 len 19075])))
}

function sub_c9d8852e(?) {
    require calldata.size - 4 >= 32
    return address(sha3(0, this.address, arg1, sha3(code.data[5365 len 19075])))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0f0064b1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4bfdba62 = arg1
}

function sub_32422104(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b11af5c = arg1
}

function sub_ab680917(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ce702329 = arg1
}

function sub_db07bab4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e41cf80 = arg1
}

function togglePause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor2) = not uint8(stor2) or Mask(248, 8, uint256(stor2))
}

function setDevAddr(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddr = arg1
}

function sub_c48b7d37(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid id.'
    exchanges[arg1] = address(arg2)
    sub_3835c95e[arg1] = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setToken(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 >= 10000:
        revert with 0, 'fee too high.'
    if not exchanges[arg2]:
        revert with 0, 'unset exchange.'
    sub_47495b75[address(arg1)] = arg2
    tokenFees[address(arg1)] = arg3
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x82566662(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc48b7d37(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9bc335d5(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x82566662(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return address(sha3(0, this.address, currentRound, sha3(code.data[5365 len 19075])))
                    if unknown_0x8a19c8bc(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return currentRound
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                if unknown_0x9bc335d5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sha3(code.data[5365 len 19075])
                if uint32(call.func_hash) >> 224 != unknown_0xa7311f53(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xab680917(?????):
                        require unknown_0xacc2166a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return rewardDistributorAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_ce702329 = arg1
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg3 >= 10000:
                        revert with 0, 'fee too high.'
                    if not exchanges[arg2]:
                        revert with 0, 'unset exchange.'
                    sub_47495b75[address(arg1)] = arg2
                    tokenFees[address(arg1)] = arg3
            else:
                if unknown_0xce702329(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xc48b7d37(?????):
                        if unknown_0xc4ae3168(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            uint256(stor2) = not uint8(stor2) or Mask(248, 8, uint256(stor2))
                        require unknown_0xc9d8852e(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return address(sha3(0, this.address, arg1, sha3(code.data[5365 len 19075])))
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg2 == address(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not arg1:
                        revert with 0, 'invalid id.'
                    exchanges[arg1] = address(arg2)
                    sub_3835c95e[arg1] = arg3
                else:
                    if unknown_0xce702329(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_ce702329
                    if unknown_0xda09c72c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return devAddr
                    if unknown_0xdb07bab4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_2e41cf80 = arg1
                    else:
                        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
        else:
            if unknown_0x3b11af5c(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x2e41cf80(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x0f0064b1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_4bfdba62 = arg1
                    if unknown_0x2839fc29(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return exchanges[arg1]
                    require unknown_0x2b64f2c0(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 < sub_2b64f2c0.length
                    return sub_2b64f2c0[arg1]
                if unknown_0x2e41cf80(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_2e41cf80
                if unknown_0x32422104(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_3b11af5c = arg1
                if unknown_0x3835c95e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return sub_3835c95e[arg1]
                require unknown_0x39e16d64(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return tokenFees[arg1]
            if unknown_0x55e3f086(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x3b11af5c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_3b11af5c
                if uint32(call.func_hash) >> 224 != unknown_0x47495b75(?????):
                    require unknown_0x4bfdba62(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_4bfdba62
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return sub_47495b75[arg1]
            if uint32(call.func_hash) >> 224 != unknown_0x55e3f086(?????):
                if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(uint8(stor2))
                if unknown_0x6ebb64a2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    devAddr = address(arg1)
                else:
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
            else:
                require not msg.value
                if stor1 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor1 = 2
                if uint8(stor2):
                    revert with 0, 'Game is paused.'
                if currentRound:
                    require ext_code.size(address(sha3(0, this.address, currentRound, sha3(code.data[5365 len 19075]))))
                    staticcall address(sha3(0, this.address, currentRound, sha3(code.data[5365 len 19075]))).hasEnded() with:
                            gas gas_remaining wei
                    mem[19381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'A round is running.'
                    require ext_code.size(address(sha3(0, this.address, currentRound, sha3(code.data[5365 len 19075]))))
                    staticcall address(sha3(0, this.address, currentRound, sha3(code.data[5365 len 19075]))).0x945af34f with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 19381] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if block.timestamp < ext_call.return_data[0]:
                        revert with 0, 17
                    if block.timestamp - ext_call.return_data[0] <= 900:
                        revert with 0, 'Must wait one hour since the last round.'
                    if currentRound == -1:
                        revert with 0, 17
                    currentRound++
                    if not currentRound:
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Create2: insufficient balance'
                        create2 contract with 0 wei
                                        salt: currentRound
                                        code: code.data[5365 len 19075]
                        if not address(create2.new_address):
                            revert with 0, 'Create2: Failed on deploy'
                        if eth.balance(this.address):
                            call address(create2.new_address) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, 10, Mask(80, 176, 0, 48, 0) >> 176, 0
                    else:
                        s = 0
                        idx = currentRound
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[(2 * ceil32(return_data.size)) + 19381] = s
                        if s:
                            mem[(2 * ceil32(return_data.size)) + 19413 len s] = call.data[calldata.size len s]
                        t = s
                        idx = currentRound
                        while idx:
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if not t:
                                revert with 0, 17
                            if t - 1 >= mem[(2 * ceil32(return_data.size)) + 19381]:
                                revert with 0, 50
                            mem[t + (2 * ceil32(return_data.size)) + 19412 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19445] = 0x7465737420726e64200000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19454 len ceil32(mem[(2 * ceil32(return_data.size)) + 19381])] = mem[(2 * ceil32(return_data.size)) + 19413 len ceil32(mem[(2 * ceil32(return_data.size)) + 19381])]
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Create2: insufficient balance'
                        create2 contract with 0 wei
                                        salt: currentRound
                                        code: code.data[5365 len 19075]
                        if not address(create2.new_address):
                            revert with 0, 'Create2: Failed on deploy'
                        if eth.balance(this.address):
                            call address(create2.new_address) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                        require ext_code.size(address(create2.new_address))
                        if floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) <= mem[(2 * ceil32(return_data.size)) + 19381] + 9:
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args Array(len=mem[(2 * ceil32(return_data.size)) + 19381] + 9, data=mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19445 len mem[(2 * ceil32(return_data.size)) + 19381] + 9], Mask(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9, -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9) + 256, 19075) >> -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9) + 256), address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62
                        else:
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args Array(len=mem[(2 * ceil32(return_data.size)) + 19381] + 9, data=Mask(8 * mem[(2 * ceil32(return_data.size)) + 19381] + 9, -(8 * mem[(2 * ceil32(return_data.size)) + 19381] + 9) + 256, mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19445 len mem[(2 * ceil32(return_data.size)) + 19381] + 9], Mask(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9, -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9) + 256, 19075) >> -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9) + 256) << (8 * mem[(2 * ceil32(return_data.size)) + 19381] + 9) - 256, Mask(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9, -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9) + 256, 0) >> -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 19381] + 40) + -mem[(2 * ceil32(return_data.size)) + 19381] - 9) + 256), address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62
                else:
                    if currentRound == -1:
                        revert with 0, 17
                    currentRound++
                    if not currentRound:
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Create2: insufficient balance'
                        create2 contract with 0 wei
                                        salt: currentRound
                                        code: code.data[5365 len 19075]
                        if not address(create2.new_address):
                            revert with 0, 'Create2: Failed on deploy'
                        if eth.balance(this.address):
                            call address(create2.new_address) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, 10, Mask(80, 176, 0, 48, 0) >> 176, 0
                    else:
                        s = 0
                        idx = currentRound
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[128] = s
                        mem[64] = ceil32(s) + 160
                        if not s:
                            t = s
                            idx = currentRound
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _669 = mem[64]
                            mem[mem[64] + 32] = 0x7465737420726e64200000000000000000000000000000000000000000000000
                            _673 = mem[128]
                            mem[mem[64] + 41 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_673) <= _673:
                                _971 = mem[64]
                                mem[mem[64]] = _673 + 9
                                mem[64] = _673 + mem[64] + 41
                                mem[_673 + _669 + 73 len 19075] = code.data[5365 len 19075]
                                mem[_673 + _669 + 41] = 19075
                                mem[64] = floor32(_673 + _669 + 19179)
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Create2: insufficient balance'
                                create2 contract with 0 wei
                                                salt: currentRound
                                                code: code.data[5365 len 19075]
                                if not address(create2.new_address):
                                    revert with 0, 'Create2: Failed on deploy'
                                if not eth.balance(this.address):
                                    mem[floor32(_673 + _669 + 19179)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_673 + _669 + 19179) + 4] = 256
                                    _1069 = mem[_971]
                                    mem[floor32(_673 + _669 + 19179) + 260] = mem[_971]
                                    mem[floor32(_673 + _669 + 19179) + 292 len ceil32(_1069)] = mem[_971 + 32 len ceil32(_1069)]
                                    if ceil32(_1069) > _1069:
                                        mem[floor32(_673 + _669 + 19179) + _1069 + 292] = 0
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).0x45ca09f8 with:
                                         gas gas_remaining wei
                                        args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_673 + _669 + 19179) + 260 len ceil32(_1069) + 32]
                                else:
                                    call address(create2.new_address) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Fantom transfer failed.'
                                        mem[floor32(_673 + _669 + 19179)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                        mem[floor32(_673 + _669 + 19179) + 4] = 256
                                        _1137 = mem[_971]
                                        mem[floor32(_673 + _669 + 19179) + 260] = mem[_971]
                                        mem[floor32(_673 + _669 + 19179) + 292 len ceil32(_1137)] = mem[_971 + 32 len ceil32(_1137)]
                                        if ceil32(_1137) > _1137:
                                            mem[floor32(_673 + _669 + 19179) + _1137 + 292] = 0
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).0x45ca09f8 with:
                                             gas gas_remaining wei
                                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_673 + _669 + 19179) + 260 len ceil32(_1137) + 32]
                                    else:
                                        mem[64] = floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 1
                                        mem[floor32(_673 + _669 + 19179)] = return_data.size
                                        mem[floor32(_673 + _669 + 19179) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Fantom transfer failed.'
                                        mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                        mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 5] = 256
                                        _1138 = mem[_971]
                                        mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 261] = mem[_971]
                                        mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 293 len ceil32(_1138)] = mem[_971 + 32 len ceil32(_1138)]
                                        if ceil32(_1138) > _1138:
                                            mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + _1138 + 293] = 0
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).0x45ca09f8 with:
                                             gas gas_remaining wei
                                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 261 len ceil32(_1138) + 32]
                            else:
                                mem[mem[64] + _673 + 41] = 0
                                _979 = mem[64]
                                mem[mem[64]] = _673 + _669 + -mem[64] + 9
                                mem[64] = _673 + _669 + 41
                                mem[_673 + _669 + 73 len 19075] = code.data[5365 len 19075]
                                mem[_673 + _669 + 41] = 19075
                                mem[64] = floor32(_673 + _669 + 19179)
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Create2: insufficient balance'
                                create2 contract with 0 wei
                                                salt: currentRound
                                                code: code.data[5365 len 19075]
                                if not address(create2.new_address):
                                    revert with 0, 'Create2: Failed on deploy'
                                if not eth.balance(this.address):
                                    mem[floor32(_673 + _669 + 19179)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_673 + _669 + 19179) + 4] = 256
                                    _1083 = mem[_979]
                                    mem[floor32(_673 + _669 + 19179) + 260] = mem[_979]
                                    mem[floor32(_673 + _669 + 19179) + 292 len ceil32(_1083)] = mem[_979 + 32 len ceil32(_1083)]
                                    if ceil32(_1083) > _1083:
                                        mem[floor32(_673 + _669 + 19179) + _1083 + 292] = 0
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).0x45ca09f8 with:
                                         gas gas_remaining wei
                                        args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_673 + _669 + 19179) + 260 len ceil32(_1083) + 32]
                                else:
                                    call address(create2.new_address) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Fantom transfer failed.'
                                        mem[floor32(_673 + _669 + 19179)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                        mem[floor32(_673 + _669 + 19179) + 4] = 256
                                        _1155 = mem[_979]
                                        mem[floor32(_673 + _669 + 19179) + 260] = mem[_979]
                                        mem[floor32(_673 + _669 + 19179) + 292 len ceil32(_1155)] = mem[_979 + 32 len ceil32(_1155)]
                                        if ceil32(_1155) > _1155:
                                            mem[floor32(_673 + _669 + 19179) + _1155 + 292] = 0
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).0x45ca09f8 with:
                                             gas gas_remaining wei
                                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_673 + _669 + 19179) + 260 len ceil32(_1155) + 32]
                                    else:
                                        mem[64] = floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 1
                                        mem[floor32(_673 + _669 + 19179)] = return_data.size
                                        mem[floor32(_673 + _669 + 19179) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Fantom transfer failed.'
                                        mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                        mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 5] = 256
                                        _1156 = mem[_979]
                                        mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 261] = mem[_979]
                                        mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 293 len ceil32(_1156)] = mem[_979 + 32 len ceil32(_1156)]
                                        if ceil32(_1156) > _1156:
                                            mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + _1156 + 293] = 0
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).0x45ca09f8 with:
                                             gas gas_remaining wei
                                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_673 + _669 + 19179) + ceil32(return_data.size) + 261 len ceil32(_1156) + 32]
                        else:
                            mem[160 len s] = call.data[calldata.size len s]
                            t = s
                            idx = currentRound
                            while idx:
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if not t:
                                    revert with 0, 17
                                if t - 1 >= mem[128]:
                                    revert with 0, 50
                                mem[t + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            _670 = mem[64]
                            mem[mem[64] + 32] = 0x7465737420726e64200000000000000000000000000000000000000000000000
                            _674 = mem[128]
                            mem[mem[64] + 41 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                            if ceil32(_674) <= _674:
                                _973 = mem[64]
                                mem[mem[64]] = _674 + 9
                                mem[64] = _674 + mem[64] + 41
                                mem[_674 + _670 + 73 len 19075] = code.data[5365 len 19075]
                                mem[_674 + _670 + 41] = 19075
                                mem[64] = floor32(_674 + _670 + 19179)
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Create2: insufficient balance'
                                create2 contract with 0 wei
                                                salt: currentRound
                                                code: code.data[5365 len 19075]
                                if not address(create2.new_address):
                                    revert with 0, 'Create2: Failed on deploy'
                                if not eth.balance(this.address):
                                    mem[floor32(_674 + _670 + 19179)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_674 + _670 + 19179) + 4] = 256
                                    _1074 = mem[_973]
                                    mem[floor32(_674 + _670 + 19179) + 260] = mem[_973]
                                    mem[floor32(_674 + _670 + 19179) + 292 len ceil32(_1074)] = mem[_973 + 32 len ceil32(_1074)]
                                    if ceil32(_1074) > _1074:
                                        mem[floor32(_674 + _670 + 19179) + _1074 + 292] = 0
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).0x45ca09f8 with:
                                         gas gas_remaining wei
                                        args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_674 + _670 + 19179) + 260 len ceil32(_1074) + 32]
                                else:
                                    call address(create2.new_address) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Fantom transfer failed.'
                                        mem[floor32(_674 + _670 + 19179)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                        mem[floor32(_674 + _670 + 19179) + 4] = 256
                                        _1144 = mem[_973]
                                        mem[floor32(_674 + _670 + 19179) + 260] = mem[_973]
                                        mem[floor32(_674 + _670 + 19179) + 292 len ceil32(_1144)] = mem[_973 + 32 len ceil32(_1144)]
                                        if ceil32(_1144) > _1144:
                                            mem[floor32(_674 + _670 + 19179) + _1144 + 292] = 0
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).0x45ca09f8 with:
                                             gas gas_remaining wei
                                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_674 + _670 + 19179) + 260 len ceil32(_1144) + 32]
                                    else:
                                        mem[64] = floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 1
                                        mem[floor32(_674 + _670 + 19179)] = return_data.size
                                        mem[floor32(_674 + _670 + 19179) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Fantom transfer failed.'
                                        mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                        mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 5] = 256
                                        _1145 = mem[_973]
                                        mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 261] = mem[_973]
                                        mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 293 len ceil32(_1145)] = mem[_973 + 32 len ceil32(_1145)]
                                        if ceil32(_1145) > _1145:
                                            mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + _1145 + 293] = 0
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).0x45ca09f8 with:
                                             gas gas_remaining wei
                                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 261 len ceil32(_1145) + 32]
                            else:
                                mem[mem[64] + _674 + 41] = 0
                                _981 = mem[64]
                                mem[mem[64]] = _674 + _670 + -mem[64] + 9
                                mem[64] = _674 + _670 + 41
                                mem[_674 + _670 + 73 len 19075] = code.data[5365 len 19075]
                                mem[_674 + _670 + 41] = 19075
                                mem[64] = floor32(_674 + _670 + 19179)
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Create2: insufficient balance'
                                create2 contract with 0 wei
                                                salt: currentRound
                                                code: code.data[5365 len 19075]
                                if not address(create2.new_address):
                                    revert with 0, 'Create2: Failed on deploy'
                                if not eth.balance(this.address):
                                    mem[floor32(_674 + _670 + 19179)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_674 + _670 + 19179) + 4] = 256
                                    _1085 = mem[_981]
                                    mem[floor32(_674 + _670 + 19179) + 260] = mem[_981]
                                    mem[floor32(_674 + _670 + 19179) + 292 len ceil32(_1085)] = mem[_981 + 32 len ceil32(_1085)]
                                    if ceil32(_1085) > _1085:
                                        mem[floor32(_674 + _670 + 19179) + _1085 + 292] = 0
                                    require ext_code.size(address(create2.new_address))
                                    call address(create2.new_address).0x45ca09f8 with:
                                         gas gas_remaining wei
                                        args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_674 + _670 + 19179) + 260 len ceil32(_1085) + 32]
                                else:
                                    call address(create2.new_address) with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Fantom transfer failed.'
                                        mem[floor32(_674 + _670 + 19179)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                        mem[floor32(_674 + _670 + 19179) + 4] = 256
                                        _1157 = mem[_981]
                                        mem[floor32(_674 + _670 + 19179) + 260] = mem[_981]
                                        mem[floor32(_674 + _670 + 19179) + 292 len ceil32(_1157)] = mem[_981 + 32 len ceil32(_1157)]
                                        if ceil32(_1157) > _1157:
                                            mem[floor32(_674 + _670 + 19179) + _1157 + 292] = 0
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).0x45ca09f8 with:
                                             gas gas_remaining wei
                                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_674 + _670 + 19179) + 260 len ceil32(_1157) + 32]
                                    else:
                                        mem[64] = floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 1
                                        mem[floor32(_674 + _670 + 19179)] = return_data.size
                                        mem[floor32(_674 + _670 + 19179) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Fantom transfer failed.'
                                        mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                                        mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 5] = 256
                                        _1158 = mem[_981]
                                        mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 261] = mem[_981]
                                        mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 293 len ceil32(_1158)] = mem[_981 + 32 len ceil32(_1158)]
                                        if ceil32(_1158) > _1158:
                                            mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + _1158 + 293] = 0
                                        require ext_code.size(address(create2.new_address))
                                        call address(create2.new_address).0x45ca09f8 with:
                                             gas gas_remaining wei
                                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_674 + _670 + 19179) + ceil32(return_data.size) + 261 len ceil32(_1158) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_2b64f2c0.length++
                sub_2b64f2c0[sub_2b64f2c0.length] = address(create2.new_address)
                stor1 = 1
}



}
