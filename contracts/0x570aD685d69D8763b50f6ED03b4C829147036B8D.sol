contract main {




// =====================  Runtime code  =====================


const sub_abbec9ae(?) = 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523

const sub_eaa6353f(?) = 0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb

const vault = 0xdddf183017cfd31bfeec4d37702b3b4f44834366


address owner;
uint256 stor1;
address sub_ffa46577Address;

function owner() {
    return owner
}

function sub_ffa46577(?) {
    return sub_ffa46577Address
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recover(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1++
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    stor1++
    require arg3.length >= 64
    mem[196 len 64] = approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb, 0, 0
    call 0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb.0x72d523 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb, 0, 0) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb:
            revert with 0, '!safeApprove'
        mem[296 len 64] = 0, 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb.0x72d523 with:
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb:
                revert with 0, '!safeApprove'
            require ext_code.size(0xdddf183017cfd31bfeec4d37702b3b4f44834366)
            call 0xdddf183017cfd31bfeec4d37702b3b4f44834366.0x853828b6 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb)
            staticcall 0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.getTokenIndex(address arg1) with:
                    gas gas_remaining wei
                   args sub_ffa46577Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0] << 248, 0, block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient LP tokens received'
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[396 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call sub_ffa46577Address with:
               funct Mask(32, 224, block.timestamp + 1) >> 224
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, 0, msg.sender, ext_call.return_data[0 len 28]) >> 32, mem[460 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb:
                    revert with 0, '!safeTransfer'
            else:
                mem[428 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[428]:
                        revert with 0, '!safeTransfer'
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, '!safeApprove'
            require ext_code.size(0xdddf183017cfd31bfeec4d37702b3b4f44834366)
            call 0xdddf183017cfd31bfeec4d37702b3b4f44834366.0x853828b6 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb)
            staticcall 0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.getTokenIndex(address arg1) with:
                    gas gas_remaining wei
                   args sub_ffa46577Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0] << 248, 0, block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient LP tokens received'
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 397 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call sub_ffa46577Address with:
               funct Mask(32, 224, block.timestamp + 1) >> 224
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, 0, msg.sender, ext_call.return_data[0 len 28]) >> 32, mem[ceil32(return_data.size) + 461 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb:
                    revert with 0, '!safeTransfer'
            else:
                mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 429]:
                        revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeApprove'
        mem[ceil32(return_data.size) + 297 len 64] = 0, 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb.0x72d523 with:
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if not approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb:
                revert with 0, '!safeApprove'
            require ext_code.size(0xdddf183017cfd31bfeec4d37702b3b4f44834366)
            call 0xdddf183017cfd31bfeec4d37702b3b4f44834366.0x853828b6 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb)
            staticcall 0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.getTokenIndex(address arg1) with:
                    gas gas_remaining wei
                   args sub_ffa46577Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0] << 248, 0, block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient LP tokens received'
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 397 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call sub_ffa46577Address with:
               funct Mask(32, 224, block.timestamp + 1) >> 224
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, 0, msg.sender, ext_call.return_data[0 len 28]) >> 32, mem[ceil32(return_data.size) + 461 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb:
                    revert with 0, '!safeTransfer'
            else:
                mem[ceil32(return_data.size) + 429 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 429]:
                        revert with 0, '!safeTransfer'
        else:
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!safeApprove'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 329]:
                    revert with 0, '!safeApprove'
            require ext_code.size(0xdddf183017cfd31bfeec4d37702b3b4f44834366)
            call 0xdddf183017cfd31bfeec4d37702b3b4f44834366.0x853828b6 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb)
            staticcall 0xc143a1500ca4a471ee9cc70b9ac0c739576f84bb.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            staticcall 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.getTokenIndex(address arg1) with:
                    gas gas_remaining wei
                   args sub_ffa46577Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x952bda8a83c3d5f398a686bb4e8c6dd90072d523)
            call 0x952bda8a83c3d5f398a686bb4e8c6dd90072d523.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0] << 248, 0, block.timestamp + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < cd[(arg3 + 68)]:
                revert with 0, 'insufficient LP tokens received'
            require ext_code.size(sub_ffa46577Address)
            staticcall sub_ffa46577Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 398 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call sub_ffa46577Address with:
               funct Mask(32, 224, block.timestamp + 1) >> 224
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, 0, msg.sender, ext_call.return_data[0 len 28]) >> 32, mem[(2 * ceil32(return_data.size)) + 462 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if not approve(address arg1, uint256 arg2), 0x952bda8a83c3d5f398a686bb:
                    revert with 0, '!safeTransfer'
            else:
                mem[(2 * ceil32(return_data.size)) + 430 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeTransfer'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 430]:
                        revert with 0, '!safeTransfer'
    if stor1 + 1 != stor1:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
