contract main {




// =====================  Runtime code  =====================


const sub_9bc335d5(?) = sha3(code.data[3821 len 16283])


address owner;
uint256 stor1;
uint8 paused;
uint256 stor2;
uint256 currentRound;
address devAddr;
address sub_468ec80bAddress;
uint256 sub_2e41cf80;
uint256 sub_3b11af5c;
uint256 sub_ce702329;
uint256 sub_4bfdba62;
array of address sub_2b64f2c0;
address stor11;

function sub_2b64f2c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2b64f2c0.length
    return sub_2b64f2c0[arg1]
}

function sub_2e41cf80(?) payable {
    return sub_2e41cf80
}

function sub_3b11af5c(?) payable {
    return sub_3b11af5c
}

function sub_468ec80b(?) payable {
    return sub_468ec80bAddress
}

function sub_4bfdba62(?) payable {
    return sub_4bfdba62
}

function paused() payable {
    return bool(uint8(paused))
}

function currentRound() payable {
    return currentRound
}

function owner() payable {
    return owner
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
    return address(sha3(0, this.address, currentRound, sha3(code.data[3821 len 16283])))
}

function sub_c9d8852e(?) payable {
    require calldata.size - 4 >= 32
    return address(sha3(0, this.address, arg1, sha3(code.data[3821 len 16283])))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor2) = not uint8(paused) or Mask(248, 8, uint256(stor2))
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
    if uint8(paused):
        revert with 0, 'Game is paused.'
    if currentRound:
        require ext_code.size(address(sha3(0, this.address, currentRound, sha3(code.data[3821 len 16283]))))
        staticcall address(sha3(0, this.address, currentRound, sha3(code.data[3821 len 16283]))).hasEnded() with:
                gas gas_remaining wei
        mem[16533] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'You cannot start a round, there is one running.'
        require ext_code.size(address(sha3(0, this.address, currentRound, sha3(code.data[3821 len 16283]))))
        staticcall address(sha3(0, this.address, currentRound, sha3(code.data[3821 len 16283]))).0x945af34f with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 16533] = ext_call.return_data[0]
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
                            code: code.data[3821 len 16283]
            if not address(create2.new_address):
                revert with 0, 'Create2: Failed on deploy'
            require ext_code.size(stor11)
            staticcall stor11.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stor11)
                call stor11.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, address(create2.new_address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).0x6df321c5 with:
                 gas gas_remaining wei
                args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, 22, Mask(176, 80, 336492626540558441586772, 48, 0) >> 80, 0
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
            mem[(2 * ceil32(return_data.size)) + 16533] = s
            if s:
                mem[(2 * ceil32(return_data.size)) + 16565 len s] = call.data[calldata.size len s]
            t = s
            idx = currentRound
            while idx:
                if 48 > !(idx % 10):
                    revert with 0, 17
                if not t:
                    revert with 0, 17
                if t - 1 >= mem[(2 * ceil32(return_data.size)) + 16533]:
                    revert with 0, 50
                mem[t + (2 * ceil32(return_data.size)) + 16564 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(2 * ceil32(return_data.size)) + ceil32(s) + 16597] = 0x47414d45204b657920546f6b656e20526f756e64200000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(s) + 16618 len ceil32(mem[(2 * ceil32(return_data.size)) + 16533])] = mem[(2 * ceil32(return_data.size)) + 16565 len ceil32(mem[(2 * ceil32(return_data.size)) + 16533])]
            if eth.balance(this.address) < 0:
                revert with 0, 'Create2: insufficient balance'
            create2 contract with 0 wei
                            salt: currentRound
                            code: code.data[3821 len 16283]
            if not address(create2.new_address):
                revert with 0, 'Create2: Failed on deploy'
            mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + 4] = this.address
            require ext_code.size(stor11)
            staticcall stor11.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + ceil32(return_data.size)] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + ceil32(return_data.size) + 4] = 288
                mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + ceil32(return_data.size) + 292] = mem[(2 * ceil32(return_data.size)) + 16533] + 21
                mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + ceil32(return_data.size) + 324 len floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52)] = mem[(2 * ceil32(return_data.size)) + ceil32(s) + 16597 len mem[(2 * ceil32(return_data.size)) + 16533] + 21], Mask(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21, -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21) + 256, 16283) >> -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21) + 256
            else:
                mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + ceil32(return_data.size) + 4] = this.address
                mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + ceil32(return_data.size) + 36] = address(create2.new_address)
                mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                require ext_code.size(stor11)
                call stor11.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, address(create2.new_address), ext_call.return_data[0]
                mem[floor32(mem[(2 * ceil32(return_data.size)) + 16533] + (2 * ceil32(return_data.size)) + ceil32(s) + 32964) + ceil32(return_data.size)] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(create2.new_address))
            if floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) <= mem[(2 * ceil32(return_data.size)) + 16533] + 21:
                call address(create2.new_address).0x6df321c5 with:
                     gas gas_remaining wei
                    args Array(len=mem[(2 * ceil32(return_data.size)) + 16533] + 21, data=mem[(2 * ceil32(return_data.size)) + ceil32(s) + 16597 len mem[(2 * ceil32(return_data.size)) + 16533] + 21], Mask(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21, -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21) + 256, 16283) >> -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21) + 256), stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62
            else:
                call address(create2.new_address).0x6df321c5 with:
                     gas gas_remaining wei
                    args Array(len=mem[(2 * ceil32(return_data.size)) + 16533] + 21, data=Mask(8 * mem[(2 * ceil32(return_data.size)) + 16533] + 21, -(8 * mem[(2 * ceil32(return_data.size)) + 16533] + 21) + 256, mem[(2 * ceil32(return_data.size)) + ceil32(s) + 16597 len mem[(2 * ceil32(return_data.size)) + 16533] + 21], Mask(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21, -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21) + 256, 16283) >> -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21) + 256) << (8 * mem[(2 * ceil32(return_data.size)) + 16533] + 21) - 256, Mask(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21, -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21) + 256, 0) >> -(8 * floor32(mem[(2 * ceil32(return_data.size)) + 16533] + 52) + -mem[(2 * ceil32(return_data.size)) + 16533] - 21) + 256), stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62
    else:
        if currentRound == -1:
            revert with 0, 17
        currentRound++
        if not currentRound:
            if eth.balance(this.address) < 0:
                revert with 0, 'Create2: insufficient balance'
            create2 contract with 0 wei
                            salt: currentRound
                            code: code.data[3821 len 16283]
            if not address(create2.new_address):
                revert with 0, 'Create2: Failed on deploy'
            require ext_code.size(stor11)
            staticcall stor11.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stor11)
                call stor11.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args this.address, address(create2.new_address), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).0x6df321c5 with:
                 gas gas_remaining wei
                args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, 22, Mask(176, 80, 336492626540558441586772, 48, 0) >> 80, 0
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
                _510 = mem[64]
                mem[mem[64] + 32] = 0x47414d45204b657920546f6b656e20526f756e64200000000000000000000000
                _514 = mem[96]
                mem[mem[64] + 53 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _772 = mem[64]
                    mem[mem[64]] = mem[96] + 21
                    mem[64] = _514 + mem[64] + 53
                    mem[_514 + _510 + 85 len 16283] = code.data[3821 len 16283]
                    mem[_514 + _510 + 53] = 16283
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Create2: insufficient balance'
                    create2 contract with 0 wei
                                    salt: currentRound
                                    code: code.data[3821 len 16283]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
                    mem[floor32(_514 + _510 + 16399) + 4] = this.address
                    require ext_code.size(stor11)
                    staticcall stor11.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[floor32(_514 + _510 + 16399)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(_514 + _510 + 16399) + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size)] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 4] = 288
                        _900 = mem[_772]
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 292] = mem[_772]
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 324 len ceil32(_900)] = mem[_772 + 32 len ceil32(_900)]
                        if ceil32(_900) > _900:
                            mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + _900 + 324] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x6df321c5 with:
                             gas gas_remaining wei
                            args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 292 len ceil32(_900) + 32]
                    else:
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 4] = this.address
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 36] = address(create2.new_address)
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        require ext_code.size(stor11)
                        call stor11.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args this.address, address(create2.new_address), ext_call.return_data[0]
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size)] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size))
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size))] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                        mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + 4] = 288
                        _953 = mem[_772]
                        mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + 292] = mem[_772]
                        mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + 324 len ceil32(_953)] = mem[_772 + 32 len ceil32(_953)]
                        if ceil32(_953) > _953:
                            mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + _953 + 324] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x6df321c5 with:
                             gas gas_remaining wei
                            args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + 292 len ceil32(_953) + 32]
                else:
                    mem[mem[64] + mem[96] + 53] = 0
                    _780 = mem[64]
                    mem[mem[64]] = _514 + _510 + -mem[64] + 21
                    mem[64] = _514 + _510 + 53
                    mem[_514 + _510 + 85 len 16283] = code.data[3821 len 16283]
                    mem[_514 + _510 + 53] = 16283
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Create2: insufficient balance'
                    create2 contract with 0 wei
                                    salt: currentRound
                                    code: code.data[3821 len 16283]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
                    mem[floor32(_514 + _510 + 16399) + 4] = this.address
                    require ext_code.size(stor11)
                    staticcall stor11.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[floor32(_514 + _510 + 16399)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(_514 + _510 + 16399) + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size)] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 4] = 288
                        _913 = mem[_780]
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 292] = mem[_780]
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 324 len ceil32(_913)] = mem[_780 + 32 len ceil32(_913)]
                        if ceil32(_913) > _913:
                            mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + _913 + 324] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x6df321c5 with:
                             gas gas_remaining wei
                            args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 292 len ceil32(_913) + 32]
                    else:
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 4] = this.address
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 36] = address(create2.new_address)
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        require ext_code.size(stor11)
                        call stor11.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args this.address, address(create2.new_address), ext_call.return_data[0]
                        mem[floor32(_514 + _510 + 16399) + ceil32(return_data.size)] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size))
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size))] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                        mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + 4] = 288
                        _965 = mem[_780]
                        mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + 292] = mem[_780]
                        mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + 324 len ceil32(_965)] = mem[_780 + 32 len ceil32(_965)]
                        if ceil32(_965) > _965:
                            mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + _965 + 324] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x6df321c5 with:
                             gas gas_remaining wei
                            args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_514 + _510 + 16399) + (2 * ceil32(return_data.size)) + 292 len ceil32(_965) + 32]
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
                _511 = mem[64]
                mem[mem[64] + 32] = 0x47414d45204b657920546f6b656e20526f756e64200000000000000000000000
                _515 = mem[96]
                mem[mem[64] + 53 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _774 = mem[64]
                    mem[mem[64]] = mem[96] + 21
                    mem[64] = _515 + mem[64] + 53
                    mem[_515 + _511 + 85 len 16283] = code.data[3821 len 16283]
                    mem[_515 + _511 + 53] = 16283
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Create2: insufficient balance'
                    create2 contract with 0 wei
                                    salt: currentRound
                                    code: code.data[3821 len 16283]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
                    mem[floor32(_515 + _511 + 16399) + 4] = this.address
                    require ext_code.size(stor11)
                    staticcall stor11.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[floor32(_515 + _511 + 16399)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(_515 + _511 + 16399) + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size)] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 4] = 288
                        _904 = mem[_774]
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 292] = mem[_774]
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 324 len ceil32(_904)] = mem[_774 + 32 len ceil32(_904)]
                        if ceil32(_904) > _904:
                            mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + _904 + 324] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x6df321c5 with:
                             gas gas_remaining wei
                            args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 292 len ceil32(_904) + 32]
                    else:
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 4] = this.address
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 36] = address(create2.new_address)
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        require ext_code.size(stor11)
                        call stor11.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args this.address, address(create2.new_address), ext_call.return_data[0]
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size)] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size))
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size))] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                        mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + 4] = 288
                        _957 = mem[_774]
                        mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + 292] = mem[_774]
                        mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + 324 len ceil32(_957)] = mem[_774 + 32 len ceil32(_957)]
                        if ceil32(_957) > _957:
                            mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + _957 + 324] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x6df321c5 with:
                             gas gas_remaining wei
                            args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + 292 len ceil32(_957) + 32]
                else:
                    mem[mem[64] + mem[96] + 53] = 0
                    _782 = mem[64]
                    mem[mem[64]] = _515 + _511 + -mem[64] + 21
                    mem[64] = _515 + _511 + 53
                    mem[_515 + _511 + 85 len 16283] = code.data[3821 len 16283]
                    mem[_515 + _511 + 53] = 16283
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Create2: insufficient balance'
                    create2 contract with 0 wei
                                    salt: currentRound
                                    code: code.data[3821 len 16283]
                    if not address(create2.new_address):
                        revert with 0, 'Create2: Failed on deploy'
                    mem[floor32(_515 + _511 + 16399) + 4] = this.address
                    require ext_code.size(stor11)
                    staticcall stor11.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[floor32(_515 + _511 + 16399)] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(_515 + _511 + 16399) + ceil32(return_data.size)
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size)] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 4] = 288
                        _915 = mem[_782]
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 292] = mem[_782]
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 324 len ceil32(_915)] = mem[_782 + 32 len ceil32(_915)]
                        if ceil32(_915) > _915:
                            mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + _915 + 324] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x6df321c5 with:
                             gas gas_remaining wei
                            args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 292 len ceil32(_915) + 32]
                    else:
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 4] = this.address
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 36] = address(create2.new_address)
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                        require ext_code.size(stor11)
                        call stor11.transferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args this.address, address(create2.new_address), ext_call.return_data[0]
                        mem[floor32(_515 + _511 + 16399) + ceil32(return_data.size)] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size))
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size))] = 0x6df321c500000000000000000000000000000000000000000000000000000000
                        mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + 4] = 288
                        _967 = mem[_782]
                        mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + 292] = mem[_782]
                        mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + 324 len ceil32(_967)] = mem[_782 + 32 len ceil32(_967)]
                        if ceil32(_967) > _967:
                            mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + _967 + 324] = 0
                        require ext_code.size(address(create2.new_address))
                        call address(create2.new_address).0x6df321c5 with:
                             gas gas_remaining wei
                            args 288, stor11, address(this.address), devAddr, sub_468ec80bAddress, sub_2e41cf80, sub_3b11af5c, sub_ce702329, sub_4bfdba62, mem[floor32(_515 + _511 + 16399) + (2 * ceil32(return_data.size)) + 292 len ceil32(_967) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2b64f2c0.length++
    sub_2b64f2c0[sub_2b64f2c0.length] = address(create2.new_address)
    stor1 = 1
}



}
