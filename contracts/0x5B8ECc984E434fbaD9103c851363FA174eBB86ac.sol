contract main {




// =====================  Runtime code  =====================


const sub_9bc335d5(?) = sha3(code.data[4819 len 19029])


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

function exchanges(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return exchanges[arg1]
}

function sub_2b64f2c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2b64f2c0.length
    return sub_2b64f2c0[arg1]
}

function sub_2e41cf80(?) payable {
    return sub_2e41cf80
}

function sub_3835c95e(?) payable {
    require calldata.size - 4 >= 32
    return sub_3835c95e[arg1]
}

function tokenFees(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenFees[arg1]
}

function sub_3b11af5c(?) payable {
    return sub_3b11af5c
}

function sub_47495b75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_47495b75[arg1]
}

function sub_4bfdba62(?) payable {
    return sub_4bfdba62
}

function paused() payable {
    return bool(uint8(stor2))
}

function currentRound() payable {
    return currentRound
}

function owner() payable {
    return owner
}

function rewardDistributor() payable {
    return rewardDistributorAddress
}

function sub_ce702329(?) payable {
    return sub_ce702329
}

function devAddr() payable {
    return devAddr
}

function _fallback() payable {
    revert
}

function sub_82566662(?) payable {
    return address(sha3(0, this.address, currentRound, sha3(code.data[4819 len 19029])))
}

function sub_c9d8852e(?) payable {
    require calldata.size - 4 >= 32
    return address(sha3(0, this.address, arg1, sha3(code.data[4819 len 19029])))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0f0064b1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4bfdba62 = arg1
}

function sub_32422104(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3b11af5c = arg1
}

function sub_ab680917(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ce702329 = arg1
}

function sub_db07bab4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e41cf80 = arg1
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor2) = not uint8(stor2) or Mask(248, 8, uint256(stor2))
}

function setDevAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddr = arg1
}

function setToken(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_47495b75[address(arg1)] = arg2
    tokenFees[address(arg1)] = arg3
}

