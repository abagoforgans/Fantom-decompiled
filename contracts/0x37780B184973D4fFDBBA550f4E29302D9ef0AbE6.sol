contract main {




// =====================  Runtime code  =====================


#
#  - participate(uint256 arg1, uint32 arg2)
#
address owner;
array of struct poolInfo;
uint32 stor2;
address feeAddress;
uint256 stor2;
mapping of uint8 stor3;
address sub_9a33c8f2Address;
mapping of uint256 sub_c315bd2a;
uint256 stor6;
mapping of struct sub_a19c0102;
uint256 sub_b3b5c7bf;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of struct stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779002;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944779003;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779004;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function feeAddress() payable {
    return address(feeAddress)
}

function owner() payable {
    return owner
}

function sub_9a33c8f2(?) payable {
    return sub_9a33c8f2Address
}

function sub_a19c0102(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    return sub_a19c0102[arg1][arg2].field_0, 
           sub_a19c0102[arg1][arg2].field_256,
           sub_a19c0102[arg1][arg2].field_512,
           sub_a19c0102[arg1][arg2].field_768,
           sub_a19c0102[arg1][arg2].field_1024
}

function sub_b3b5c7bf(?) payable {
    return sub_b3b5c7bf
}

function sub_c315bd2a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c315bd2a[arg1]
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_94eeb09c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9a33c8f2Address = address(arg1)
}

function sub_bcc9550d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 60:
        revert with 0, 'must be at least one minute'
    sub_b3b5c7bf = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0d90aab3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if uint32(arg1) >= poolInfo.length:
        revert with 0, 50
    if 0 == poolInfo[uint32(arg1)].field_768:
        return poolInfo[uint32(arg1)].field_768 != 0
    if block.timestamp < poolInfo[uint32(arg1)].field_768:
        revert with 0, 17
    return block.timestamp - poolInfo[uint32(arg1)].field_768 >= poolInfo[uint32(arg1)].field_1536
}

function sub_59879fb4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint32(arg1)
    require arg2 == uint16(arg2)
    require arg3 == uint16(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint16(arg2) > 1000:
        revert with 0, 'fee can't be more than 10%'
    if uint16(arg3) > 6000:
        revert with 0, 'next pot can't be more than 60%'
    if uint32(arg1) >= poolInfo.length:
        revert with 0, 50
    poolInfo[uint32(arg1)].field_512 = uint16(arg2)
    poolInfo[uint32(arg1)].field_528 = uint16(arg3)
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(arg1)]:
        revert with 0, 'nonDuplicated: duplicated'
    stor3[address(arg1)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    storB10E[stor1.length] = 0
    storB10E[stor1.length].field_0 = 1000
    storB10E[stor1.length].field_16 = 2000
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = 0
    storB10E[stor1.length] = sub_b3b5c7bf
}

function sub_3c06a8ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if uint32(arg1) >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[uint32(arg1)].field_0)
    staticcall poolInfo[uint32(arg1)].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint32(arg1) >= poolInfo.length:
        revert with 0, 50
    if 0 == poolInfo[uint32(arg1)].field_768:
        return (ext_call.return_data[0] / 20)
    if block.timestamp < poolInfo[uint32(arg1)].field_768:
        revert with 0, 17
    if block.timestamp - poolInfo[uint32(arg1)].field_768 < poolInfo[uint32(arg1)].field_1536:
        return (ext_call.return_data[0] / 20)
    if ext_call.return_data[0] and poolInfo[uint32(arg1)].field_512 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000 / 20)
}

function sub_a96618d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if uint32(arg1) >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[uint32(arg1)].field_0)
    staticcall poolInfo[uint32(arg1)].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if poolInfo[uint32(arg1)].field_512 > -poolInfo[uint32(arg1)].field_528 + 65535:
        revert with 0, 17
    if ext_call.return_data[0] and uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000:
        revert with 0, 17
    if uint32(arg1) >= poolInfo.length:
        revert with 0, 50
    if 0 == poolInfo[uint32(arg1)].field_768:
        return (ext_call.return_data[0] - (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000))
    if block.timestamp < poolInfo[uint32(arg1)].field_768:
        revert with 0, 17
    if block.timestamp - poolInfo[uint32(arg1)].field_768 < poolInfo[uint32(arg1)].field_1536:
        return (ext_call.return_data[0] - (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000))
    if ext_call.return_data[0] - (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000) and uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000):
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000) < (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512)) - (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000 * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512)) / 10000:
        revert with 0, 17
    return (ext_call.return_data[0] - (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000) - ((ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512)) - (ext_call.return_data[0] * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512) / 10000 * uint16(poolInfo[uint32(arg1)].field_528 + poolInfo[uint32(arg1)].field_512)) / 10000))
}

