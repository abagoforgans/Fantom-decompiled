contract main {




// =====================  Runtime code  =====================


#
#  - sub_33123926(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint8 paused;
uint256 stor101;
uint256 stor102;
address sub_db6514dcAddress;
address sub_6c329308Address;
address managerAddress;
address sub_c100521cAddress;
mapping of struct sub_e32ead2d;
mapping of uint8 stor258;
uint32 stor3608;
address stor3608;
uint256 stor3608;
uint8 stor4910;

function manager() {
    return managerAddress
}

function paused() {
    return bool(paused)
}

function sub_6c329308(?) {
    return sub_6c329308Address
}

function sub_c100521c(?) {
    return sub_c100521cAddress
}

function sub_db6514dc(?) {
    return sub_db6514dcAddress
}

function sub_e32ead2d(?) {
    require calldata.size - 4 >= 32
    return sub_e32ead2d[arg1].field_0, sub_e32ead2d[arg1].field_256, sub_e32ead2d[arg1].field_512
}

function hasMinted(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor258[arg1])
}

function pause() {
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function updateManager(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manager address must not be null address'
    managerAddress = arg1
}

function updateGalaxySigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Galaxy signer address must not be null address'
    sub_db6514dcAddress = arg1
}

function updateCampaignSetter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Campaign setter address must not be null address'
    sub_6c329308Address = arg1
}

function sub_1bf1d45c(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    return sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xab24fc7f8acd203d6001ca43a3e2f9954f0e9c8939ff9c48ba3cb56b750c6486, arg1, address(arg2), arg3, arg4, address(arg5)))
}

function sub_6c8f8b1a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_c100521cAddress != msg.sender:
        revert with 0, 'Only treasury manager can call'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Treasure manager must not be null address'
    sub_c100521cAddress = address(arg1)
}

function sub_d65459c9(?) {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg6 == address(arg6)
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    return sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, arg1, address(arg2), sha3(call.data[arg3 + 36 len 32 * arg3.length]), arg4, arg5, address(arg6)))
}

function activateCampaign(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg4 == arg4
    if sub_6c329308Address != msg.sender:
        revert with 0, 'Only campaignSetter can call'
    if arg4:
        if not arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid erc20 fee requirement arguments'
    else:
        if arg3:
            if not arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid erc20 fee requirement arguments'
            if not arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid erc20 fee requirement arguments'
    sub_e32ead2d[arg1].field_0 = arg4
    sub_e32ead2d[arg1].field_256 = arg3
    sub_e32ead2d[arg1].field_512 = arg2
    emit EventActivateCampaign(arg1);
}

function sub_a7fec7b1(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == address(arg5)
    require arg3.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg4.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    return sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, arg1, address(arg2), sha3(call.data[arg3 + 36 len 32 * arg3.length]), sha3(call.data[arg4 + 36 len 32 * arg4.length]), address(arg5)))
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if not ext_code.size(arg1):
            revert with 0, 'Address: delegate call to non-contract'
        mem[196 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[196 len 28]
        delegate arg1.mem[196 len 4] with:
             gas gas_remaining wei
            args mem[200]
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            32,
                            39,
                            0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 268 len 25] >> 56,
                            0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        if address(stor3608) != address(stor3608):
            revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
        if not ext_code.size(arg1):
            revert with 0, 'ERC1967: new implementation is not a contract'
        address(stor3608) = arg1
        emit Upgraded(arg1);
}

function sub_cfa8ba4f(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if ext_code.size(sub_db6514dcAddress):
        require ext_code.size(sub_db6514dcAddress)
        staticcall sub_db6514dcAddress with:
                gas gas_remaining wei
               args arg1, Array(len=arg2.length, data=arg2[all])
        if not ext_call.success:
            return 0
        require return_data.size >= 32
        require not 0, ext_call.return_data[4 len 28]
        return not 0x1626ba7e00000000000000000000000000000000000000000000000000000000
    if 65 == arg2.length:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg2.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(arg1, (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    return (address(signer) == sub_db6514dcAddress)
}

function sub_2e4dbe8f(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if stor258[arg3]:
        revert with 0, 'Already minted'
    mem[642 len arg5.length] = arg5[all]
    mem[arg5.length + 642] = 0
    if ext_code.size(sub_db6514dcAddress):
        require ext_code.size(sub_db6514dcAddress)
        staticcall sub_db6514dcAddress with:
                gas gas_remaining wei
               args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xab24fc7f8acd203d6001ca43a3e2f9954f0e9c8939ff9c48ba3cb56b750c6486, arg1, address(arg2), arg3, arg4, msg.sender)), Array(len=arg5.length, data=arg5[all])
        if ext_call.success:
            require return_data.size >= 32
            require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'Invalid signature'
    if 65 == arg5.length:
        if mem[674] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg5.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[674]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[674]) >> 255) + 27) != 27:
        if uint8((bool(mem[674]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xab24fc7f8acd203d6001ca43a3e2f9954f0e9c8939ff9c48ba3cb56b750c6486, arg1, address(arg2), arg3, arg4, msg.sender)), (bool(mem[674]) >> 255) + 27 << 248, mem[642], uint255(mem[674])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != sub_db6514dcAddress:
        revert with 0, 'Invalid signature'
    stor258[arg3] = 1
    if sub_e32ead2d[arg1].field_512:
        idx = 0
        while idx < 0:
            idx = idx + 32
            continue 
        call sub_c100521cAddress with:
           value sub_e32ead2d[arg1].field_512 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer platformFee failed'
    if sub_e32ead2d[arg1].field_256:
        require ext_code.size(sub_e32ead2d[arg1].field_0)
        call sub_e32ead2d[arg1].field_0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_c100521cAddress, sub_e32ead2d[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer erc20Fee failed'
    require ext_code.size(address(arg2))
    call address(arg2).0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit EventClaim(arg1, arg3, ext_call.return_data[0], msg.sender);
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if managerAddress != msg.sender:
        revert with 0, 'Only manager can call'
    if not ext_code.size(arg1):
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not ext_code.size(arg1):
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + 261 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + 261 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + 261 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 265]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 169 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if not ext_code.size(arg1):
                revert with 0, 'Address: delegate call to non-contract'
            mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 64] = 0, address(stor3608), mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 28]
            delegate arg1.mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 262 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 266]
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 334 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if not ext_code.size(arg1):
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        paused = 0
        stor101 = sha3(78483755726969)
        stor102 = sha3(211228306992)
        sub_db6514dcAddress = arg1
        sub_6c329308Address = arg2
        managerAddress = arg3
        sub_c100521cAddress = arg4
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            stor101 = sha3(78483755726969)
            stor102 = sha3(211228306992)
            sub_db6514dcAddress = arg1
            sub_6c329308Address = arg2
            managerAddress = arg3
            sub_c100521cAddress = arg4
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
                stor101 = sha3(78483755726969)
                stor102 = sha3(211228306992)
                sub_db6514dcAddress = arg1
                sub_6c329308Address = arg2
                managerAddress = arg3
                sub_c100521cAddress = arg4
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                    stor101 = sha3(78483755726969)
                    stor102 = sha3(211228306992)
                    sub_db6514dcAddress = arg1
                    sub_6c329308Address = arg2
                    managerAddress = arg3
                    sub_c100521cAddress = arg4
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                        stor101 = sha3(78483755726969)
                        stor102 = sha3(211228306992)
                        sub_db6514dcAddress = arg1
                        sub_6c329308Address = arg2
                        managerAddress = arg3
                        sub_c100521cAddress = arg4
                    else:
                        uint16(stor0.field_0) = 257
                        paused = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor101 = sha3(78483755726969)
                            stor102 = sha3(211228306992)
                            sub_db6514dcAddress = arg1
                            sub_6c329308Address = arg2
                            managerAddress = arg3
                            sub_c100521cAddress = arg4
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor101 = sha3(78483755726969)
                                stor102 = sha3(211228306992)
                                sub_db6514dcAddress = arg1
                                sub_6c329308Address = arg2
                                managerAddress = arg3
                                sub_c100521cAddress = arg4
                            else:
                                uint16(stor0.field_0) = 257
                                stor101 = sha3(78483755726969)
                                stor102 = sha3(211228306992)
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    sub_db6514dcAddress = arg1
                                    sub_6c329308Address = arg2
                                    managerAddress = arg3
                                    sub_c100521cAddress = arg4
                                else:
                                    uint16(stor0.field_0) = 257
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        sub_db6514dcAddress = arg1
                                        sub_6c329308Address = arg2
                                        managerAddress = arg3
                                        sub_c100521cAddress = arg4
                                    else:
                                        uint16(stor0.field_0) = 257
                                        uint8(stor0.field_8) = 0
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            sub_db6514dcAddress = arg1
                                            sub_6c329308Address = arg2
                                            managerAddress = arg3
                                            sub_c100521cAddress = arg4
                                        else:
                                            uint16(stor0.field_0) = 257
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            sub_db6514dcAddress = arg1
                                            sub_6c329308Address = arg2
                                            managerAddress = arg3
                                            sub_c100521cAddress = arg4
                                            uint8(stor0.field_8) = 0
}