function sub_c48b7d37(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid id'
    exchanges[arg1] = address(arg2)
    sub_3835c95e[arg1] = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function startRound() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor2):
        revert with 0, 'Game is paused.'
    if not currentRound:
        if currentRound == -1:
            revert with 0, 17
        currentRound++
        if not currentRound:
            if eth.balance(this.address) < 0:
                revert with 0, 'Create2: insufficient balance'
            create2 contract with 0 wei
                            salt: currentRound
                            code: code.data[4819 len 19029]
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
            mem[96] = s
            mem[64] = ceil32(s) + 128
            if not s:
                t = s
                idx = currentRound
                while idx:
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if not t:
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _578 = mem[64]
                mem[mem[64] + 32] = 0x7465737420726e64200000000000000000000000000000000000000000000000
                _582 = mem[96]
                mem[mem[64] + 41 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _880 = mem[64]
                    mem[mem[64]] = mem[96] + 9
                    mem[64] = _582 + mem[64] + 41
                    mem[_582 + _578 + 73 len 19029] = code.data[4819 len 19029]
                    mem[_582 + _578 + 41] = 19029
                    mem[64] = floor32(_582 + _578 + 19133)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Create2: insufficient balance'
                    create2 contract with 0 wei
                                    salt: currentRound
                                    code: code.data[4819 len 19029]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
                    if not eth.balance(this.address):
                        mem[floor32(_582 + _578 + 19133)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                        mem[floor32(_582 + _578 + 19133) + 4] = 256
                        _978 = mem[_880]
                        mem[floor32(_582 + _578 + 19133) + 260] = mem[_880]
                        mem[floor32(_582 + _578 + 19133) + 292 len ceil32(_978)] = mem[_880 + 32 len ceil32(_978)]
                        if ceil32(_978) > _978:
                            mem[floor32(_582 + _578 + 19133) + _978 + 292] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_582 + _578 + 19133) + 260 len ceil32(_978) + 32]
                    else:
                        call address(create2.new_address) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(_582 + _578 + 19133)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(_582 + _578 + 19133) + 4] = 256
                            _1046 = mem[_880]
                            mem[floor32(_582 + _578 + 19133) + 260] = mem[_880]
                            mem[floor32(_582 + _578 + 19133) + 292 len ceil32(_1046)] = mem[_880 + 32 len ceil32(_1046)]
                            if ceil32(_1046) > _1046:
                                mem[floor32(_582 + _578 + 19133) + _1046 + 292] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_582 + _578 + 19133) + 260 len ceil32(_1046) + 32]
                        else:
                            mem[64] = floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 1
                            mem[floor32(_582 + _578 + 19133)] = return_data.size
                            mem[floor32(_582 + _578 + 19133) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 5] = 256
                            _1047 = mem[_880]
                            mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 261] = mem[_880]
                            mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 293 len ceil32(_1047)] = mem[_880 + 32 len ceil32(_1047)]
                            if ceil32(_1047) > _1047:
                                mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + _1047 + 293] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 261 len ceil32(_1047) + 32]
                else:
                    mem[mem[64] + mem[96] + 41] = 0
                    _888 = mem[64]
                    mem[mem[64]] = mem[96] + 9
                    mem[64] = _582 + mem[64] + 41
                    mem[_582 + _578 + 73 len 19029] = code.data[4819 len 19029]
                    mem[_582 + _578 + 41] = 19029
                    mem[64] = floor32(_582 + _578 + 19133)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Create2: insufficient balance'
                    create2 contract with 0 wei
                                    salt: currentRound
                                    code: code.data[4819 len 19029]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
                    if not eth.balance(this.address):
                        mem[floor32(_582 + _578 + 19133)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                        mem[floor32(_582 + _578 + 19133) + 4] = 256
                        _992 = mem[_888]
                        mem[floor32(_582 + _578 + 19133) + 260] = mem[_888]
                        mem[floor32(_582 + _578 + 19133) + 292 len ceil32(_992)] = mem[_888 + 32 len ceil32(_992)]
                        if ceil32(_992) > _992:
                            mem[floor32(_582 + _578 + 19133) + _992 + 292] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_582 + _578 + 19133) + 260 len ceil32(_992) + 32]
                    else:
                        call address(create2.new_address) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(_582 + _578 + 19133)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(_582 + _578 + 19133) + 4] = 256
                            _1064 = mem[_888]
                            mem[floor32(_582 + _578 + 19133) + 260] = mem[_888]
                            mem[floor32(_582 + _578 + 19133) + 292 len ceil32(_1064)] = mem[_888 + 32 len ceil32(_1064)]
                            if ceil32(_1064) > _1064:
                                mem[floor32(_582 + _578 + 19133) + _1064 + 292] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_582 + _578 + 19133) + 260 len ceil32(_1064) + 32]
                        else:
                            mem[64] = floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 1
                            mem[floor32(_582 + _578 + 19133)] = return_data.size
                            mem[floor32(_582 + _578 + 19133) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 5] = 256
                            _1065 = mem[_888]
                            mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 261] = mem[_888]
                            mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 293 len ceil32(_1065)] = mem[_888 + 32 len ceil32(_1065)]
                            if ceil32(_1065) > _1065:
                                mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + _1065 + 293] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_582 + _578 + 19133) + ceil32(return_data.size) + 261 len ceil32(_1065) + 32]
            else:
                mem[128 len s] = call.data[calldata.size len s]
                t = s
                idx = currentRound
                while idx:
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if not t:
                        revert with 0, 17
                    if t - 1 >= mem[96]:
                        revert with 0, 50
                    mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                _579 = mem[64]
                mem[mem[64] + 32] = 0x7465737420726e64200000000000000000000000000000000000000000000000
                _583 = mem[96]
                mem[mem[64] + 41 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _882 = mem[64]
                    mem[mem[64]] = mem[96] + 9
                    mem[64] = _583 + mem[64] + 41
                    mem[_583 + _579 + 73 len 19029] = code.data[4819 len 19029]
                    mem[_583 + _579 + 41] = 19029
                    mem[64] = floor32(_583 + _579 + 19133)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Create2: insufficient balance'
                    create2 contract with 0 wei
                                    salt: currentRound
                                    code: code.data[4819 len 19029]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
                    if not eth.balance(this.address):
                        mem[floor32(_583 + _579 + 19133)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                        mem[floor32(_583 + _579 + 19133) + 4] = 256
                        _983 = mem[_882]
                        mem[floor32(_583 + _579 + 19133) + 260] = mem[_882]
                        mem[floor32(_583 + _579 + 19133) + 292 len ceil32(_983)] = mem[_882 + 32 len ceil32(_983)]
                        if ceil32(_983) > _983:
                            mem[floor32(_583 + _579 + 19133) + _983 + 292] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_583 + _579 + 19133) + 260 len ceil32(_983) + 32]
                    else:
                        call address(create2.new_address) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(_583 + _579 + 19133)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(_583 + _579 + 19133) + 4] = 256
                            _1053 = mem[_882]
                            mem[floor32(_583 + _579 + 19133) + 260] = mem[_882]
                            mem[floor32(_583 + _579 + 19133) + 292 len ceil32(_1053)] = mem[_882 + 32 len ceil32(_1053)]
                            if ceil32(_1053) > _1053:
                                mem[floor32(_583 + _579 + 19133) + _1053 + 292] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_583 + _579 + 19133) + 260 len ceil32(_1053) + 32]
                        else:
                            mem[64] = floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 1
                            mem[floor32(_583 + _579 + 19133)] = return_data.size
                            mem[floor32(_583 + _579 + 19133) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 5] = 256
                            _1054 = mem[_882]
                            mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 261] = mem[_882]
                            mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 293 len ceil32(_1054)] = mem[_882 + 32 len ceil32(_1054)]
                            if ceil32(_1054) > _1054:
                                mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + _1054 + 293] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 261 len ceil32(_1054) + 32]
                else:
                    mem[mem[64] + mem[96] + 41] = 0
                    _890 = mem[64]
                    mem[mem[64]] = mem[96] + 9
                    mem[64] = _583 + mem[64] + 41
                    mem[_583 + _579 + 73 len 19029] = code.data[4819 len 19029]
                    mem[_583 + _579 + 41] = 19029
                    mem[64] = floor32(_583 + _579 + 19133)
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Create2: insufficient balance'
                    create2 contract with 0 wei
                                    salt: currentRound
                                    code: code.data[4819 len 19029]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
                    if not eth.balance(this.address):
                        mem[floor32(_583 + _579 + 19133)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                        mem[floor32(_583 + _579 + 19133) + 4] = 256
                        _994 = mem[_890]
                        mem[floor32(_583 + _579 + 19133) + 260] = mem[_890]
                        mem[floor32(_583 + _579 + 19133) + 292 len ceil32(_994)] = mem[_890 + 32 len ceil32(_994)]
                        if ceil32(_994) > _994:
                            mem[floor32(_583 + _579 + 19133) + _994 + 292] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_583 + _579 + 19133) + 260 len ceil32(_994) + 32]
                    else:
                        call address(create2.new_address) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(_583 + _579 + 19133)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(_583 + _579 + 19133) + 4] = 256
                            _1066 = mem[_890]
                            mem[floor32(_583 + _579 + 19133) + 260] = mem[_890]
                            mem[floor32(_583 + _579 + 19133) + 292 len ceil32(_1066)] = mem[_890 + 32 len ceil32(_1066)]
                            if ceil32(_1066) > _1066:
                                mem[floor32(_583 + _579 + 19133) + _1066 + 292] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_583 + _579 + 19133) + 260 len ceil32(_1066) + 32]
                        else:
                            mem[64] = floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 1
                            mem[floor32(_583 + _579 + 19133)] = return_data.size
                            mem[floor32(_583 + _579 + 19133) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 5] = 256
                            _1067 = mem[_890]
                            mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 261] = mem[_890]
                            mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 293 len ceil32(_1067)] = mem[_890 + 32 len ceil32(_1067)]
                            if ceil32(_1067) > _1067:
                                mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + _1067 + 293] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_583 + _579 + 19133) + ceil32(return_data.size) + 261 len ceil32(_1067) + 32]
    else:
        mem[128 len 19029] = code.data[4819 len 19029]
        mem[96] = 19029
        mem[19200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[19201] = address(this.address)
        mem[19221] = currentRound
        mem[19253] = sha3(code.data[4819 len 19029])
        mem[19168] = 85
        require ext_code.size(address(sha3(0, this.address, currentRound, sha3(code.data[4819 len 19029]))))
        staticcall address(sha3(0, this.address, currentRound, sha3(code.data[4819 len 19029]))).hasEnded() with:
                gas gas_remaining wei
        mem[19285] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'A round is running.'
        require ext_code.size(address(sha3(0, this.address, currentRound, sha3(code.data[4819 len 19029]))))
        staticcall address(sha3(0, this.address, currentRound, sha3(code.data[4819 len 19029]))).0x945af34f with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 19285] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < ext_call.return_data[0]:
            revert with 0, 17
        if block.timestamp - ext_call.return_data[0] <= 3600:
            revert with 0, 'Must wait one hour since the last round.'
        if currentRound == -1:
            revert with 0, 17
        currentRound++
        if not currentRound:
            if eth.balance(this.address) < 0:
                revert with 0, 'Create2: insufficient balance'
            create2 contract with 0 wei
                            salt: currentRound
                            code: code.data[4819 len 19029]
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
            mem[(2 * ceil32(return_data.size)) + 19285] = s
            if not s:
                t = s
                idx = currentRound
                while idx:
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if not t:
                        revert with 0, 17
                    if t - 1 >= mem[(2 * ceil32(return_data.size)) + 19285]:
                        revert with 0, 50
                    mem[t + (2 * ceil32(return_data.size)) + 19316 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349] = 0x7465737420726e64200000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19358 len ceil32(mem[(2 * ceil32(return_data.size)) + 19285])] = mem[(2 * ceil32(return_data.size)) + 19317 len ceil32(mem[(2 * ceil32(return_data.size)) + 19285])]
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317] = mem[(2 * ceil32(return_data.size)) + 19285] + 9
                mem[mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 19390 len 19029] = code.data[4819 len 19029]
                mem[mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 19358] = 19029
                mem[64] = floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Create2: insufficient balance'
                create2 contract with 0 wei
                                salt: currentRound
                                code: code.data[4819 len 19029]
                if not address(create2.new_address):
                    revert with 0, 'Create2: Failed on deploy'
                if ceil32(mem[(2 * ceil32(return_data.size)) + 19285]) <= mem[(2 * ceil32(return_data.size)) + 19285]:
                    if not eth.balance(this.address):
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 4] = 256
                        _968 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 292 len ceil32(_968)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_968)]
                        if ceil32(_968) > _968:
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + _968 + 292] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260 len ceil32(_968) + 32]
                    else:
                        call address(create2.new_address) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 4] = 256
                            _1032 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 292 len ceil32(_1032)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_1032)]
                            if ceil32(_1032) > _1032:
                                mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + _1032 + 292] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260 len ceil32(_1032) + 32]
                        else:
                            mem[64] = floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 1
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = return_data.size
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 5] = 256
                            _1033 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 261] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 293 len ceil32(_1033)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_1033)]
                            if ceil32(_1033) > _1033:
                                mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + _1033 + 293] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 261 len ceil32(_1033) + 32]
                else:
                    if not eth.balance(this.address):
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 4] = 256
                        _988 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 292 len ceil32(_988)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_988)]
                        if ceil32(_988) > _988:
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + _988 + 292] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260 len ceil32(_988) + 32]
                    else:
                        call address(create2.new_address) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 4] = 256
                            _1060 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 292 len ceil32(_1060)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_1060)]
                            if ceil32(_1060) > _1060:
                                mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + _1060 + 292] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260 len ceil32(_1060) + 32]
                        else:
                            mem[64] = floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 1
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = return_data.size
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 5] = 256
                            _1061 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 261] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 293 len ceil32(_1061)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_1061)]
                            if ceil32(_1061) > _1061:
                                mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + _1061 + 293] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 261 len ceil32(_1061) + 32]
            else:
                mem[(2 * ceil32(return_data.size)) + 19317 len s] = call.data[calldata.size len s]
                t = s
                idx = currentRound
                while idx:
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if not t:
                        revert with 0, 17
                    if t - 1 >= mem[(2 * ceil32(return_data.size)) + 19285]:
                        revert with 0, 50
                    mem[t + (2 * ceil32(return_data.size)) + 19316 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349] = 0x7465737420726e64200000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19358 len ceil32(mem[(2 * ceil32(return_data.size)) + 19285])] = mem[(2 * ceil32(return_data.size)) + 19317 len ceil32(mem[(2 * ceil32(return_data.size)) + 19285])]
                mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317] = mem[(2 * ceil32(return_data.size)) + 19285] + 9
                mem[mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 19390 len 19029] = code.data[4819 len 19029]
                mem[mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 19358] = 19029
                mem[64] = floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)
                if eth.balance(this.address) < 0:
                    revert with 0, 'Create2: insufficient balance'
                create2 contract with 0 wei
                                salt: currentRound
                                code: code.data[4819 len 19029]
                if not address(create2.new_address):
                    revert with 0, 'Create2: Failed on deploy'
                if ceil32(mem[(2 * ceil32(return_data.size)) + 19285]) <= mem[(2 * ceil32(return_data.size)) + 19285]:
                    if not eth.balance(this.address):
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 4] = 256
                        _973 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 292 len ceil32(_973)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_973)]
                        if ceil32(_973) > _973:
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + _973 + 292] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260 len ceil32(_973) + 32]
                    else:
                        call address(create2.new_address) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 4] = 256
                            _1039 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 292 len ceil32(_1039)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_1039)]
                            if ceil32(_1039) > _1039:
                                mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + _1039 + 292] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260 len ceil32(_1039) + 32]
                        else:
                            mem[64] = floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 1
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = return_data.size
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 5] = 256
                            _1040 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 261] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 293 len ceil32(_1040)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_1040)]
                            if ceil32(_1040) > _1040:
                                mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + _1040 + 293] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 261 len ceil32(_1040) + 32]
                else:
                    if not eth.balance(this.address):
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 4] = 256
                        _990 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                        mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 292 len ceil32(_990)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_990)]
                        if ceil32(_990) > _990:
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + _990 + 292] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x45ca09f8 with:
                             gas gas_remaining wei
                            args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260 len ceil32(_990) + 32]
                    else:
                        call address(create2.new_address) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 4] = 256
                            _1062 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 292 len ceil32(_1062)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_1062)]
                            if ceil32(_1062) > _1062:
                                mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + _1062 + 292] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 260 len ceil32(_1062) + 32]
                        else:
                            mem[64] = floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 1
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450)] = return_data.size
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Fantom transfer failed.'
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 1] = 0x45ca09f800000000000000000000000000000000000000000000000000000000
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 5] = 256
                            _1063 = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 261] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19317]
                            mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 293 len ceil32(_1063)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 19349 len ceil32(_1063)]
                            if ceil32(_1063) > _1063:
                                mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + _1063 + 293] = 0
                            require ext_code.size(address(create2.new_address))
                            call address(create2.new_address).0x45ca09f8 with:
                                 gas gas_remaining wei
                                args 256, address(this.address), devAddr, rewardDistributorAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(mem[(2 * ceil32(return_data.size)) + 19285] + (2 * ceil32(return_data.size)) + ceil32(s) + 38450) + ceil32(return_data.size) + 261 len ceil32(_1063) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2b64f2c0.length++
    sub_2b64f2c0[sub_2b64f2c0.length] = address(create2.new_address)
    stor1 = 1
}



}
