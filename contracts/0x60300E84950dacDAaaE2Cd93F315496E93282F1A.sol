contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, address arg2, address arg3)
#
address owner;
uint32 stor1;
address sub_647aba30Address;
uint256 stor1;
address masterChefAddress;
uint256 masterChefPid;
address tokenAddress;
address rewardTokenAddress;

function masterChef() payable {
    return masterChefAddress
}

function sub_647aba30(?) payable {
    return address(sub_647aba30Address)
}

function sub_8648686a(?) payable {
    return tokenAddress
}

function owner() payable {
    return owner
}

function masterChefPid() payable {
    return masterChefPid
}

function rewardToken() payable {
    return rewardTokenAddress
}

function token() payable {
    return tokenAddress
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

function balance() payable {
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args masterChefPid, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    return ext_call.return_data[0]
}

function enact() payable {
    if address(sub_647aba30Address) != msg.sender:
        revert with 0, 'Only cartographer'
    mem[100] = address(sub_647aba30Address)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(sub_647aba30Address)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(sub_647aba30Address)
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor1), uint32(stor1), address(this.address), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor1), uint32(stor1), address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor1), uint32(stor1), address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(stor1), mem[132 len 28] == bool(uint32(stor1), mem[132 len 28])
            if not uint32(stor1), mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    require ext_code.size(masterChefAddress)
    call masterChefAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args masterChefPid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function retire(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(sub_647aba30Address) != msg.sender:
        revert with 0, 'Only cartographer'
    mem[132] = this.address
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args masterChefPid, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    require ext_code.size(masterChefAddress)
    call masterChefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args masterChefPid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 196] = address(sub_647aba30Address)
    mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 160] = 68
    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor1)
    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 260] = 32
    mem[ceil32(return_data.size) + 292] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        mem[ceil32(return_data.size) + 328] = this.address
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        if 92 * ext_call.return_data[0] / ext_call.return_data[0] != 92:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + 360] = arg1
        mem[(2 * ceil32(return_data.size)) + 392] = 92 * ext_call.return_data[0] / 100
        mem[(2 * ceil32(return_data.size)) + 324] = 68
        mem[(2 * ceil32(return_data.size)) + 356 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 424] = 32
        mem[(2 * ceil32(return_data.size)) + 456] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 488 len 96] = 0, address(arg1), 92 * ext_call.return_data[0] / 100, 0
        mem[(2 * ceil32(return_data.size)) + 556] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, address(arg1), 92 * ext_call.return_data[0] / 100, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), 92 * ext_call.return_data[0] / 100, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeBEP20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 524] = arg2
                mem[(2 * ceil32(return_data.size)) + 556] = 0
                mem[(2 * ceil32(return_data.size)) + 488] = 68
                mem[(2 * ceil32(return_data.size)) + 520 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 588] = 32
                mem[(2 * ceil32(return_data.size)) + 620] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 652 len 96] = 0, address(arg2), 0, 0
                mem[(2 * ceil32(return_data.size)) + 720] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, 0, address(arg2), 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg2), 0, 0) << 288)
            else:
                if 8 * ext_call.return_data[0] / ext_call.return_data[0] != 8:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 524] = arg2
                mem[(2 * ceil32(return_data.size)) + 556] = 8 * ext_call.return_data[0] / 100
                mem[(2 * ceil32(return_data.size)) + 488] = 68
                mem[(2 * ceil32(return_data.size)) + 520 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 588] = 32
                mem[(2 * ceil32(return_data.size)) + 620] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 652 len 96] = 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0
                mem[(2 * ceil32(return_data.size)) + 720] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 684 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 684] == bool(mem[(2 * ceil32(return_data.size)) + 684])
                    if not mem[(2 * ceil32(return_data.size)) + 684]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 488] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 520] == bool(mem[(2 * ceil32(return_data.size)) + 520])
            if not mem[(2 * ceil32(return_data.size)) + 520]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324] = return_data.size
        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
            if not mem[ceil32(return_data.size) + 356]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = this.address
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
        if 92 * ext_call.return_data[0] / ext_call.return_data[0] != 92:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg1
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 92 * ext_call.return_data[0] / 100
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = 0, address(arg1), 92 * ext_call.return_data[0] / 100, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, address(arg1), 92 * ext_call.return_data[0] / 100, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg1), 92 * ext_call.return_data[0] / 100, 0) << 288)
        if return_data.size:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 494] = 32
                mem[(4 * ceil32(return_data.size)) + 526] = 32
                mem[(4 * ceil32(return_data.size)) + 558] = 'SafeBEP20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 490
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                    mem[(4 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 494] = 32
                    mem[(4 * ceil32(return_data.size)) + 526] = 42
                    mem[(4 * ceil32(return_data.size)) + 558] = 'SafeBEP20: BEP20 operation did n'
                    mem[(4 * ceil32(return_data.size)) + 590] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 490
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 526] = arg2
                mem[(4 * ceil32(return_data.size)) + 558] = 0
                mem[(4 * ceil32(return_data.size)) + 490] = 68
                mem[(4 * ceil32(return_data.size)) + 522 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 590] = 32
                mem[(4 * ceil32(return_data.size)) + 622] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 654 len 96] = 0, address(arg2), 0, 0
                mem[(4 * ceil32(return_data.size)) + 722] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, 0, address(arg2), 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg2), 0, 0) << 288)
            else:
                if 8 * ext_call.return_data[0] / ext_call.return_data[0] != 8:
                    mem[(4 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 494] = 32
                    mem[(4 * ceil32(return_data.size)) + 526] = 33
                    mem[(4 * ceil32(return_data.size)) + 558] = 'SafeMath: multiplication overflo'
                    mem[(4 * ceil32(return_data.size)) + 590] = 0x7700000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 490
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(4 * ceil32(return_data.size)) + 526] = arg2
                mem[(4 * ceil32(return_data.size)) + 558] = 8 * ext_call.return_data[0] / 100
                mem[(4 * ceil32(return_data.size)) + 490] = 68
                mem[(4 * ceil32(return_data.size)) + 522 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 590] = 32
                mem[(4 * ceil32(return_data.size)) + 622] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 654 len 96] = 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0
                mem[(4 * ceil32(return_data.size)) + 722] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 686 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 686] == bool(mem[(4 * ceil32(return_data.size)) + 686])
                    if not mem[(4 * ceil32(return_data.size)) + 686]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 653 len 96] = 0, address(arg2), 0, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 721] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, address(arg2), 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg2), 0, 0) << 288)
    else:
        if 8 * ext_call.return_data[0] / ext_call.return_data[0] != 8:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = arg2
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 8 * ext_call.return_data[0] / 100
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 653 len 96] = 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 721] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg2), 8 * ext_call.return_data[0] / 100, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 685 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 654] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 658] = 32
        mem[(4 * ceil32(return_data.size)) + 690] = 32
        mem[(4 * ceil32(return_data.size)) + 722] = 'SafeBEP20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 654
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 685])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 685]:
    mem[(4 * ceil32(return_data.size)) + 654] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 658] = 32
    mem[(4 * ceil32(return_data.size)) + 690] = 42
    mem[(4 * ceil32(return_data.size)) + 722] = 'SafeBEP20: BEP20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 754] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 654
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function withdraw(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if address(sub_647aba30Address) != msg.sender:
        revert with 0, 'Only cartographer'
    mem[132] = this.address
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args masterChefPid, this.address
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool(ceil32(return_data.size) + 160 <= test266151307())
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    require ext_code.size(masterChefAddress)
    call masterChefAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args masterChefPid, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 196] = this.address
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args masterChefPid, this.address
    mem[ceil32(return_data.size) + 160 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require bool((2 * ceil32(return_data.size)) + 224 <= test266151307())
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[32]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[(2 * ceil32(return_data.size)) + 260] = address(sub_647aba30Address)
    mem[(2 * ceil32(return_data.size)) + 292] = 0
    mem[(2 * ceil32(return_data.size)) + 224] = 68
    mem[(2 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor1)
    mem[(2 * ceil32(return_data.size)) + 256 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 324] = 32
    mem[(2 * ceil32(return_data.size)) + 356] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0, 0
    mem[(2 * ceil32(return_data.size)) + 456] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 392] = this.address
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        if 92 * ext_call.return_data[0] / ext_call.return_data[0] != 92:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + 424] = arg2
        mem[(4 * ceil32(return_data.size)) + 456] = 92 * ext_call.return_data[0] / 100
        mem[(4 * ceil32(return_data.size)) + 388] = 68
        mem[(4 * ceil32(return_data.size)) + 420 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 488] = 32
        mem[(4 * ceil32(return_data.size)) + 520] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 552 len 96] = 0, address(arg2), 92 * ext_call.return_data[0] / 100, 0
        mem[(4 * ceil32(return_data.size)) + 620] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, address(arg2), 92 * ext_call.return_data[0] / 100, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg2), 92 * ext_call.return_data[0] / 100, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeBEP20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require ext_call.return_data[32] == bool(ext_call.return_data[32])
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 588] = arg3
                mem[(4 * ceil32(return_data.size)) + 620] = 0
                mem[(4 * ceil32(return_data.size)) + 552] = 68
                mem[(4 * ceil32(return_data.size)) + 584 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 652] = 32
                mem[(4 * ceil32(return_data.size)) + 684] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 716 len 96] = 0, address(arg3), 0, 0
                mem[(4 * ceil32(return_data.size)) + 784] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, 0, address(arg3), 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg3), 0, 0) << 288)
            else:
                if 8 * ext_call.return_data[0] / ext_call.return_data[0] != 8:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(4 * ceil32(return_data.size)) + 588] = arg3
                mem[(4 * ceil32(return_data.size)) + 620] = 8 * ext_call.return_data[0] / 100
                mem[(4 * ceil32(return_data.size)) + 552] = 68
                mem[(4 * ceil32(return_data.size)) + 584 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 652] = 32
                mem[(4 * ceil32(return_data.size)) + 684] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 716 len 96] = 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0
                mem[(4 * ceil32(return_data.size)) + 784] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 748 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 748] == bool(mem[(4 * ceil32(return_data.size)) + 748])
                    if not mem[(4 * ceil32(return_data.size)) + 748]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            return 0
        mem[(4 * ceil32(return_data.size)) + 552] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 584 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 584] == bool(mem[(4 * ceil32(return_data.size)) + 584])
            if not mem[(4 * ceil32(return_data.size)) + 584]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 388] = return_data.size
        mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 420] == bool(mem[(2 * ceil32(return_data.size)) + 420])
            if not mem[(2 * ceil32(return_data.size)) + 420]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = this.address
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        if 92 * ext_call.return_data[0] / ext_call.return_data[0] != 92:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg2
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 92 * ext_call.return_data[0] / 100
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len 96] = 0, address(arg2), 92 * ext_call.return_data[0] / 100, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, address(arg2), 92 * ext_call.return_data[0] / 100, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg2), 92 * ext_call.return_data[0] / 100, 0) << 288)
        if return_data.size:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 558] = 32
                mem[(8 * ceil32(return_data.size)) + 590] = 32
                mem[(8 * ceil32(return_data.size)) + 622] = 'SafeBEP20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 554
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585])
                if not mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585]:
                    mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 558] = 32
                    mem[(8 * ceil32(return_data.size)) + 590] = 42
                    mem[(8 * ceil32(return_data.size)) + 622] = 'SafeBEP20: BEP20 operation did n'
                    mem[(8 * ceil32(return_data.size)) + 654] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (8 * ceil32(return_data.size)) + 554
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if not ext_call.return_data[0]:
                mem[(8 * ceil32(return_data.size)) + 590] = arg3
                mem[(8 * ceil32(return_data.size)) + 622] = 0
                mem[(8 * ceil32(return_data.size)) + 554] = 68
                mem[(8 * ceil32(return_data.size)) + 586 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 654] = 32
                mem[(8 * ceil32(return_data.size)) + 686] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 718 len 96] = 0, address(arg3), 0, 0
                mem[(8 * ceil32(return_data.size)) + 786] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, 0, address(arg3), 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg3), 0, 0) << 288)
            else:
                if 8 * ext_call.return_data[0] / ext_call.return_data[0] != 8:
                    mem[(8 * ceil32(return_data.size)) + 554] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(8 * ceil32(return_data.size)) + 558] = 32
                    mem[(8 * ceil32(return_data.size)) + 590] = 33
                    mem[(8 * ceil32(return_data.size)) + 622] = 'SafeMath: multiplication overflo'
                    mem[(8 * ceil32(return_data.size)) + 654] = 0x7700000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (8 * ceil32(return_data.size)) + 554
                       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(8 * ceil32(return_data.size)) + 590] = arg3
                mem[(8 * ceil32(return_data.size)) + 622] = 8 * ext_call.return_data[0] / 100
                mem[(8 * ceil32(return_data.size)) + 554] = 68
                mem[(8 * ceil32(return_data.size)) + 586 len 4] = unknown_0xa9059cbb(?????)
                mem[(8 * ceil32(return_data.size)) + 654] = 32
                mem[(8 * ceil32(return_data.size)) + 686] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(8 * ceil32(return_data.size)) + 718 len 96] = 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0
                mem[(8 * ceil32(return_data.size)) + 786] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + 750 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 750] == bool(mem[(8 * ceil32(return_data.size)) + 750])
                    if not mem[(8 * ceil32(return_data.size)) + 750]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            return 0
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg3
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 96] = 0, address(arg3), 0, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, address(arg3), 0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg3), 0, 0) << 288)
    else:
        if 8 * ext_call.return_data[0] / ext_call.return_data[0] != 8:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 589] = arg3
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 621] = 8 * ext_call.return_data[0] / 100
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 653] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 685] = 'SafeBEP20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717 len 96] = 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 785] = 0
        call rewardTokenAddress with:
           funct Mask(32, 224, 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(arg3), 8 * ext_call.return_data[0] / 100, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                return 0
        else:
            return 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 717] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 749 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 718] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 722] = 32
        mem[(8 * ceil32(return_data.size)) + 754] = 32
        mem[(8 * ceil32(return_data.size)) + 786] = 'SafeBEP20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 718
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        return 0
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 749] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 749])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 749]:
        return 0
    mem[(8 * ceil32(return_data.size)) + 718] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 722] = 32
    mem[(8 * ceil32(return_data.size)) + 754] = 42
    mem[(8 * ceil32(return_data.size)) + 786] = 'SafeBEP20: BEP20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 818] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (8 * ceil32(return_data.size)) + 718
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