function sub_87bb0bdb(?) payable {
    require calldata.size - 4 >= 192
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + ('cd', 164).length + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if stor258[cd[100]]:
        revert with 0, 'Already minted'
    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[96] = 32 * ('cd', 68).length
    mem[(32 * ('cd', 68).length) + 160] = 0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0
    mem[(32 * ('cd', 68).length) + 192] = cd[4]
    mem[(32 * ('cd', 68).length) + 224] = address(cd[36])
    mem[(32 * ('cd', 68).length) + 256] = sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length])
    mem[(32 * ('cd', 68).length) + 288] = cd[100]
    mem[(32 * ('cd', 68).length) + 320] = cd[132]
    mem[(32 * ('cd', 68).length) + 352] = msg.sender
    mem[(32 * ('cd', 68).length) + 128] = 224
    mem[(32 * ('cd', 68).length) + 416] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
    mem[(32 * ('cd', 68).length) + 448] = stor101
    mem[(32 * ('cd', 68).length) + 480] = stor102
    mem[(32 * ('cd', 68).length) + 512] = chainid
    mem[(32 * ('cd', 68).length) + 544] = this.address
    mem[(32 * ('cd', 68).length) + 384] = 160
    mem[(32 * ('cd', 68).length) + 608] = 0x1901000000000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 68).length) + 610] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
    mem[(32 * ('cd', 68).length) + 642] = sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender)
    mem[(32 * ('cd', 68).length) + 576] = 66
    mem[(32 * ('cd', 68).length) + 674] = ('cd', 164).length
    mem[(32 * ('cd', 68).length) + 706 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
    mem[(32 * ('cd', 68).length) + ('cd', 164).length + 706] = 0
    if ext_code.size(sub_db6514dcAddress):
        require ext_code.size(sub_db6514dcAddress)
        staticcall sub_db6514dcAddress with:
                gas gas_remaining wei
               args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender)), Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
        if ext_call.success:
            require return_data.size >= 32
            require not 0, ext_call.return_data[4 len 28]
        revert with 0, 'Invalid signature'
    if 65 == ('cd', 164).length:
        if mem[(32 * ('cd', 68).length) + 738] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if ('cd', 164).length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    _31 = mem[(32 * ('cd', 68).length) + 738]
    if uint255(mem[(32 * ('cd', 68).length) + 738]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if 27 == uint8((bool(mem[(32 * ('cd', 68).length) + 738]) >> 255) + 27):
        mem[64] = (32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 738
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 738] = sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender))
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 770] = uint8((bool(_31) >> 255) + 27)
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 802] = mem[(32 * ('cd', 68).length) + 706]
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 834] = uint255(_31)
        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender)), (bool(_31) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + 706], uint255(_31)) 
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 706] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != sub_db6514dcAddress:
            revert with 0, 'Invalid signature'
        mem[0] = cd[100]
        mem[32] = 258
        stor258[cd[100]] = 1
        idx = 0
        while idx < ('cd', 68).length:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0xc5b8f772 with:
                    gas gas_remaining wei
                   args msg.sender, cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _692 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_692] == bool(mem[_692])
            if not mem[_692]:
                revert with 0, 'Not the owner'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = cd[4]
        mem[32] = 257
        _674 = mem[64]
        mem[64] = mem[64] + 96
        mem[_674] = sub_e32ead2d[cd[4]].field_0
        mem[_674 + 32] = sub_e32ead2d[cd[4]].field_256
        mem[_674 + 64] = sub_e32ead2d[cd[4]].field_512
        if not sub_e32ead2d[cd[4]].field_512:
            if not sub_e32ead2d[cd[4]].field_256:
                mem[mem[64] + 68] = ('cd', 68).length
                require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xb2dc5dc3 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = cd[132]
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, cd[132]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _743 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit EventForge(cd[4], cd[100], mem[_743], msg.sender);
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_c100521cAddress
                mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _701 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_701] == bool(mem[_701])
                if not mem[_701]:
                    revert with 0, 'Transfer erc20Fee failed'
                mem[mem[64] + 68] = ('cd', 68).length
                require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xb2dc5dc3 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = cd[132]
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, cd[132]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _841 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit EventForge(cd[4], cd[100], mem[_841], msg.sender);
        else:
            _683 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            idx = 0
            while idx < mem[_683]:
                idx = idx + 32
                continue 
            if ceil32(mem[_683]) <= mem[_683]:
                call sub_c100521cAddress with:
                   value sub_e32ead2d[cd[4]].field_512 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_683] + _683 + -mem[64] + 28]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Transfer platformFee failed'
                    if not sub_e32ead2d[cd[4]].field_256:
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1565 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1565], msg.sender);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c100521cAddress
                        mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1399] == bool(mem[_1399])
                        if not mem[_1399]:
                            revert with 0, 'Transfer erc20Fee failed'
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1693 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1693], msg.sender);
                else:
                    _1315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1315] = return_data.size
                    mem[_1315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Transfer platformFee failed'
                    if not sub_e32ead2d[cd[4]].field_256:
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1566], msg.sender);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c100521cAddress
                        mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1400] == bool(mem[_1400])
                        if not mem[_1400]:
                            revert with 0, 'Transfer erc20Fee failed'
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1694 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1694], msg.sender);
            else:
                mem[_683 + mem[_683] + 32] = 0
                call sub_c100521cAddress with:
                   value sub_e32ead2d[cd[4]].field_512 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_683] + _683 + -mem[64] + 28]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Transfer platformFee failed'
                    if not sub_e32ead2d[cd[4]].field_256:
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1577 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1577], msg.sender);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c100521cAddress
                        mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1413 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1413] == bool(mem[_1413])
                        if not mem[_1413]:
                            revert with 0, 'Transfer erc20Fee failed'
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1701], msg.sender);
                else:
                    _1321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1321] = return_data.size
                    mem[_1321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Transfer platformFee failed'
                    if not sub_e32ead2d[cd[4]].field_256:
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1578], msg.sender);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c100521cAddress
                        mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1414 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1414] == bool(mem[_1414])
                        if not mem[_1414]:
                            revert with 0, 'Transfer erc20Fee failed'
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1702 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1702], msg.sender);
    else:
        if uint8((bool(mem[(32 * ('cd', 68).length) + 738]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
        mem[64] = (32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 738
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 738] = sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender))
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 770] = uint8((bool(_31) >> 255) + 27)
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 802] = mem[(32 * ('cd', 68).length) + 706]
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 834] = uint255(_31)
        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender)), (bool(_31) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + 706], uint255(_31)) 
        mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 706] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if address(signer) != sub_db6514dcAddress:
            revert with 0, 'Invalid signature'
        mem[0] = cd[100]
        mem[32] = 258
        stor258[cd[100]] = 1
        idx = 0
        while idx < ('cd', 68).length:
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0xc5b8f772 with:
                    gas gas_remaining wei
                   args msg.sender, cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _698 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_698] == bool(mem[_698])
            if not mem[_698]:
                revert with 0, 'Not the owner'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = cd[4]
        mem[32] = 257
        _678 = mem[64]
        mem[64] = mem[64] + 96
        mem[_678] = sub_e32ead2d[cd[4]].field_0
        mem[_678 + 32] = sub_e32ead2d[cd[4]].field_256
        mem[_678 + 64] = sub_e32ead2d[cd[4]].field_512
        if not sub_e32ead2d[cd[4]].field_512:
            if not sub_e32ead2d[cd[4]].field_256:
                mem[mem[64] + 68] = ('cd', 68).length
                require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xb2dc5dc3 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = cd[132]
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, cd[132]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _750 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit EventForge(cd[4], cd[100], mem[_750], msg.sender);
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_c100521cAddress
                mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_703] == bool(mem[_703])
                if not mem[_703]:
                    revert with 0, 'Transfer erc20Fee failed'
                mem[mem[64] + 68] = ('cd', 68).length
                require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xb2dc5dc3 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = cd[132]
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, cd[132]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                emit EventForge(cd[4], cd[100], mem[_844], msg.sender);
        else:
            _686 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            idx = 0
            while idx < mem[_686]:
                idx = idx + 32
                continue 
            if ceil32(mem[_686]) <= mem[_686]:
                call sub_c100521cAddress with:
                   value sub_e32ead2d[cd[4]].field_512 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_686] + _686 + -mem[64] + 28]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Transfer platformFee failed'
                    if not sub_e32ead2d[cd[4]].field_256:
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1567 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1567], msg.sender);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c100521cAddress
                        mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1403] == bool(mem[_1403])
                        if not mem[_1403]:
                            revert with 0, 'Transfer erc20Fee failed'
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1695 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1695], msg.sender);
                else:
                    _1317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1317] = return_data.size
                    mem[_1317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Transfer platformFee failed'
                    if not sub_e32ead2d[cd[4]].field_256:
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1568 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1568], msg.sender);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c100521cAddress
                        mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1404] == bool(mem[_1404])
                        if not mem[_1404]:
                            revert with 0, 'Transfer erc20Fee failed'
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1696 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1696], msg.sender);
            else:
                mem[_686 + mem[_686] + 32] = 0
                call sub_c100521cAddress with:
                   value sub_e32ead2d[cd[4]].field_512 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len mem[_686] + _686 + -mem[64] + 28]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Transfer platformFee failed'
                    if not sub_e32ead2d[cd[4]].field_256:
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1579 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1579], msg.sender);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c100521cAddress
                        mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1415] == bool(mem[_1415])
                        if not mem[_1415]:
                            revert with 0, 'Transfer erc20Fee failed'
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1703 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1703], msg.sender);
                else:
                    _1322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1322] = return_data.size
                    mem[_1322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Transfer platformFee failed'
                    if not sub_e32ead2d[cd[4]].field_256:
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1580 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1580], msg.sender);
                    else:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c100521cAddress
                        mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1416] == bool(mem[_1416])
                        if not mem[_1416]:
                            revert with 0, 'Transfer erc20Fee failed'
                        mem[mem[64] + 68] = ('cd', 68).length
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0xb2dc5dc3 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[132]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, cd[132]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1704 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        emit EventForge(cd[4], cd[100], mem[_1704], msg.sender);
}