function sub_61313b39(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if uint32(arg1) >= poolInfo.length:
        revert with 0, 50
    if 0 == poolInfo[uint32(arg1)].field_768:
        revert with 0, 'any prize pending'
    if block.timestamp < poolInfo[uint32(arg1)].field_768:
        revert with 0, 17
    if block.timestamp - poolInfo[uint32(arg1)].field_768 < poolInfo[uint32(arg1)].field_1536:
        revert with 0, 'any prize pending'
    if uint32(arg1) >= poolInfo.length:
        revert with 0, 50
    mem[100] = this.address
    require ext_code.size(poolInfo[uint32(arg1)].field_0)
    staticcall poolInfo[uint32(arg1)].field_0.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and poolInfo[uint32(arg1)].field_512 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and poolInfo[uint32(arg1)].field_528 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000:
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) < ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000:
        revert with 0, 17
    if poolInfo[uint32(arg1)].field_768 > !poolInfo[uint32(arg1)].field_1536:
        revert with 0, 17
    sub_a19c0102[arg1 << 224][stor1[uint32(arg1)].field_256].field_1024 = poolInfo[uint32(arg1)].field_768 + poolInfo[uint32(arg1)].field_1536
    sub_a19c0102[arg1 << 224][stor1[uint32(arg1)].field_256].field_0 = poolInfo[uint32(arg1)].field_1024
    sub_a19c0102[arg1 << 224][stor1[uint32(arg1)].field_256].field_256 = ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000)
    if poolInfo[uint32(arg1)].field_256 == -1:
        revert with 0, 17
    poolInfo[uint32(arg1)].field_256++
    poolInfo[uint32(arg1)].field_768 = 0
    poolInfo[uint32(arg1)].field_1280 = poolInfo[uint32(arg1)].field_1024
    poolInfo[uint32(arg1)].field_1536 = sub_b3b5c7bf
    mem[ceil32(return_data.size) + 132] = address(feeAddress)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor2)
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if not ext_code.size(poolInfo[uint32(arg1)].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000, 0
    mem[ceil32(return_data.size) + 328] = 0
    call poolInfo[uint32(arg1)].field_0 with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        mem[ceil32(return_data.size) + 296] = poolInfo[uint32(arg1)].field_1024
        mem[ceil32(return_data.size) + 328] = ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000)
        mem[ceil32(return_data.size) + 260] = 68
        mem[ceil32(return_data.size) + 292 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 360] = 32
        mem[ceil32(return_data.size) + 392] = 'SafeBEP20: low-level call failed'
        if not ext_code.size(poolInfo[uint32(arg1)].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 424 len 96] = 0, poolInfo[uint32(arg1)].field_1024, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), 0
        mem[ceil32(return_data.size) + 492] = 0
        call poolInfo[uint32(arg1)].field_0 with:
           funct Mask(32, 224, 0, poolInfo[uint32(arg1)].field_1024, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, poolInfo[uint32(arg1)].field_1024, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeBEP20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            if 1 > !sub_c315bd2a[stor1[uint32(arg1)].field_1024]:
                revert with 0, 17
            sub_c315bd2a[stor1[uint32(arg1)].field_1024]++
            mem[ceil32(return_data.size) + 456] = ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000)
            emit OnWin(arg1 << 224, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), poolInfo[uint32(arg1)].field_1024);
            if 2 == sub_c315bd2a[stor1[uint32(arg1)].field_1024]:
                mem[ceil32(return_data.size) + 428] = stor6
                require ext_code.size(sub_9a33c8f2Address)
                staticcall sub_9a33c8f2Address.0xba9c9f42 with:
                        gas gas_remaining wei
                       args stor6
                mem[ceil32(return_data.size) + 424] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == this.address:
                    mem[(2 * ceil32(return_data.size)) + 428] = stor6
                    mem[(2 * ceil32(return_data.size)) + 460] = poolInfo[uint32(arg1)].field_1024
                    require ext_code.size(sub_9a33c8f2Address)
                    call sub_9a33c8f2Address.mint(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 428 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                if not mem[ceil32(return_data.size) + 456]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            if 1 > !sub_c315bd2a[stor1[uint32(arg1)].field_1024]:
                revert with 0, 17
            sub_c315bd2a[stor1[uint32(arg1)].field_1024]++
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000)
            emit OnWin(arg1 << 224, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), poolInfo[uint32(arg1)].field_1024);
            if 2 == sub_c315bd2a[stor1[uint32(arg1)].field_1024]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 429] = stor6
                require ext_code.size(sub_9a33c8f2Address)
                staticcall sub_9a33c8f2Address.0xba9c9f42 with:
                        gas gas_remaining wei
                       args stor6
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == this.address:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = stor6
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = poolInfo[uint32(arg1)].field_1024
                    require ext_code.size(sub_9a33c8f2Address)
                    call sub_9a33c8f2Address.mint(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = poolInfo[uint32(arg1)].field_1024
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeBEP20: low-level call failed'
        if not ext_code.size(poolInfo[uint32(arg1)].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, poolInfo[uint32(arg1)].field_1024, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), 0
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
        call poolInfo[uint32(arg1)].field_0 with:
           funct Mask(32, 224, 0, poolInfo[uint32(arg1)].field_1024, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, poolInfo[uint32(arg1)].field_1024, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), 0) << 288)
        if return_data.size:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 430] = 32
                mem[(4 * ceil32(return_data.size)) + 462] = 32
                mem[(4 * ceil32(return_data.size)) + 494] = 'SafeBEP20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 426
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
                if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                    mem[(4 * ceil32(return_data.size)) + 462] = 42
                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeBEP20: BEP20 operation did n'
                    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 426
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if 1 > !sub_c315bd2a[stor1[uint32(arg1)].field_1024]:
                revert with 0, 17
            sub_c315bd2a[stor1[uint32(arg1)].field_1024]++
            emit OnWin(arg1 << 224, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), poolInfo[uint32(arg1)].field_1024);
            if 2 == sub_c315bd2a[stor1[uint32(arg1)].field_1024]:
                require ext_code.size(sub_9a33c8f2Address)
                staticcall sub_9a33c8f2Address.0xba9c9f42 with:
                        gas gas_remaining wei
                       args stor6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == this.address:
                    mem[(4 * ceil32(return_data.size)) + 430] = stor6
                    mem[(4 * ceil32(return_data.size)) + 462] = poolInfo[uint32(arg1)].field_1024
                    require ext_code.size(sub_9a33c8f2Address)
                    call sub_9a33c8f2Address.mint(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 430 len (3 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeBEP20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            if 1 > !sub_c315bd2a[stor1[uint32(arg1)].field_1024]:
                revert with 0, 17
            sub_c315bd2a[stor1[uint32(arg1)].field_1024]++
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000)
            emit OnWin(arg1 << 224, ext_call.return_data[0] - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_512 / 10000) - (ext_call.return_data[0] * poolInfo[uint32(arg1)].field_528 / 10000), poolInfo[uint32(arg1)].field_1024);
            if 2 == sub_c315bd2a[stor1[uint32(arg1)].field_1024]:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 429] = stor6
                require ext_code.size(sub_9a33c8f2Address)
                staticcall sub_9a33c8f2Address.0xba9c9f42 with:
                        gas gas_remaining wei
                       args stor6
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] == this.address:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = stor6
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = poolInfo[uint32(arg1)].field_1024
                    require ext_code.size(sub_9a33c8f2Address)
                    call sub_9a33c8f2Address.mint(uint256 arg1, address arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len ceil32(return_data.size) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    poolInfo[uint32(arg1)].field_1024 = 0
}



}
