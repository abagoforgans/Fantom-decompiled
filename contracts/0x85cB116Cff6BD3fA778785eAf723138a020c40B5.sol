contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint8 paused;
address owner;
address mphMinterAddress;
mapping of uint8 stor152;
mapping of struct sub_ee7389f4;

function paused() payable {
    return bool(paused)
}

function sub_867e998a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor152[arg1])
}

function owner() payable {
    return owner
}

function mphMinter() payable {
    return mphMinterAddress
}

function sub_ee7389f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ee7389f4[arg1].field_0, sub_ee7389f4[arg1].field_0, sub_ee7389f4[arg1].field_192
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_afaead4e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor152[address(arg1)] = uint8(bool(arg2))
}

function sub_4e1ca55b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == Mask(96, 0, arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ee7389f4[address(arg1)].field_0 = Mask(96, 0, arg2)
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

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        paused = 0
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        mphMinterAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            mphMinterAddress = arg1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                mphMinterAddress = arg1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    mphMinterAddress = arg1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        mphMinterAddress = arg1
                    else:
                        uint16(stor0.field_0) = 257
                        paused = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                            mphMinterAddress = arg1
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(owner, msg.sender);
                                mphMinterAddress = arg1
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(owner, msg.sender);
                                    mphMinterAddress = arg1
                                else:
                                    uint16(stor0.field_0) = 257
                                    owner = msg.sender
                                    emit OwnershipTransferred(owner, msg.sender);
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    mphMinterAddress = arg1
                                    uint8(stor0.field_8) = 0
}