function _fallback() payable {
    if calldata.size < 4:
        if not calldata.size:
            idx = 0
            while idx < 0:
                idx = idx + 32
                continue 
            call sub_c100521cAddress with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Transfer failed'
    else:
        if unknown_0x87bb0bdb(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xdb6514dc(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xdb6514dc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_db6514dcAddress
                if unknown_0xdd289b0d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call'
                    if not address(cd[4]):
                        revert with 0, 'Campaign setter address must not be null address'
                    sub_6c329308Address = address(cd[4])
                else:
                    if unknown_0xe32ead2d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return sub_e32ead2d[cd[4]].field_0, sub_e32ead2d[cd[4]].field_256, sub_e32ead2d[cd[4]].field_512
                    if unknown_0xe5b95595(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return bool(stor258[cd[4]])
                    if unknown_0xf0259241(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require cd[100] == address(cd[100])
                        if sub_6c329308Address != msg.sender:
                            revert with 0, 'Only campaignSetter can call'
                        if address(cd[100]):
                            if not cd[68]:
                                revert with 0, 'Invalid erc20 fee requirement arguments'
                        else:
                            if cd[68]:
                                if not address(cd[100]):
                                    revert with 0, 'Invalid erc20 fee requirement arguments'
                                if not cd[68]:
                                    revert with 0, 'Invalid erc20 fee requirement arguments'
                        sub_e32ead2d[cd[4]].field_0 = address(cd[100])
                        sub_e32ead2d[cd[4]].field_256 = cd[68]
                        sub_e32ead2d[cd[4]].field_512 = cd[36]
                        emit EventActivateCampaign(cd[4]);
                    else:
                        if unknown_0xf8c8765e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            require cd[68] == address(cd[68])
                            require cd[100] == address(cd[100])
                            if uint8(stor0.field_8):
                                paused = 0
                                stor101 = sha3(78483755726969)
                                stor102 = sha3(211228306992)
                                sub_db6514dcAddress = address(cd[4])
                                sub_6c329308Address = address(cd[36])
                                managerAddress = address(cd[68])
                                sub_c100521cAddress = address(cd[100])
                            else:
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                    stor101 = sha3(78483755726969)
                                    stor102 = sha3(211228306992)
                                    sub_db6514dcAddress = address(cd[4])
                                    sub_6c329308Address = address(cd[36])
                                    managerAddress = address(cd[68])
                                    sub_c100521cAddress = address(cd[100])
                                else:
                                    uint16(stor0.field_0) = 257
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        paused = 0
                                        stor101 = sha3(78483755726969)
                                        stor102 = sha3(211228306992)
                                        sub_db6514dcAddress = address(cd[4])
                                        sub_6c329308Address = address(cd[36])
                                        managerAddress = address(cd[68])
                                        sub_c100521cAddress = address(cd[100])
                                    else:
                                        uint16(stor0.field_0) = 257
                                        if uint8(stor0.field_0):
                                            revert with 0, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            paused = 0
                                            stor101 = sha3(78483755726969)
                                            stor102 = sha3(211228306992)
                                            sub_db6514dcAddress = address(cd[4])
                                            sub_6c329308Address = address(cd[36])
                                            managerAddress = address(cd[68])
                                            sub_c100521cAddress = address(cd[100])
                                        else:
                                            uint16(stor0.field_0) = 257
                                            uint8(stor0.field_8) = 0
                                            if uint8(stor0.field_0):
                                                revert with 0, 'Initializable: contract is already initialized'
                                            if uint8(stor0.field_8):
                                                paused = 0
                                                stor101 = sha3(78483755726969)
                                                stor102 = sha3(211228306992)
                                                sub_db6514dcAddress = address(cd[4])
                                                sub_6c329308Address = address(cd[36])
                                                managerAddress = address(cd[68])
                                                sub_c100521cAddress = address(cd[100])
                                            else:
                                                uint16(stor0.field_0) = 257
                                                paused = 0
                                                uint8(stor0.field_8) = 0
                                                uint8(stor0.field_8) = 0
                                                if uint8(stor0.field_0):
                                                    revert with 0, 'Initializable: contract is already initialized'
                                                if uint8(stor0.field_8):
                                                    stor101 = sha3(78483755726969)
                                                    stor102 = sha3(211228306992)
                                                    sub_db6514dcAddress = address(cd[4])
                                                    sub_6c329308Address = address(cd[36])
                                                    managerAddress = address(cd[68])
                                                    sub_c100521cAddress = address(cd[100])
                                                else:
                                                    uint16(stor0.field_0) = 257
                                                    if uint8(stor0.field_0):
                                                        revert with 0, 'Initializable: contract is already initialized'
                                                    if uint8(stor0.field_8):
                                                        stor101 = sha3(78483755726969)
                                                        stor102 = sha3(211228306992)
                                                        sub_db6514dcAddress = address(cd[4])
                                                        sub_6c329308Address = address(cd[36])
                                                        managerAddress = address(cd[68])
                                                        sub_c100521cAddress = address(cd[100])
                                                    else:
                                                        uint16(stor0.field_0) = 257
                                                        stor101 = sha3(78483755726969)
                                                        stor102 = sha3(211228306992)
                                                        uint8(stor0.field_8) = 0
                                                        uint8(stor0.field_8) = 0
                                                        if uint8(stor0.field_0):
                                                            revert with 0, 'Initializable: contract is already initialized'
                                                        if uint8(stor0.field_8):
                                                            sub_db6514dcAddress = address(cd[4])
                                                            sub_6c329308Address = address(cd[36])
                                                            managerAddress = address(cd[68])
                                                            sub_c100521cAddress = address(cd[100])
                                                        else:
                                                            uint16(stor0.field_0) = 257
                                                            if uint8(stor0.field_0):
                                                                revert with 0, 'Initializable: contract is already initialized'
                                                            if uint8(stor0.field_8):
                                                                sub_db6514dcAddress = address(cd[4])
                                                                sub_6c329308Address = address(cd[36])
                                                                managerAddress = address(cd[68])
                                                                sub_c100521cAddress = address(cd[100])
                                                            else:
                                                                uint16(stor0.field_0) = 257
                                                                uint8(stor0.field_8) = 0
                                                                if uint8(stor0.field_0):
                                                                    revert with 0, 'Initializable: contract is already initialized'
                                                                if uint8(stor0.field_8):
                                                                    sub_db6514dcAddress = address(cd[4])
                                                                    sub_6c329308Address = address(cd[36])
                                                                    managerAddress = address(cd[68])
                                                                    sub_c100521cAddress = address(cd[100])
                                                                else:
                                                                    uint16(stor0.field_0) = 257
                                                                    uint8(stor0.field_8) = 0
                                                                    uint8(stor0.field_8) = 0
                                                                    sub_db6514dcAddress = address(cd[4])
                                                                    sub_6c329308Address = address(cd[36])
                                                                    managerAddress = address(cd[68])
                                                                    sub_c100521cAddress = address(cd[100])
                                                                    uint8(stor0.field_8) = 0
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x87bb0bdb(?????):
                    if unknown_0xa7fec7b1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 160
                        require cd[36] == address(cd[36])
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                        require cd[132] == address(cd[132])
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        return sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), address(cd[132])))
                    if unknown_0xb693d144(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if managerAddress != msg.sender:
                            revert with 0, 'Only manager can call'
                        if not address(cd[4]):
                            revert with 0, 'Galaxy signer address must not be null address'
                        sub_db6514dcAddress = address(cd[4])
                    if unknown_0xc100521c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_c100521cAddress
                    if uint32(call.func_hash) >> 224 != unknown_0xcfa8ba4f(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xd65459c9(?????):
                        require not msg.value
                        require calldata.size - 4 >= 192
                        require cd[36] == address(cd[36])
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                        require cd[164] == address(cd[164])
                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        return sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], address(cd[164])))
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    require ('cd', 36).length <= test266151307()
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 160] = 0
                    if ext_code.size(sub_db6514dcAddress):
                        require ext_code.size(sub_db6514dcAddress)
                        staticcall sub_db6514dcAddress with:
                                gas gas_remaining wei
                               args cd[4], Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
                        if not ext_call.success:
                            return 0
                        require return_data.size >= 32
                        require not 0, ext_call.return_data[4 len 28]
                        return not 0x1626ba7e00000000000000000000000000000000000000000000000000000000
                    if 65 == ('cd', 36).length:
                        if mem[192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if ('cd', 36).length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if uint255(mem[192]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if uint8((bool(mem[192]) >> 255) + 27) != 27:
                        if uint8((bool(mem[192]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                    signer = erecover(cd[4], (bool(mem[192]) >> 255) + 27 << 248, mem[160], uint255(mem[192])) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    return (address(signer) == sub_db6514dcAddress)
                require calldata.size - 4 >= 192
                require cd[36] == address(cd[36])
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                require ('cd', 68).length <= test266151307()
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                require cd[164] <= test266151307()
                require cd[164] + 35 < calldata.size
                require ('cd', 164).length <= test266151307()
                require cd[164] + ('cd', 164).length + 36 <= calldata.size
                if paused:
                    revert with 0, 'Pausable: paused'
                if stor258[cd[100]]:
                    revert with 0, 'Already minted'
                require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[128] = 32 * ('cd', 68).length
                mem[(32 * ('cd', 68).length) + 192] = 0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0
                mem[(32 * ('cd', 68).length) + 224] = cd[4]
                mem[(32 * ('cd', 68).length) + 256] = address(cd[36])
                mem[(32 * ('cd', 68).length) + 288] = sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                mem[(32 * ('cd', 68).length) + 320] = cd[100]
                mem[(32 * ('cd', 68).length) + 352] = cd[132]
                mem[(32 * ('cd', 68).length) + 384] = msg.sender
                mem[(32 * ('cd', 68).length) + 160] = 224
                mem[(32 * ('cd', 68).length) + 448] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                mem[(32 * ('cd', 68).length) + 480] = stor101
                mem[(32 * ('cd', 68).length) + 512] = stor102
                mem[(32 * ('cd', 68).length) + 544] = chainid
                mem[(32 * ('cd', 68).length) + 576] = this.address
                mem[(32 * ('cd', 68).length) + 416] = 160
                mem[(32 * ('cd', 68).length) + 640] = 0x1901000000000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 68).length) + 642] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
                mem[(32 * ('cd', 68).length) + 674] = sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender)
                mem[(32 * ('cd', 68).length) + 608] = 66
                mem[(32 * ('cd', 68).length) + 706] = ('cd', 164).length
                mem[(32 * ('cd', 68).length) + 738 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
                mem[(32 * ('cd', 68).length) + ('cd', 164).length + 738] = 0
                if ext_code.size(sub_db6514dcAddress):
                    require ext_code.size(sub_db6514dcAddress)
                    staticcall sub_db6514dcAddress with:
                            gas gas_remaining wei
                           args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender)), Array(len=('cd', 164).length, data=call.data[cd[164] + 36 len ('cd', 164).length])
                    if ext_call.success:
                        require return_data.size >= 32
                        require not 0, ext_call.return_data[4 len 28]
                    revert with 0, 'Invalid signature'
                if 65 == ('cd', 164).length:
                    if mem[(32 * ('cd', 68).length) + 770] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                if ('cd', 164).length != 64:
                    revert with 0, 'ECDSA: invalid signature length'
                _408 = mem[(32 * ('cd', 68).length) + 770]
                if uint255(mem[(32 * ('cd', 68).length) + 770]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                if 27 == uint8((bool(mem[(32 * ('cd', 68).length) + 770]) >> 255) + 27):
                    mem[64] = (32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 770
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 770] = sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender))
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 802] = uint8((bool(_408) >> 255) + 27)
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 834] = mem[(32 * ('cd', 68).length) + 738]
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 866] = uint255(_408)
                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender)), (bool(_408) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + 738], uint255(_408)) 
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 738] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != sub_db6514dcAddress:
                        revert with 0, 'Invalid signature'
                    mem[0] = cd[100]
                    mem[32] = 258
                    stor258[cd[100]] = 1
                    idx = 0
                    while idx < ('cd', 68).length:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).0xc5b8f772 with:
                                gas gas_remaining wei
                               args msg.sender, cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3718 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3718] == bool(mem[_3718])
                        if not mem[_3718]:
                            revert with 0, 'Not the owner'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[0] = cd[4]
                    mem[32] = 257
                    _3683 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3683] = sub_e32ead2d[cd[4]].field_0
                    mem[_3683 + 32] = sub_e32ead2d[cd[4]].field_256
                    mem[_3683 + 64] = sub_e32ead2d[cd[4]].field_512
                    if not sub_e32ead2d[cd[4]].field_512:
                        if not sub_e32ead2d[cd[4]].field_256:
                            mem[mem[64] + 68] = ('cd', 68).length
                            require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xb2dc5dc3 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = cd[132]
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[132]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4074 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit EventForge(cd[4], cd[100], mem[_4074], msg.sender);
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_c100521cAddress
                            mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                            require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                            call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3760 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3760] == bool(mem[_3760])
                            if not mem[_3760]:
                                revert with 0, 'Transfer erc20Fee failed'
                            mem[mem[64] + 68] = ('cd', 68).length
                            require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xb2dc5dc3 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = cd[132]
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[132]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4436 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit EventForge(cd[4], cd[100], mem[_4436], msg.sender);
                    else:
                        _3696 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        idx = 0
                        while idx < mem[_3696]:
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_3696]) <= mem[_3696]:
                            call sub_c100521cAddress with:
                               value sub_e32ead2d[cd[4]].field_512 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_3696] + _3696 + -mem[64] + 28]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8207 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8207], msg.sender);
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = sub_c100521cAddress
                                    mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7505 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7505] == bool(mem[_7505])
                                    if not mem[_7505]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8473 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8473], msg.sender);
                            else:
                                _7042 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7042] = return_data.size
                                mem[_7042 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8208 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8208], msg.sender);
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = sub_c100521cAddress
                                    mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7506 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7506] == bool(mem[_7506])
                                    if not mem[_7506]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8474 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8474], msg.sender);
                        else:
                            mem[_3696 + mem[_3696] + 32] = 0
                            call sub_c100521cAddress with:
                               value sub_e32ead2d[cd[4]].field_512 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_3696] + _3696 + -mem[64] + 28]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8251 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8251], msg.sender);
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = sub_c100521cAddress
                                    mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7579 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7579] == bool(mem[_7579])
                                    if not mem[_7579]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8485 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8485], msg.sender);
                            else:
                                _7109 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7109] = return_data.size
                                mem[_7109 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8252 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8252], msg.sender);
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = sub_c100521cAddress
                                    mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7580 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7580] == bool(mem[_7580])
                                    if not mem[_7580]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8486 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8486], msg.sender);
                else:
                    if uint8((bool(mem[(32 * ('cd', 68).length) + 770]) >> 255) + 27) != 28:
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    mem[64] = (32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 770
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 770] = sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender))
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 802] = uint8((bool(_408) >> 255) + 27)
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 834] = mem[(32 * ('cd', 68).length) + 738]
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 866] = uint255(_408)
                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xef2801ffde4aa9ac6363337a19b517d3794a53bf91419192c9beaa971e0735e0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), cd[100], cd[132], msg.sender)), (bool(_408) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + 738], uint255(_408)) 
                    mem[(32 * ('cd', 68).length) + ceil32(('cd', 164).length) + 738] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != sub_db6514dcAddress:
                        revert with 0, 'Invalid signature'
                    mem[0] = cd[100]
                    mem[32] = 258
                    stor258[cd[100]] = 1
                    idx = 0
                    while idx < ('cd', 68).length:
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).0xc5b8f772 with:
                                gas gas_remaining wei
                               args msg.sender, cd[((32 * idx) + cd[68] + 36)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3724 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3724] == bool(mem[_3724])
                        if not mem[_3724]:
                            revert with 0, 'Not the owner'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[0] = cd[4]
                    mem[32] = 257
                    _3687 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3687] = sub_e32ead2d[cd[4]].field_0
                    mem[_3687 + 32] = sub_e32ead2d[cd[4]].field_256
                    mem[_3687 + 64] = sub_e32ead2d[cd[4]].field_512
                    if not sub_e32ead2d[cd[4]].field_512:
                        if not sub_e32ead2d[cd[4]].field_256:
                            mem[mem[64] + 68] = ('cd', 68).length
                            require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xb2dc5dc3 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = cd[132]
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[132]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4081 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit EventForge(cd[4], cd[100], mem[_4081], msg.sender);
                        else:
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_c100521cAddress
                            mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                            require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                            call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3762] == bool(mem[_3762])
                            if not mem[_3762]:
                                revert with 0, 'Transfer erc20Fee failed'
                            mem[mem[64] + 68] = ('cd', 68).length
                            require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                            mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xb2dc5dc3 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = cd[132]
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, cd[132]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4439 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            emit EventForge(cd[4], cd[100], mem[_4439], msg.sender);
                    else:
                        _3699 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        idx = 0
                        while idx < mem[_3699]:
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_3699]) <= mem[_3699]:
                            call sub_c100521cAddress with:
                               value sub_e32ead2d[cd[4]].field_512 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_3699] + _3699 + -mem[64] + 28]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8209 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8209], msg.sender);
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = sub_c100521cAddress
                                    mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7509 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7509] == bool(mem[_7509])
                                    if not mem[_7509]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8475 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8475], msg.sender);
                            else:
                                _7044 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7044] = return_data.size
                                mem[_7044 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8210 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8210], msg.sender);
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = sub_c100521cAddress
                                    mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7510 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7510] == bool(mem[_7510])
                                    if not mem[_7510]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8476 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8476], msg.sender);
                        else:
                            mem[_3699 + mem[_3699] + 32] = 0
                            call sub_c100521cAddress with:
                               value sub_e32ead2d[cd[4]].field_512 wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len mem[_3699] + _3699 + -mem[64] + 28]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8253 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8253], msg.sender);
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = sub_c100521cAddress
                                    mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7581 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7581] == bool(mem[_7581])
                                    if not mem[_7581]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8487 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8487], msg.sender);
                            else:
                                _7110 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_7110] = return_data.size
                                mem[_7110 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8254 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8254], msg.sender);
                                else:
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = sub_c100521cAddress
                                    mem[mem[64] + 68] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7582 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7582] == bool(mem[_7582])
                                    if not mem[_7582]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    mem[mem[64] + 68] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 100 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + (32 * ('cd', 68).length) + 100] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0xb2dc5dc3 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = cd[132]
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, cd[132]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _8488 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    emit EventForge(cd[4], cd[100], mem[_8488], msg.sender);
        else:
            if unknown_0x4f1ef286(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x4f1ef286(?????):
                    if unknown_0x58aba00f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if managerAddress != msg.sender:
                            revert with 0, 'Only manager can call'
                        if not address(cd[4]):
                            revert with 0, 'Manager address must not be null address'
                        managerAddress = address(cd[4])
                    else:
                        if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(paused)
                        if unknown_0x6c329308(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_6c329308Address
                        if unknown_0x6c8f8b1a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if sub_c100521cAddress != msg.sender:
                                revert with 0, 'Only treasury manager can call'
                            if not address(cd[4]):
                                revert with 0, 'Treasure manager must not be null address'
                            sub_c100521cAddress = address(cd[4])
                        else:
                            if unknown_0x8456cb59(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if managerAddress != msg.sender:
                                    revert with 0, 'Only manager can call'
                                if paused:
                                    revert with 0, 'Pausable: paused'
                                paused = 1
                                emit Paused(msg.sender);
                else:
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 36).length
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 160] = 0
                    if managerAddress != msg.sender:
                        revert with 0, 'Only manager can call'
                    if not ext_code.size(cd[4]):
                        revert with 0, 'ERC1967: new implementation is not a contract'
                    address(stor3608) = address(cd[4])
                    if not ext_code.size(cd[4]):
                        revert with 0, 'Address: delegate call to non-contract'
                    mem[ceil32(ceil32(('cd', 36).length)) + 129 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 160 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if ceil32(('cd', 36).length) > ('cd', 36).length:
                        mem[ceil32(ceil32(('cd', 36).length)) + ('cd', 36).length + 129] = 0
                    delegate address(cd[4]).mem[ceil32(ceil32(('cd', 36).length)) + 129 len 4] with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(('cd', 36).length)) + 133 len ('cd', 36).length - 4]
                    if not return_data.size:
                        mem[ceil32(ceil32(('cd', 36).length)) + 129] = 39
                        mem[ceil32(ceil32(('cd', 36).length)) + 161 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                        if not delegate.return_code:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(('cd', 36).length)) + 200 len 25] >> 56,
                                        0
                        if not stor4910:
                            stor4910 = 1
                            mem[ceil32(ceil32(('cd', 36).length)) + 261] = address(stor3608)
                            mem[ceil32(ceil32(('cd', 36).length)) + 225] = 36
                            mem[ceil32(ceil32(('cd', 36).length)) + 257 len 4] = unknown_0x3659cfe6(?????)
                            if not ext_code.size(cd[4]):
                                revert with 0, 'Address: delegate call to non-contract'
                            mem[ceil32(ceil32(('cd', 36).length)) + 293 len 64] = 0, address(stor3608), mem[ceil32(ceil32(('cd', 36).length)) + 293 len 28]
                            delegate address(cd[4]).mem[ceil32(ceil32(('cd', 36).length)) + 293 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(ceil32(('cd', 36).length)) + 297]
                            if return_data.size:
                                if not delegate.return_code:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                39,
                                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 365 len 25] >> 56,
                                                0
                            else:
                                mem[ceil32(ceil32(('cd', 36).length)) + 293] = 39
                                mem[ceil32(ceil32(('cd', 36).length)) + 325 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                                if not delegate.return_code:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 
                                                32,
                                                39,
                                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(('cd', 36).length)) + 364 len 25] >> 56,
                                                0
                            ('bool', 'delegate.return_code')
                            stor4910 = 0
                            if address(stor3608) != address(stor3608):
                                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
                            if not ext_code.size(cd[4]):
                                revert with 0, 'ERC1967: new implementation is not a contract'
                            address(stor3608) = address(cd[4])
                            emit Upgraded(address(cd[4]));
                    else:
                        mem[ceil32(ceil32(('cd', 36).length)) + 129] = return_data.size
                        mem[ceil32(ceil32(('cd', 36).length)) + 161 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 130] = 39
                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 162 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                        if not delegate.return_code:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        32,
                                        39,
                                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 201 len 25] >> 56,
                                        0
                        if not stor4910:
                            stor4910 = 1
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 262] = address(stor3608)
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 226] = 36
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 258 len 4] = unknown_0x3659cfe6(?????)
                            if not ext_code.size(cd[4]):
                                revert with 0, 'Address: delegate call to non-contract'
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 294 len 64] = 0, address(stor3608), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 294 len 28]
                            delegate address(cd[4]).mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 294 len 4] with:
                                 gas gas_remaining wei
                                args mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 298]
                            if return_data.size:
                                if not delegate.return_code:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                32,
                                                39,
                                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(('cd', 36).length)) + (2 * ceil32(return_data.size)) + 366 len 25] >> 56,
                                                0
                            else:
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 294] = 39
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 326 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                                if not delegate.return_code:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 
                                                32,
                                                39,
                                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(return_data.size) + 365 len 25] >> 56,
                                                0
                            ('bool', 'delegate.return_code')
                            stor4910 = 0
                            if address(stor3608) != address(stor3608):
                                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
                            if not ext_code.size(cd[4]):
                                revert with 0, 'ERC1967: new implementation is not a contract'
                            address(stor3608) = address(cd[4])
                            emit Upgraded(address(cd[4]));
            else:
                if unknown_0x1bf1d45c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 160
                    require cd[36] == address(cd[36])
                    require cd[132] == address(cd[132])
                    return sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xab24fc7f8acd203d6001ca43a3e2f9954f0e9c8939ff9c48ba3cb56b750c6486, cd[4], address(cd[36]), cd[68], cd[100], address(cd[132])))
                if unknown_0x2e4dbe8f(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 160
                    require cd[36] == address(cd[36])
                    require cd[132] <= test266151307()
                    require cd[132] + 35 < calldata.size
                    require ('cd', 132).length <= test266151307()
                    require cd[132] + ('cd', 132).length + 36 <= calldata.size
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if stor258[cd[68]]:
                        revert with 0, 'Already minted'
                    mem[674 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                    mem[('cd', 132).length + 674] = 0
                    if ext_code.size(sub_db6514dcAddress):
                        require ext_code.size(sub_db6514dcAddress)
                        staticcall sub_db6514dcAddress with:
                                gas gas_remaining wei
                               args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xab24fc7f8acd203d6001ca43a3e2f9954f0e9c8939ff9c48ba3cb56b750c6486, cd[4], address(cd[36]), cd[68], cd[100], msg.sender)), Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
                        if ext_call.success:
                            require return_data.size >= 32
                            require not 0, ext_call.return_data[4 len 28]
                        revert with 0, 'Invalid signature'
                    if 65 == ('cd', 132).length:
                        if mem[706] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                            revert with 0, 'ECDSA: invalid signature 's' value'
                        revert with 0, 'ECDSA: invalid signature 'v' value'
                    if ('cd', 132).length != 64:
                        revert with 0, 'ECDSA: invalid signature length'
                    if uint255(mem[706]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                        revert with 0, 'ECDSA: invalid signature 's' value'
                    if uint8((bool(mem[706]) >> 255) + 27) != 27:
                        if uint8((bool(mem[706]) >> 255) + 27) != 28:
                            revert with 0, 'ECDSA: invalid signature 'v' value'
                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xab24fc7f8acd203d6001ca43a3e2f9954f0e9c8939ff9c48ba3cb56b750c6486, cd[4], address(cd[36]), cd[68], cd[100], msg.sender)), (bool(mem[706]) >> 255) + 27 << 248, mem[674], uint255(mem[706])) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not address(signer):
                        revert with 0, 'ECDSA: invalid signature'
                    if address(signer) != sub_db6514dcAddress:
                        revert with 0, 'Invalid signature'
                    stor258[cd[68]] = 1
                    if sub_e32ead2d[cd[4]].field_512:
                        idx = 0
                        while idx < 0:
                            idx = idx + 32
                            continue 
                        call sub_c100521cAddress with:
                           value sub_e32ead2d[cd[4]].field_512 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Transfer platformFee failed'
                    if sub_e32ead2d[cd[4]].field_256:
                        require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                        call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Transfer erc20Fee failed'
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, cd[100]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit EventClaim(cd[4], cd[68], ext_call.return_data[0], msg.sender);
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x33123926(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x3659cfe6(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x3f4ba83a(?????):
                                if uint32(call.func_hash) >> 224 != unknown_0x481c6a75(?????):
                                require not msg.value
                                return managerAddress
                            require not msg.value
                            if managerAddress != msg.sender:
                                revert with 0, 'Only manager can call'
                            if not paused:
                                revert with 0, 'Pausable: not paused'
                            paused = 0
                            emit Unpaused(msg.sender);
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if managerAddress != msg.sender:
                                revert with 0, 'Only manager can call'
                            mem[128] = 0
                            if not ext_code.size(cd[4]):
                                revert with 0, 'ERC1967: new implementation is not a contract'
                            address(stor3608) = address(cd[4])
                            if not stor4910:
                                stor4910 = 1
                                mem[196] = address(stor3608)
                                mem[160] = 36
                                mem[196 len 28] = Mask(224, 0, stor3608)
                                mem[192 len 4] = unknown_0x3659cfe6(?????)
                                if not ext_code.size(cd[4]):
                                    revert with 0, 'Address: delegate call to non-contract'
                                mem[228 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), mem[228 len 28]
                                delegate address(cd[4]).mem[228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[232]
                                if return_data.size:
                                    if not delegate.return_code:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    32,
                                                    39,
                                                    0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(return_data.size) + 300 len 25] >> 56,
                                                    0
                                else:
                                    mem[228] = 39
                                    mem[260 len 39] = 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
                                    if not delegate.return_code:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[299 len 25] >> 56, 0
                                ('bool', 'delegate.return_code')
                                stor4910 = 0
                                if address(stor3608) != address(stor3608):
                                    revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
                                if not ext_code.size(cd[4]):
                                    revert with 0, 'ERC1967: new implementation is not a contract'
                                address(stor3608) = address(cd[4])
                                emit Upgraded(address(cd[4]));
                    else:
                        require calldata.size - 4 >= 160
                        require cd[36] == address(cd[36])
                        require cd[68] <= test266151307()
                        require cd[68] + 35 < calldata.size
                        require ('cd', 68).length <= test266151307()
                        require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        require ('cd', 100).length <= test266151307()
                        require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                        require cd[132] <= test266151307()
                        require cd[132] + 35 < calldata.size
                        require ('cd', 132).length <= test266151307()
                        require cd[132] + ('cd', 132).length + 36 <= calldata.size
                        if paused:
                            revert with 0, 'Pausable: paused'
                        if not ('cd', 68).length:
                            revert with 0, 'Array(_dummyIdArr) should not be empty'
                        if ('cd', 68).length != ('cd', 100).length:
                            revert with 0, 'Array(_powahArr) length mismatch'
                        idx = 0
                        while idx < ('cd', 68).length:
                            if stor258[cd[((32 * idx) + cd[68] + 36)]]:
                                revert with 0, 'Already minted'
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            mem[0] = cd[((32 * idx) + cd[68] + 36)]
                            mem[32] = 258
                            stor258[cd[((32 * idx) + cd[68] + 36)]] = 1
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[0] = cd[4]
                        mem[32] = 257
                        mem[128] = sub_e32ead2d[cd[4]].field_0
                        mem[160] = sub_e32ead2d[cd[4]].field_256
                        mem[192] = sub_e32ead2d[cd[4]].field_512
                        if not sub_e32ead2d[cd[4]].field_512:
                            if not sub_e32ead2d[cd[4]].field_256:
                                require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[256 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[224] = 32 * ('cd', 68).length
                                require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[(32 * ('cd', 68).length) + 288 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                mem[(32 * ('cd', 68).length) + 256] = 32 * ('cd', 100).length
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = cd[4]
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = address(cd[36])
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = msg.sender
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = 192
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576] = stor101
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 608] = stor102
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 640] = chainid
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 672] = this.address
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = 160
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 736] = 0x1901000000000000000000000000000000000000000000000000000000000000
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 738] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 770] = sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 704] = 66
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 802] = ('cd', 132).length
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 834 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 834] = 0
                                if ext_code.size(sub_db6514dcAddress):
                                    require ext_code.size(sub_db6514dcAddress)
                                    staticcall sub_db6514dcAddress with:
                                            gas gas_remaining wei
                                           args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
                                    if ext_call.success:
                                        require return_data.size >= 32
                                        require not 0, ext_call.return_data[4 len 28]
                                    revert with 0, 'Invalid signature'
                                if 65 == ('cd', 132).length:
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if ('cd', 132).length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if 27 == uint8((bool(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) >> 255) + 27):
                                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 834], uint255(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866])) 
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 834] = signer
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not address(signer):
                                        revert with 0, 'ECDSA: invalid signature'
                                    if address(signer) != sub_db6514dcAddress:
                                        revert with 0, 'Invalid signature'
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 870] = msg.sender
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = ('cd', 100).length
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934] = 96
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 966] = ('cd', 100).length
                                    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x70c2f239 with:
                                         gas gas_remaining wei
                                        args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 866
                                    require return_data.size >= 32
                                    _6279 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32
                                    require mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                    require (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 897 < (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 866
                                    _6334 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 1 < 0 or (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 867 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 867
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 866] = _6334
                                    require return_data.size >= _6279 + (32 * _6334) + 32
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 898 len 32 * _6334] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _6279 + 898 len 32 * _6334]
                                    mem[mem[64]] = cd[4]
                                    mem[mem[64] + 32] = 128
                                    mem[mem[64] + 128] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                    mem[mem[64] + (32 * ('cd', 68).length) + 160] = _6334
                                    mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _6334] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 898 len 32 * _6334]
                                    mem[mem[64] + 96] = msg.sender
                                    emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _6334, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _6334]), (32 * ('cd', 68).length) + 160, msg.sender);
                                else:
                                    if uint8((bool(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 834], uint255(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866])) 
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 834] = signer
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not address(signer):
                                        revert with 0, 'ECDSA: invalid signature'
                                    if address(signer) != sub_db6514dcAddress:
                                        revert with 0, 'Invalid signature'
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 870] = msg.sender
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = ('cd', 100).length
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934] = 96
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 966] = ('cd', 100).length
                                    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                    mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x70c2f239 with:
                                         gas gas_remaining wei
                                        args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 866
                                    require return_data.size >= 32
                                    _6309 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32
                                    require mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                    require (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 897 < (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 866
                                    _6360 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]
                                    if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 1 < 0 or (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 867 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 867
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 866] = _6360
                                    require return_data.size >= _6309 + (32 * _6360) + 32
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 898 len 32 * _6360] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _6309 + 898 len 32 * _6360]
                                    mem[mem[64]] = cd[4]
                                    mem[mem[64] + 32] = 128
                                    mem[mem[64] + 128] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                    mem[mem[64] + (32 * ('cd', 68).length) + 160] = _6360
                                    mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _6360] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 898 len 32 * _6360]
                                    mem[mem[64] + 96] = msg.sender
                                    emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _6360, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _6360]), (32 * ('cd', 68).length) + 160, msg.sender);
                            else:
                                mem[228] = msg.sender
                                mem[260] = sub_c100521cAddress
                                mem[292] = sub_e32ead2d[cd[4]].field_256
                                require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Transfer erc20Fee failed'
                                require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[ceil32(return_data.size) + 256 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                mem[ceil32(return_data.size) + 224] = 32 * ('cd', 68).length
                                require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 288 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 256] = 32 * ('cd', 100).length
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = cd[4]
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = address(cd[36])
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = msg.sender
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = 192
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576] = stor101
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 608] = stor102
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 640] = chainid
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 672] = this.address
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = 160
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 736] = 0x1901000000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 738] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 770] = sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 704] = 66
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 802] = ('cd', 132).length
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 834 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                                mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 834] = 0
                                if ext_code.size(sub_db6514dcAddress):
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 834] = 0x1626ba7e00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 838] = sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender))
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 870] = 64
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = ('cd', 132).length
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934 len ceil32(('cd', 132).length)] = call.data[cd[132] + 36 len ('cd', 132).length], mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 834 len ceil32(('cd', 132).length) - ('cd', 132).length]
                                    if ceil32(('cd', 132).length) > ('cd', 132).length:
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ('cd', 132).length + 934] = 0
                                    require ext_code.size(sub_db6514dcAddress)
                                    staticcall sub_db6514dcAddress with:
                                            gas gas_remaining wei
                                           args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 834] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with 0, 'Invalid signature'
                                    require return_data.size >= 32
                                    require not 0, ext_call.return_data[4 len 28]
                                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 834] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 838] = 32
                                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 870] = 17
                                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = 'Invalid signature' << 120
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 834
                                       len ceil32(return_data.size) + 100
                                if 65 == ('cd', 132).length:
                                    if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    revert with 0, 'ECDSA: invalid signature 'v' value'
                                if ('cd', 132).length != 64:
                                    revert with 0, 'ECDSA: invalid signature length'
                                if uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                    revert with 0, 'ECDSA: invalid signature 's' value'
                                if 27 == uint8((bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) >> 255) + 27):
                                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 834], uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866])) 
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 834] = signer
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not address(signer):
                                        revert with 0, 'ECDSA: invalid signature'
                                    if address(signer) != sub_db6514dcAddress:
                                        revert with 0, 'Invalid signature'
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 870] = msg.sender
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = ('cd', 100).length
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934] = 96
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 966] = ('cd', 100).length
                                    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x70c2f239 with:
                                         gas gas_remaining wei
                                        args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866
                                    require return_data.size >= 32
                                    _6448 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32
                                    require mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 897 < ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 866
                                    _6477 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]
                                    if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 1 < 0 or (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 867 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 867
                                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = _6477
                                    require return_data.size >= _6448 + (32 * _6477) + 32
                                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 32 * _6477] = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _6448 + 898 len 32 * _6477]
                                    mem[mem[64]] = cd[4]
                                    mem[mem[64] + 32] = 128
                                    mem[mem[64] + 128] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                    mem[mem[64] + (32 * ('cd', 68).length) + 160] = _6477
                                    mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _6477] = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 32 * _6477]
                                    mem[mem[64] + 96] = msg.sender
                                    emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _6477, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _6477]), (32 * ('cd', 68).length) + 160, msg.sender);
                                else:
                                    if uint8((bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) >> 255) + 27) != 28:
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 834], uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866])) 
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 834] = signer
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not address(signer):
                                        revert with 0, 'ECDSA: invalid signature'
                                    if address(signer) != sub_db6514dcAddress:
                                        revert with 0, 'Invalid signature'
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 870] = msg.sender
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = ('cd', 100).length
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934] = 96
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 966] = ('cd', 100).length
                                    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998] = 0
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).0x70c2f239 with:
                                         gas gas_remaining wei
                                        args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866
                                    require return_data.size >= 32
                                    _6461 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32
                                    require mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                    require ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 897 < ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 866
                                    _6497 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]
                                    if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 1 < 0 or (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 867 > test266151307():
                                        revert with 0, 65
                                    mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866 len 4], Mask(224, 32, msg.sender) >> 32 + 866]) + 867
                                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = _6497
                                    require return_data.size >= _6461 + (32 * _6497) + 32
                                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 32 * _6497] = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _6461 + 898 len 32 * _6497]
                                    mem[mem[64]] = cd[4]
                                    mem[mem[64] + 32] = 128
                                    mem[mem[64] + 128] = ('cd', 68).length
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                    mem[mem[64] + (32 * ('cd', 68).length) + 160] = _6497
                                    mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _6497] = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 32 * _6497]
                                    mem[mem[64] + 96] = msg.sender
                                    emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _6497, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _6497]), (32 * ('cd', 68).length) + 160, msg.sender);
                        else:
                            mem[224] = 0
                            idx = 0
                            while idx < 0:
                                idx = idx + 32
                                continue 
                            call sub_c100521cAddress with:
                               value sub_e32ead2d[cd[4]].field_512 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[288 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[256] = 32 * ('cd', 68).length
                                    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[(32 * ('cd', 68).length) + 320 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                    mem[(32 * ('cd', 68).length) + 288] = 32 * ('cd', 100).length
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = cd[4]
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = address(cd[36])
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = msg.sender
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 192
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 608] = stor101
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 640] = stor102
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 672] = chainid
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 704] = this.address
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = 160
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 768] = 0x1901000000000000000000000000000000000000000000000000000000000000
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 770] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 802] = sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 736] = 66
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 834] = ('cd', 132).length
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 866] = 0
                                    if ext_code.size(sub_db6514dcAddress):
                                        require ext_code.size(sub_db6514dcAddress)
                                        staticcall sub_db6514dcAddress with:
                                                gas gas_remaining wei
                                               args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
                                        if ext_call.success:
                                            require return_data.size >= 32
                                            require not 0, ext_call.return_data[4 len 28]
                                        revert with 0, 'Invalid signature'
                                    if 65 == ('cd', 132).length:
                                        if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                            revert with 0, 'ECDSA: invalid signature 's' value'
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                    if ('cd', 132).length != 64:
                                        revert with 0, 'ECDSA: invalid signature length'
                                    if uint255(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    if 27 == uint8((bool(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) >> 255) + 27):
                                        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866], uint255(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898])) 
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not address(signer):
                                            revert with 0, 'ECDSA: invalid signature'
                                        if address(signer) != sub_db6514dcAddress:
                                            revert with 0, 'Invalid signature'
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = msg.sender
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934] = ('cd', 100).length
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 966] = 96
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998] = ('cd', 100).length
                                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1030 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1030] = 0
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).0x70c2f239 with:
                                             gas gas_remaining wei
                                            args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 898
                                        require return_data.size >= 32
                                        _9067 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32
                                        require mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                        require (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 929 < (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 898
                                        _9097 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]
                                        if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 1 < 0 or (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 899 > test266151307():
                                            revert with 0, 65
                                        mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 899
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 898] = _9097
                                        require return_data.size >= _9067 + (32 * _9097) + 32
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 930 len 32 * _9097] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _9067 + 930 len 32 * _9097]
                                        mem[mem[64]] = cd[4]
                                        mem[mem[64] + 32] = 128
                                        mem[mem[64] + 128] = ('cd', 68).length
                                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                        mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                        mem[mem[64] + (32 * ('cd', 68).length) + 160] = _9097
                                        mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9097] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 930 len 32 * _9097]
                                        mem[mem[64] + 96] = msg.sender
                                        emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _9097, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9097]), (32 * ('cd', 68).length) + 160, msg.sender);
                                    else:
                                        if uint8((bool(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) >> 255) + 27) != 28:
                                            revert with 0, 'ECDSA: invalid signature 'v' value'
                                        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) >> 255) + 27 << 248, mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866], uint255(mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898])) 
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not address(signer):
                                            revert with 0, 'ECDSA: invalid signature'
                                        if address(signer) != sub_db6514dcAddress:
                                            revert with 0, 'Invalid signature'
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = msg.sender
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934] = ('cd', 100).length
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 966] = 96
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998] = ('cd', 100).length
                                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1030 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                        mem[(32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1030] = 0
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).0x70c2f239 with:
                                             gas gas_remaining wei
                                            args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 898
                                        require return_data.size >= 32
                                        _9083 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32
                                        require mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                        require (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 929 < (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 898
                                        _9111 = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]
                                        if mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 1 < 0 or (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 899 > test266151307():
                                            revert with 0, 65
                                        mem[64] = (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 899
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 898] = _9111
                                        require return_data.size >= _9083 + (32 * _9111) + 32
                                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 930 len 32 * _9111] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _9083 + 930 len 32 * _9111]
                                        mem[mem[64]] = cd[4]
                                        mem[mem[64] + 32] = 128
                                        mem[mem[64] + 128] = ('cd', 68).length
                                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                        mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                        mem[mem[64] + (32 * ('cd', 68).length) + 160] = _9111
                                        mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9111] = mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 930 len 32 * _9111]
                                        mem[mem[64] + 96] = msg.sender
                                        emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _9111, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9111]), (32 * ('cd', 68).length) + 160, msg.sender);
                                else:
                                    mem[260] = msg.sender
                                    mem[292] = sub_c100521cAddress
                                    mem[324] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[ceil32(return_data.size) + 288 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[ceil32(return_data.size) + 256] = 32 * ('cd', 68).length
                                    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 320 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 288] = 32 * ('cd', 100).length
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = cd[4]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = address(cd[36])
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = msg.sender
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 192
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 608] = stor101
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 640] = stor102
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 672] = chainid
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 704] = this.address
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = 160
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 768] = 0x1901000000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 770] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 802] = sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 736] = 66
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 834] = ('cd', 132).length
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 866] = 0
                                    if ext_code.size(sub_db6514dcAddress):
                                        require ext_code.size(sub_db6514dcAddress)
                                        staticcall sub_db6514dcAddress with:
                                                gas gas_remaining wei
                                               args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
                                        if ext_call.success:
                                            require return_data.size >= 32
                                            require not 0, ext_call.return_data[4 len 28]
                                        revert with 0, 'Invalid signature'
                                    if 65 == ('cd', 132).length:
                                        if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                            revert with 0, 'ECDSA: invalid signature 's' value'
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                    if ('cd', 132).length != 64:
                                        revert with 0, 'ECDSA: invalid signature length'
                                    if uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    if 27 == uint8((bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) >> 255) + 27):
                                        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866], uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898])) 
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not address(signer):
                                            revert with 0, 'ECDSA: invalid signature'
                                        if address(signer) != sub_db6514dcAddress:
                                            revert with 0, 'Invalid signature'
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = msg.sender
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934] = ('cd', 100).length
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 966] = 96
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998] = ('cd', 100).length
                                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1030 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1030] = 0
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).0x70c2f239 with:
                                             gas gas_remaining wei
                                            args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898
                                        require return_data.size >= 32
                                        _9176 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32
                                        require mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                        require ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 929 < ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 898
                                        _9199 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]
                                        if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 1 < 0 or (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 899 > test266151307():
                                            revert with 0, 65
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 899
                                        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898] = _9199
                                        require return_data.size >= _9176 + (32 * _9199) + 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 930 len 32 * _9199] = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _9176 + 930 len 32 * _9199]
                                        mem[mem[64]] = cd[4]
                                        mem[mem[64] + 32] = 128
                                        mem[mem[64] + 128] = ('cd', 68).length
                                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                        mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                        mem[mem[64] + (32 * ('cd', 68).length) + 160] = _9199
                                        mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9199] = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 930 len 32 * _9199]
                                        mem[mem[64] + 96] = msg.sender
                                        emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _9199, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9199]), (32 * ('cd', 68).length) + 160, msg.sender);
                                    else:
                                        if uint8((bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) >> 255) + 27) != 28:
                                            revert with 0, 'ECDSA: invalid signature 'v' value'
                                        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 866], uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 898])) 
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 866] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not address(signer):
                                            revert with 0, 'ECDSA: invalid signature'
                                        if address(signer) != sub_db6514dcAddress:
                                            revert with 0, 'Invalid signature'
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 902] = msg.sender
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 934] = ('cd', 100).length
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 966] = 96
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 998] = ('cd', 100).length
                                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1030 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1030] = 0
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).0x70c2f239 with:
                                             gas gas_remaining wei
                                            args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898
                                        require return_data.size >= 32
                                        _9186 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32
                                        require mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                        require ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 929 < ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 898
                                        _9213 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]
                                        if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 1 < 0 or (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 899 > test266151307():
                                            revert with 0, 65
                                        mem[64] = (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898 len 4], Mask(224, 32, msg.sender) >> 32 + 898]) + 899
                                        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 898] = _9213
                                        require return_data.size >= _9186 + (32 * _9213) + 32
                                        mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 930 len 32 * _9213] = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _9186 + 930 len 32 * _9213]
                                        mem[mem[64]] = cd[4]
                                        mem[mem[64] + 32] = 128
                                        mem[mem[64] + 128] = ('cd', 68).length
                                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                        mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                        mem[mem[64] + (32 * ('cd', 68).length) + 160] = _9213
                                        mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9213] = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 930 len 32 * _9213]
                                        mem[mem[64] + 96] = msg.sender
                                        emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _9213, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9213]), (32 * ('cd', 68).length) + 160, msg.sender);
                            else:
                                mem[256] = return_data.size
                                mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Transfer platformFee failed'
                                if not sub_e32ead2d[cd[4]].field_256:
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[ceil32(return_data.size) + 289 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[ceil32(return_data.size) + 257] = 32 * ('cd', 68).length
                                    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 321 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 289] = 32 * ('cd', 100).length
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 353] = 0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 385] = cd[4]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 417] = address(cd[36])
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 449] = sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 481] = sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 513] = msg.sender
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 321] = 192
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 577] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 609] = stor101
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 641] = stor102
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 673] = chainid
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 705] = this.address
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 545] = 160
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 769] = 0x1901000000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 771] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 803] = sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 737] = 66
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 835] = ('cd', 132).length
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 867 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                                    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 867] = 0
                                    if ext_code.size(sub_db6514dcAddress):
                                        require ext_code.size(sub_db6514dcAddress)
                                        staticcall sub_db6514dcAddress with:
                                                gas gas_remaining wei
                                               args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
                                        if ext_call.success:
                                            require return_data.size >= 32
                                            require not 0, ext_call.return_data[4 len 28]
                                        revert with 0, 'Invalid signature'
                                    if 65 == ('cd', 132).length:
                                        if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                            revert with 0, 'ECDSA: invalid signature 's' value'
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                    if ('cd', 132).length != 64:
                                        revert with 0, 'ECDSA: invalid signature length'
                                    if uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    if 27 == uint8((bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) >> 255) + 27):
                                        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 867], uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899])) 
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 867] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not address(signer):
                                            revert with 0, 'ECDSA: invalid signature'
                                        if address(signer) != sub_db6514dcAddress:
                                            revert with 0, 'Invalid signature'
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 903] = msg.sender
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 935] = ('cd', 100).length
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 967] = 96
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 999] = ('cd', 100).length
                                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1031 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1031] = 0
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).0x70c2f239 with:
                                             gas gas_remaining wei
                                            args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 899
                                        require return_data.size >= 32
                                        _9071 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32
                                        require mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                        require ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 930 < ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 899
                                        _9101 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]
                                        if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 1 < 0 or ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 900 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 900
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 899] = _9101
                                        require return_data.size >= _9071 + (32 * _9101) + 32
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 931 len 32 * _9101] = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _9071 + 931 len 32 * _9101]
                                        mem[mem[64]] = cd[4]
                                        mem[mem[64] + 32] = 128
                                        mem[mem[64] + 128] = ('cd', 68).length
                                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                        mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                        mem[mem[64] + (32 * ('cd', 68).length) + 160] = _9101
                                        mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9101] = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 931 len 32 * _9101]
                                        mem[mem[64] + 96] = msg.sender
                                        emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _9101, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9101]), (32 * ('cd', 68).length) + 160, msg.sender);
                                    else:
                                        if uint8((bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) >> 255) + 27) != 28:
                                            revert with 0, 'ECDSA: invalid signature 'v' value'
                                        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 867], uint255(mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899])) 
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 867] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not address(signer):
                                            revert with 0, 'ECDSA: invalid signature'
                                        if address(signer) != sub_db6514dcAddress:
                                            revert with 0, 'Invalid signature'
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 903] = msg.sender
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 935] = ('cd', 100).length
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 967] = 96
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 999] = ('cd', 100).length
                                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1031 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1031] = 0
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).0x70c2f239 with:
                                             gas gas_remaining wei
                                            args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 899
                                        require return_data.size >= 32
                                        _9086 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32
                                        require mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                        require ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 930 < ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 899
                                        _9116 = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]
                                        if mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 1 < 0 or ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 900 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 900
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 899] = _9116
                                        require return_data.size >= _9086 + (32 * _9116) + 32
                                        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 931 len 32 * _9116] = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _9086 + 931 len 32 * _9116]
                                        mem[mem[64]] = cd[4]
                                        mem[mem[64] + 32] = 128
                                        mem[mem[64] + 128] = ('cd', 68).length
                                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                        mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                        mem[mem[64] + (32 * ('cd', 68).length) + 160] = _9116
                                        mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9116] = mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(return_data.size) + 931 len 32 * _9116]
                                        mem[mem[64] + 96] = msg.sender
                                        emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _9116, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9116]), (32 * ('cd', 68).length) + 160, msg.sender);
                                else:
                                    mem[ceil32(return_data.size) + 261] = msg.sender
                                    mem[ceil32(return_data.size) + 293] = sub_c100521cAddress
                                    mem[ceil32(return_data.size) + 325] = sub_e32ead2d[cd[4]].field_256
                                    require ext_code.size(sub_e32ead2d[cd[4]].field_0)
                                    call sub_e32ead2d[cd[4]].field_0.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, sub_c100521cAddress, sub_e32ead2d[cd[4]].field_256
                                    mem[ceil32(return_data.size) + 257] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Transfer erc20Fee failed'
                                    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 289 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = 32 * ('cd', 68).length
                                    require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + 321 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + 289] = 32 * ('cd', 100).length
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 353] = 0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 385] = cd[4]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 417] = address(cd[36])
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 449] = sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length])
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 481] = sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 513] = msg.sender
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 321] = 192
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 577] = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 609] = stor101
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 641] = stor102
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 673] = chainid
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 705] = this.address
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 545] = 160
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 769] = 0x1901000000000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 771] = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 803] = sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 737] = 66
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 835] = ('cd', 132).length
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 867 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ('cd', 132).length + 867] = 0
                                    if ext_code.size(sub_db6514dcAddress):
                                        require ext_code.size(sub_db6514dcAddress)
                                        staticcall sub_db6514dcAddress with:
                                                gas gas_remaining wei
                                               args sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len ('cd', 132).length])
                                        if ext_call.success:
                                            require return_data.size >= 32
                                            require not 0, ext_call.return_data[4 len 28]
                                        revert with 0, 'Invalid signature'
                                    if 65 == ('cd', 132).length:
                                        if mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                            revert with 0, 'ECDSA: invalid signature 's' value'
                                        revert with 0, 'ECDSA: invalid signature 'v' value'
                                    if ('cd', 132).length != 64:
                                        revert with 0, 'ECDSA: invalid signature length'
                                    if uint255(mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                                        revert with 0, 'ECDSA: invalid signature 's' value'
                                    if 27 == uint8((bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) >> 255) + 27):
                                        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 867], uint255(mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899])) 
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 867] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not address(signer):
                                            revert with 0, 'ECDSA: invalid signature'
                                        if address(signer) != sub_db6514dcAddress:
                                            revert with 0, 'Invalid signature'
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 903] = msg.sender
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 935] = ('cd', 100).length
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 967] = 96
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 999] = ('cd', 100).length
                                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1031 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1031] = 0
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).0x70c2f239 with:
                                             gas gas_remaining wei
                                            args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899
                                        require return_data.size >= 32
                                        _9179 = mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32
                                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                        require ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 930 < ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 899
                                        _9203 = mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]
                                        if mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 1 < 0 or ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 900 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 900
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899] = _9203
                                        require return_data.size >= _9179 + (32 * _9203) + 32
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 931 len 32 * _9203] = mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _9179 + 931 len 32 * _9203]
                                        mem[mem[64]] = cd[4]
                                        mem[mem[64] + 32] = 128
                                        mem[mem[64] + 128] = ('cd', 68).length
                                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                        mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                        mem[mem[64] + (32 * ('cd', 68).length) + 160] = _9203
                                        mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9203] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 931 len 32 * _9203]
                                        mem[mem[64] + 96] = msg.sender
                                        emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _9203, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9203]), (32 * ('cd', 68).length) + 160, msg.sender);
                                    else:
                                        if uint8((bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) >> 255) + 27) != 28:
                                            revert with 0, 'ECDSA: invalid signature 'v' value'
                                        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(0xa2b5e2092d704820495ab7eec44641e53c37a2160be0cf18b4fc7426b24379a0, cd[4], address(cd[36]), sha3(call.data[cd[68] + 36 len 32 * ('cd', 68).length]), sha3(call.data[cd[100] + 36 len 32 * ('cd', 100).length]), msg.sender)), (bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899]) >> 255) + 27 << 248, mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 867], uint255(mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 899])) 
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 867] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not address(signer):
                                            revert with 0, 'ECDSA: invalid signature'
                                        if address(signer) != sub_db6514dcAddress:
                                            revert with 0, 'Invalid signature'
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899] = 0x70c2f23900000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 903] = msg.sender
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 935] = ('cd', 100).length
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 967] = 96
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 999] = ('cd', 100).length
                                        require ('cd', 100).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1031 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (64 * ('cd', 100).length) + ceil32(('cd', 132).length) + 1031] = 0
                                        require ext_code.size(address(cd[36]))
                                        call address(cd[36]).0x70c2f239 with:
                                             gas gas_remaining wei
                                            args msg.sender, ('cd', 100).length, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len 32 * ('cd', 100).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899
                                        require return_data.size >= 32
                                        _9189 = mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32
                                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                                        require ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 930 < ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + return_data.size + 899
                                        _9217 = mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]
                                        if mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 1 < 0 or ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 900 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899 len 4], Mask(224, 32, msg.sender) >> 32 + 899]) + 900
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 899] = _9217
                                        require return_data.size >= _9189 + (32 * _9217) + 32
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 931 len 32 * _9217] = mem[ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + _9189 + 931 len 32 * _9217]
                                        mem[mem[64]] = cd[4]
                                        mem[mem[64] + 32] = 128
                                        mem[mem[64] + 128] = ('cd', 68).length
                                        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                        mem[mem[64] + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                                        mem[mem[64] + 64] = (32 * ('cd', 68).length) + 160
                                        mem[mem[64] + (32 * ('cd', 68).length) + 160] = _9217
                                        mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9217] = mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + ceil32(('cd', 132).length) + 931 len 32 * _9217]
                                        mem[mem[64] + 96] = msg.sender
                                        emit EventClaimBatch(cd[4], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length], _9217, mem[mem[64] + (32 * ('cd', 68).length) + 192 len 32 * _9217]), (32 * ('cd', 68).length) + 160, msg.sender);
}



}