function sub_803aff9f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor152[address(arg1)]:
        revert with 0, 'MPHConverter: NOT_WHITELISTED'
    require ext_code.size(mphMinterAddress)
    staticcall mphMinterAddress.0x2304aa61 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0
    mem[ceil32(return_data.size) + 392] = 0
    call address(ext_call.return_data[0]) with:
       funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 328] = msg.sender
        mem[ceil32(return_data.size) + 360] = arg2
        mem[ceil32(return_data.size) + 292] = 68
        mem[ceil32(return_data.size) + 324 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 392] = 32
        mem[ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 456 len 96] = 0, msg.sender, arg2, 0
        mem[ceil32(return_data.size) + 524] = 0
        call address(arg1) with:
           funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 488] == bool(mem[ceil32(return_data.size) + 488])
                if not mem[ceil32(return_data.size) + 488]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + 292] = return_data.size
    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
        if not mem[ceil32(return_data.size) + 324]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = msg.sender
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg2
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len 96] = 0, msg.sender, arg2, 0
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 525] = 0
    call address(arg1) with:
       funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 32
        mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 458
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489])
    if mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]:
    mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 462] = 32
    mem[(4 * ceil32(return_data.size)) + 494] = 42
    mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 458
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function sub_86fe38cc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor152[address(arg1)]:
        revert with 0, 'MPHConverter: NOT_WHITELISTED'
    mem[160] = sub_ee7389f4[address(arg1)].field_192
    if 24 * 3600 > -sub_ee7389f4[address(arg1)].field_192 + test266151307():
        revert with 0, 17
    if uint64(sub_ee7389f4[address(arg1)].field_192 + (24 * 3600)) > block.timestamp:
        if arg2 > test266151307():
            revert with 0, 'SafeCast: value doesn't fit in 96 bits'
        if sub_ee7389f4[address(arg1)].field_96 > -Mask(96, 0, arg2) + test266151307():
            revert with 0, 17
        mem[128] = Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96)
        if 0 > sub_ee7389f4[address(arg1)].field_0:
            revert with 0, 'MPHConverter: LIMIT'
        sub_ee7389f4[address(arg1)].field_96 = Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96)
        sub_ee7389f4[address(arg1)].field_192 = sub_ee7389f4[address(arg1)].field_192
        mem[228] = msg.sender
        mem[260] = this.address
        mem[292] = arg2
        mem[192] = 100
        mem[228 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[224 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[324] = 32
        mem[356] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0
        mem[488] = 0
        call address(arg1) with:
           funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if sub_ee7389f4[address(arg1)].field_0:
                    revert with memory
                      from 128
                       len sub_ee7389f4[address(arg1)].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if sub_ee7389f4[address(arg1)].field_0:
                require sub_ee7389f4[address(arg1)].field_0 >= 32
                require Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96) == bool(Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96))
                if not Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(mphMinterAddress)
            staticcall mphMinterAddress.0x2304aa61 with:
                    gas gas_remaining wei
            mem[388] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 392] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[(2 * ceil32(return_data.size)) + 424] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 456] = arg2
                mem[(2 * ceil32(return_data.size)) + 388] = 68
                mem[(2 * ceil32(return_data.size)) + 420 len 4] = transfer(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 488] = 32
                mem[(2 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 552 len 96] = 0, msg.sender, arg2, 0
                mem[(2 * ceil32(return_data.size)) + 620] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_ee7389f4[address(arg1)].field_0:
                            revert with memory
                              from 128
                               len sub_ee7389f4[address(arg1)].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_ee7389f4[address(arg1)].field_0:
                        require sub_ee7389f4[address(arg1)].field_0 >= 32
                        require Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96) == bool(Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96))
                        if not Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 584] == bool(mem[(2 * ceil32(return_data.size)) + 584])
                        if not mem[(2 * ceil32(return_data.size)) + 584]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not ext_call.return_data[0]:
                    require ext_code.size(mphMinterAddress)
                    call mphMinterAddress.0x2f4cfd47 with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                else:
                    mem[(2 * ceil32(return_data.size)) + 424] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 388] = 68
                    mem[(2 * ceil32(return_data.size)) + 420 len 4] = transfer(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 488] = 32
                    mem[(2 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 552 len 96] = 0, msg.sender, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 620] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if sub_ee7389f4[address(arg1)].field_0:
                                revert with memory
                                  from 128
                                   len sub_ee7389f4[address(arg1)].field_0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if sub_ee7389f4[address(arg1)].field_0:
                            require sub_ee7389f4[address(arg1)].field_0 >= 32
                            require Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96) == bool(Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96))
                            if not Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96):
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 584] == bool(mem[(2 * ceil32(return_data.size)) + 584])
                            if not mem[(2 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(mphMinterAddress)
                    call mphMinterAddress.0x2f4cfd47 with:
                         gas gas_remaining wei
                        args msg.sender, arg2 - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[388] = return_data.size
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[420] == bool(mem[420])
                if not mem[420]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(mphMinterAddress)
            staticcall mphMinterAddress.0x2304aa61 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 389] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = msg.sender
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = arg2
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] = 68
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 421 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = 32
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 521] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553 len 96] = 0, msg.sender, arg2, 0
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 621] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_ee7389f4[address(arg1)].field_0:
                            revert with memory
                              from 128
                               len sub_ee7389f4[address(arg1)].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_ee7389f4[address(arg1)].field_0:
                        require sub_ee7389f4[address(arg1)].field_0 >= 32
                        require Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96) == bool(Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96))
                        if not Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553] = return_data.size
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 558] = 32
                    mem[(4 * ceil32(return_data.size)) + 590] = 32
                    mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 554
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585] == bool(mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585])
                if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585]:
                mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 558] = 32
                mem[(4 * ceil32(return_data.size)) + 590] = 42
                mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                mem[(4 * ceil32(return_data.size)) + 654] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 554
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if not ext_call.return_data[0]:
                require ext_code.size(mphMinterAddress)
                call mphMinterAddress.0x2f4cfd47 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
            else:
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = msg.sender
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] = 68
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 421 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = 32
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 521] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553 len 96] = 0, msg.sender, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 621] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_ee7389f4[address(arg1)].field_0:
                            revert with memory
                              from 128
                               len sub_ee7389f4[address(arg1)].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_ee7389f4[address(arg1)].field_0:
                        require sub_ee7389f4[address(arg1)].field_0 >= 32
                        require Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96) == bool(Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96))
                        if not Mask(96, 0, Mask(96, 0, arg2) + sub_ee7389f4[address(arg1)].field_96):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(mphMinterAddress)
                    call mphMinterAddress.0x2f4cfd47 with:
                         gas gas_remaining wei
                        args msg.sender, arg2 - ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553] = return_data.size
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 558] = 32
                        mem[(4 * ceil32(return_data.size)) + 590] = 32
                        mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 554
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585] == bool(mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585])
                        if not mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585]:
                            mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 558] = 32
                            mem[(4 * ceil32(return_data.size)) + 590] = 42
                            mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                            mem[(4 * ceil32(return_data.size)) + 654] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 554
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 558] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 590] = arg2 - ext_call.return_data[0]
                    require ext_code.size(mphMinterAddress)
                    call mphMinterAddress.0x2f4cfd47 with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 558 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp > test266151307():
            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
        mem[160] = uint64(block.timestamp)
        if arg2 > test266151307():
            revert with 0, 'SafeCast: value doesn't fit in 96 bits'
        if 0 > -Mask(96, 0, arg2) + test266151307():
            revert with 0, 17
        mem[128] = Mask(96, 0, arg2)
        if 0 > sub_ee7389f4[address(arg1)].field_0:
            revert with 0, 'MPHConverter: LIMIT'
        sub_ee7389f4[address(arg1)].field_96 = Mask(96, 0, arg2)
        sub_ee7389f4[address(arg1)].field_192 = uint64(block.timestamp)
        mem[228] = msg.sender
        mem[260] = this.address
        mem[292] = arg2
        mem[192] = 100
        mem[228 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[224 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[324] = 32
        mem[356] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0
        mem[488] = 0
        call address(arg1) with:
           funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if sub_ee7389f4[address(arg1)].field_0:
                    revert with memory
                      from 128
                       len sub_ee7389f4[address(arg1)].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if sub_ee7389f4[address(arg1)].field_0:
                require sub_ee7389f4[address(arg1)].field_0 >= 32
                require Mask(96, 0, arg2) == bool(Mask(96, 0, arg2))
                if not Mask(96, 0, arg2):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(mphMinterAddress)
            staticcall mphMinterAddress.0x2304aa61 with:
                    gas gas_remaining wei
            mem[388] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 392] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[(2 * ceil32(return_data.size)) + 424] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 456] = arg2
                mem[(2 * ceil32(return_data.size)) + 388] = 68
                mem[(2 * ceil32(return_data.size)) + 420 len 4] = transfer(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 488] = 32
                mem[(2 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 552 len 96] = 0, msg.sender, arg2, 0
                mem[(2 * ceil32(return_data.size)) + 620] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_ee7389f4[address(arg1)].field_0:
                            revert with memory
                              from 128
                               len sub_ee7389f4[address(arg1)].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_ee7389f4[address(arg1)].field_0:
                        require sub_ee7389f4[address(arg1)].field_0 >= 32
                        require Mask(96, 0, arg2) == bool(Mask(96, 0, arg2))
                        if not Mask(96, 0, arg2):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 584] == bool(mem[(2 * ceil32(return_data.size)) + 584])
                        if not mem[(2 * ceil32(return_data.size)) + 584]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if not ext_call.return_data[0]:
                    require ext_code.size(mphMinterAddress)
                    call mphMinterAddress.0x2f4cfd47 with:
                         gas gas_remaining wei
                        args msg.sender, arg2
                else:
                    mem[(2 * ceil32(return_data.size)) + 424] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 456] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 388] = 68
                    mem[(2 * ceil32(return_data.size)) + 420 len 4] = transfer(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 488] = 32
                    mem[(2 * ceil32(return_data.size)) + 520] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 552 len 96] = 0, msg.sender, ext_call.return_data[0], 0
                    mem[(2 * ceil32(return_data.size)) + 620] = 0
                    call address(ext_call.return_data[0]) with:
                       funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if sub_ee7389f4[address(arg1)].field_0:
                                revert with memory
                                  from 128
                                   len sub_ee7389f4[address(arg1)].field_0
                            revert with 0, 'SafeERC20: low-level call failed'
                        if sub_ee7389f4[address(arg1)].field_0:
                            require sub_ee7389f4[address(arg1)].field_0 >= 32
                            require Mask(96, 0, arg2) == bool(Mask(96, 0, arg2))
                            if not Mask(96, 0, arg2):
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(2 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 584] == bool(mem[(2 * ceil32(return_data.size)) + 584])
                            if not mem[(2 * ceil32(return_data.size)) + 584]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(mphMinterAddress)
                    call mphMinterAddress.0x2f4cfd47 with:
                         gas gas_remaining wei
                        args msg.sender, arg2 - ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[388] = return_data.size
            mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[420] == bool(mem[420])
                if not mem[420]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(mphMinterAddress)
            staticcall mphMinterAddress.0x2304aa61 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 389] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = msg.sender
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = arg2
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] = 68
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 421 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = 32
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 521] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553 len 96] = 0, msg.sender, arg2, 0
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 621] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_ee7389f4[address(arg1)].field_0:
                            revert with memory
                              from 128
                               len sub_ee7389f4[address(arg1)].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_ee7389f4[address(arg1)].field_0:
                        require sub_ee7389f4[address(arg1)].field_0 >= 32
                        require Mask(96, 0, arg2) == bool(Mask(96, 0, arg2))
                        if not Mask(96, 0, arg2):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553] = return_data.size
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 558] = 32
                    mem[(4 * ceil32(return_data.size)) + 590] = 32
                    mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 554
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585] == bool(mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585])
                if mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585]:
                mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 558] = 32
                mem[(4 * ceil32(return_data.size)) + 590] = 42
                mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                mem[(4 * ceil32(return_data.size)) + 654] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 554
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if not ext_call.return_data[0]:
                require ext_code.size(mphMinterAddress)
                call mphMinterAddress.0x2f4cfd47 with:
                     gas gas_remaining wei
                    args msg.sender, arg2
            else:
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 425] = msg.sender
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 457] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 389] = 68
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 421 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 489] = 32
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 521] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553 len 96] = 0, msg.sender, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 621] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, msg.sender, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if sub_ee7389f4[address(arg1)].field_0:
                            revert with memory
                              from 128
                               len sub_ee7389f4[address(arg1)].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if sub_ee7389f4[address(arg1)].field_0:
                        require sub_ee7389f4[address(arg1)].field_0 >= 32
                        require Mask(96, 0, arg2) == bool(Mask(96, 0, arg2))
                        if not Mask(96, 0, arg2):
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(mphMinterAddress)
                    call mphMinterAddress.0x2f4cfd47 with:
                         gas gas_remaining wei
                        args msg.sender, arg2 - ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 553] = return_data.size
                    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 558] = 32
                        mem[(4 * ceil32(return_data.size)) + 590] = 32
                        mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 554
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585] == bool(mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585])
                        if not mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 585]:
                            mem[(4 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 558] = 32
                            mem[(4 * ceil32(return_data.size)) + 590] = 42
                            mem[(4 * ceil32(return_data.size)) + 622] = 'SafeERC20: ERC20 operation did n'
                            mem[(4 * ceil32(return_data.size)) + 654] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 554
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 558] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 590] = arg2 - ext_call.return_data[0]
                    require ext_code.size(mphMinterAddress)
                    call mphMinterAddress.0x2f4cfd47 with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 558 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
