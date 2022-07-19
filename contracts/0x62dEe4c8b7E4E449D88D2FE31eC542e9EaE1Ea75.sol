contract main {




// =====================  Runtime code  =====================


#
#  - sub_1fdaeb93(?)
#  - liquidateBorrow(address arg1, address arg2)
#  - exit(address arg1, uint256 arg2, uint256 arg3)
#
const sub_83593841(?) = 1

const MULTIPLIER = 10^18


address fTokenAddress;
address adminAddress;
address pendingAdminAddress;
address controllerAddress;
mapping of struct sub_768e5b27;
mapping of struct sub_a0912155;
mapping of uint256 totalMinted;
mapping of uint256 sub_3e9fa81a;
uint256 stor8;
uint8 stor9;
uint8 stor9; offset 8
uint16 stor9;

function totalMinted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalMinted[arg1]
}

function pendingAdmin() payable {
    return pendingAdminAddress
}

function sub_3e9fa81a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3e9fa81a[arg1]
}

function sub_768e5b27(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_768e5b27[arg1][arg2].field_0, sub_768e5b27[arg1][arg2].field_256, sub_768e5b27[arg1][arg2].field_512
}

function sub_a0912155(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_a0912155[arg1][arg2].field_0, sub_a0912155[arg1][arg2].field_256
}

function fToken() payable {
    return fTokenAddress
}

function controller() payable {
    return controllerAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function _setPendingAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Creditum: !admin'
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
}

function _acceptAdmin() payable {
    if not pendingAdminAddress:
        revert with 0, 'Creditum: no pending admin'
    if pendingAdminAddress != msg.sender:
        revert with 0, 'Creditum: !pending admin'
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(adminAddress, pendingAdminAddress);
    emit NewPendingAdmin(pendingAdminAddress, pendingAdminAddress);
}

function _setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Creditum: !admin'
    require ext_code.size(arg1)
    staticcall arg1.0x17961faa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Creditum: !valid controller contract'
    controllerAddress = arg1
}

function triggerLiquidation(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.paused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        emit Failure(1);
        stor8 = 1
        return 1
    require ext_code.size(controllerAddress)
    call controllerAddress.0xa8ab52b0 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if ext_call.return_data[0] > 18:
            revert with 0, 33
        emit Failure(ext_call.return_data[0]);
        stor8 = 1
        return ext_call.return_data[0]
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x4aa967b0 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_768e5b27[address(arg2)][address(arg1)].field_256 = ext_call.return_data[0]
    sub_a0912155[address(arg2)][address(arg1)].field_0 = block.timestamp
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0x1eee3aa3 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    sub_a0912155[address(arg2)][address(arg1)].field_256 = ext_call.return_data[32]
    emit 0x92da71c8: block.timestamp, ext_call.return_data[32], msg.sender, arg1, arg2
    stor8 = 1
    return 0
}

function sub_04ed4c53(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    if not uint8(stor9.field_8):
        if uint8(stor9.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor9.field_8):
            uint16(stor9.field_0) = 257
    if adminAddress != msg.sender:
        revert with 0, 'Creditum: !admin'
    if fTokenAddress:
        revert with 0, 'Creditum: already initialized'
    if not arg1.length:
        revert with 0, 'Creditum: !name'
    if arg2.length <= 0:
        revert with 0, 'Creditum: !symbol'
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x17961faa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Creditum: !valid controller contract'
    controllerAddress = address(arg3)
    if ceil32(arg1.length) <= arg1.length:
        create contract with 0 wei
                        code: code.data[18370 len 5146], Array(len=ceil32(arg1.length) + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256)
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 5340] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 5372 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 5372] = 0
        create contract with 0 wei
                        code: code.data[18370 len 5146], Array(len=ceil32(arg1.length) + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 5372 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    fTokenAddress = address(create.new_address)
    if not uint8(stor9.field_8):
        uint8(stor9.field_8) = 0
}

function sub_25a61ea3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.paused() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        emit Failure(1);
        stor8 = 1
        return 1, 0
    if not arg2:
        emit Failure(10);
        stor8 = 1
        return 10, 0
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = address(arg1)
    mem[ceil32(return_data.size) + 164] = arg2
    require ext_code.size(controllerAddress)
    call controllerAddress.0xc6b4e377 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if ext_call.return_data[0] > 18:
            revert with 0, 33
        emit Failure(ext_call.return_data[0]);
        stor8 = 1
        return ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    mem[(4 * ceil32(return_data.size)) + 196] = arg2
    mem[(4 * ceil32(return_data.size)) + 96] = 100
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(4 * ceil32(return_data.size)) + 228] = 32
    mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[(4 * ceil32(return_data.size)) + 392] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
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
        mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
            if not mem[(4 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if sub_3e9fa81a[address(arg1)] > !0:
        revert with 0, 17
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] > 18:
        if ext_call.return_data[31 len 1] < 18:
            revert with 0, 17
        if not ext_call.return_data[31 len 1] - 18:
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xf75fabb8 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 0 and ext_call.return_data[32] > -1 / 0:
                revert with 0, 17
            if 0 < (ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18:
                revert with 0, 17
            require ext_code.size(fTokenAddress)
            call fTokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, -(ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if (ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18:
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(fTokenAddress)
                call fTokenAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[12 len 20], (ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x86bf5b76: -((ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18), msg.sender, address(arg1)
            stor8 = 1
            return 0, -(ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18
        if bool(bool(ext_call.return_data[31 len 1] - 18 < 78)) or bool(bool(ext_call.return_data[31 len 1] - 18 < 32)):
            if not 10^(ext_call.return_data[31 len 1] - 18):
                revert with 0, 18
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xf75fabb8 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 0 / 10^(uint8(ext_call.return_data[0]) - 18) and ext_call.return_data[32] > -1 / 0 / 10^(uint8(ext_call.return_data[0]) - 18):
                revert with 0, 17
            if 0 / 10^(uint8(ext_call.return_data[0]) - 18) < 0 / 10^(uint8(ext_call.return_data[0]) - 18) * ext_call.return_data[32] / 10^18:
                revert with 0, 17
            require ext_code.size(fTokenAddress)
            call fTokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (0 / 10^(uint8(ext_call.return_data[0]) - 18)) - (0 / 10^(uint8(ext_call.return_data[0]) - 18) * ext_call.return_data[32] / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 0 / 10^(uint8(ext_call.return_data[0]) - 18) * ext_call.return_data[32] / 10^18:
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.treasury() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(fTokenAddress)
                call fTokenAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[12 len 20], 0 / 10^(uint8(ext_call.return_data[0]) - 18) * ext_call.return_data[32] / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x86bf5b76: ((0 / 10^(uint8(ext_call.return_data[0]) - 18)) - (0 / 10^(uint8(ext_call.return_data[0]) - 18) * ext_call.return_data[32] / 10^18)), msg.sender, address(arg1)
            stor8 = 1
            return 0, 
                   (0 / 10^(uint8(ext_call.return_data[0]) - 18)) - (0 / 10^(uint8(ext_call.return_data[0]) - 18) * ext_call.return_data[32] / 10^18)
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1] - 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xf75fabb8 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 0 / s * t and ext_call.return_data[32] > -1 / 0 / s * t:
            revert with 0, 17
        if 0 / s * t < 0 / s * t * ext_call.return_data[32] / 10^18:
            revert with 0, 17
        require ext_code.size(fTokenAddress)
        call fTokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (0 / s * t) - (0 / s * t * ext_call.return_data[32] / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 0 / s * t * ext_call.return_data[32] / 10^18:
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.treasury() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(fTokenAddress)
            call fTokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[12 len 20], 0 / s * t * ext_call.return_data[32] / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x86bf5b76: ((0 / s * t) - (0 / s * t * ext_call.return_data[32] / 10^18)), msg.sender, address(arg1)
        stor8 = 1
        return 0, (0 / s * t) - (0 / s * t * ext_call.return_data[32] / 10^18)
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xf75fabb8 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 0 and ext_call.return_data[32] > -1 / 0:
            revert with 0, 17
        if 0 < (ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18:
            revert with 0, 17
        require ext_code.size(fTokenAddress)
        call fTokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, -(ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if (ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18:
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.treasury() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(fTokenAddress)
            call fTokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[12 len 20], (ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x86bf5b76: -((ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18), msg.sender, address(arg1)
        stor8 = 1
        return 0, -(ext_call.return_data[0] * ext_call.return_data[32]) - (ext_call.return_data[0] * ext_call.return_data[32]) / 10^18
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if 0 and 10^(-ext_call.return_data[31 len 1] + 18) > -1 / 0:
            revert with 0, 17
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xf75fabb8 with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) and ext_call.return_data[32] > -1 / (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)):
            revert with 0, 17
        if (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) < (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 10^18:
            revert with 0, 17
        require ext_code.size(fTokenAddress)
        call fTokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - ((ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 10^18:
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.treasury() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(fTokenAddress)
            call fTokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[12 len 20], (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x86bf5b76: ((ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - ((ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 10^18)), msg.sender, address(arg1)
        stor8 = 1
        return 0, 
               (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18)) - ((ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) - (ext_call.return_data[0] * 10^(-uint8(ext_call.return_data[0]) + 18) * ext_call.return_data[32]) / 10^18)
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if 0 and s * t > -1 / 0:
        revert with 0, 17
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xf75fabb8 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if (ext_call.return_data[0] * s * t) - (ext_call.return_data[0] * s * t) and ext_call.return_data[32] > -1 / (ext_call.return_data[0] * s * t) - (ext_call.return_data[0] * s * t):
        revert with 0, 17
    if (ext_call.return_data[0] * s * t) - (ext_call.return_data[0] * s * t) < (ext_call.return_data[0] * s * t * ext_call.return_data[32]) - (ext_call.return_data[0] * s * t * ext_call.return_data[32]) / 10^18:
        revert with 0, 17
    require ext_code.size(fTokenAddress)
    call fTokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (ext_call.return_data[0] * s * t) - (ext_call.return_data[0] * s * t) - ((ext_call.return_data[0] * s * t * ext_call.return_data[32]) - (ext_call.return_data[0] * s * t * ext_call.return_data[32]) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if (ext_call.return_data[0] * s * t * ext_call.return_data[32]) - (ext_call.return_data[0] * s * t * ext_call.return_data[32]) / 10^18:
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.treasury() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(fTokenAddress)
        call fTokenAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[12 len 20], (ext_call.return_data[0] * s * t * ext_call.return_data[32]) - (ext_call.return_data[0] * s * t * ext_call.return_data[32]) / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x86bf5b76: ((ext_call.return_data[0] * s * t) - (ext_call.return_data[0] * s * t) - ((ext_call.return_data[0] * s * t * ext_call.return_data[32]) - (ext_call.return_data[0] * s * t * ext_call.return_data[32]) / 10^18)), msg.sender, address(arg1)
    stor8 = 1
    return 0, 
           (ext_call.return_data[0] * s * t) - (ext_call.return_data[0] * s * t) - ((ext_call.return_data[0] * s * t * ext_call.return_data[32]) - (ext_call.return_data[0] * s * t * ext_call.return_data[32]) / 10^18)
}

function sub_d5804bd4(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        stor8 = 2
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.paused() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if arg2:
                    mem[ceil32(return_data.size) + 100] = msg.sender
                    mem[ceil32(return_data.size) + 132] = address(arg1)
                    mem[ceil32(return_data.size) + 164] = arg2
                    mem[ceil32(return_data.size) + 196] = arg3
                    require ext_code.size(controllerAddress)
                    call controllerAddress.0xd552a84f with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg2, arg3
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if not arg2:
                                if not arg3:
                                    if not arg2:
                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                        stor8 = 1
                                        return 0
                                    else:
                                        if arg3:
                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                            stor8 = 1
                                            return 0
                                        else:
                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                            stor8 = 1
                                            return 0
                                else:
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            require ext_code.size(controllerAddress)
                                            staticcall controllerAddress.0x4aa967b0 with:
                                                    gas gas_remaining wei
                                                   args msg.sender, address(arg1)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                    revert with 0, 17
                                                else:
                                                    if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                        revert with 0, 17
                                                    else:
                                                        totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                        if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                            revert with 0, 17
                                                        else:
                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                            if totalMinted[address(arg1)] > !arg3:
                                                                revert with 0, 17
                                                            else:
                                                                totalMinted[address(arg1)] += arg3
                                                                require ext_code.size(controllerAddress)
                                                                staticcall controllerAddress.0x4ee5c419 with:
                                                                        gas gas_remaining wei
                                                                       args msg.sender, address(arg1)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 192
                                                                    if ext_call.return_data[0]:
                                                                        revert with 0, 'Creditum: failed to verify health factor'
                                                                    else:
                                                                        if ext_call.return_data[128]:
                                                                            revert with 0, 'Creditum: !healthy'
                                                                        else:
                                                                            if ext_call.return_data[160] < 10^18:
                                                                                revert with 0, 'Creditum: !healthy'
                                                                            else:
                                                                                require ext_code.size(fTokenAddress)
                                                                                call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                    emit Borrow(arg3, msg.sender, address(arg1));
                                                                                    if not arg2:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0, 0, arg3
                                                                                    else:
                                                                                        if arg3:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0, 0, arg3
                                                                                        else:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0, 0, arg3
                                        else:
                                            if ext_call.return_data[0] > 18:
                                                revert with 0, 33
                                            else:
                                                emit Failure(ext_call.return_data[0]);
                                                if not arg2:
                                                    if not ext_call.return_data[0]:
                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                        stor8 = 1
                                                        return 0
                                                    else:
                                                        if ext_call.return_data[0] > 18:
                                                            revert with 0, 33
                                                        else:
                                                            emit Failure(ext_call.return_data[0]);
                                                            stor8 = 1
                                                            return ext_call.return_data[0], 0, 0
                                                else:
                                                    if arg3:
                                                        if ext_call.return_data[0]:
                                                            revert with 0, 'Creditum: borrowFresh failed'
                                                        else:
                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                            stor8 = 1
                                                            return 0
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                            stor8 = 1
                                                            return 0
                                                        else:
                                                            if ext_call.return_data[0] > 18:
                                                                revert with 0, 33
                                                            else:
                                                                emit Failure(ext_call.return_data[0]);
                                                                stor8 = 1
                                                                return ext_call.return_data[0], 0, 0
                            else:
                                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                                mem[(2 * ceil32(return_data.size)) + 164] = arg2
                                require ext_code.size(controllerAddress)
                                call controllerAddress.0xc8f8fea5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg1), arg2
                                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        mem[(4 * ceil32(return_data.size)) + 100] = this.address
                                        require ext_code.size(address(arg1))
                                        staticcall address(arg1).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                                            mem[(6 * ceil32(return_data.size)) + 164] = this.address
                                            mem[(6 * ceil32(return_data.size)) + 196] = arg2
                                            mem[(6 * ceil32(return_data.size)) + 96] = 100
                                            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                                            mem[(6 * ceil32(return_data.size)) + 228] = 32
                                            mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 'Address: insufficient balance for call'
                                            else:
                                                if not ext_code.size(address(arg1)):
                                                    revert with 0, 'Address: call to non-contract'
                                                else:
                                                    mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                                                    mem[(6 * ceil32(return_data.size)) + 392] = 0
                                                    call address(arg1) with:
                                                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                                                         gas gas_remaining wei
                                                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            if ext_call.return_data[0]:
                                                                revert with memory
                                                                  from 128
                                                                   len ext_call.return_data[0]
                                                            else:
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(address(arg1))
                                                                staticcall address(arg1).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if sub_768e5b27[address(arg1)][address(msg.sender)].field_0 > !0:
                                                                            revert with 0, 17
                                                                        else:
                                                                            emit Deposit(0, msg.sender, address(arg1));
                                                                            if not arg3:
                                                                                if not arg2:
                                                                                    emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                    stor8 = 1
                                                                                    return 0
                                                                                else:
                                                                                    if arg3:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0
                                                                                    else:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0
                                                                            else:
                                                                                require ext_code.size(controllerAddress)
                                                                                call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not ext_call.return_data[0]:
                                                                                        require ext_code.size(controllerAddress)
                                                                                        staticcall controllerAddress.0x4aa967b0 with:
                                                                                                gas gas_remaining wei
                                                                                               args msg.sender, address(arg1)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                                                    sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                                                    sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                                                    if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                                                        if totalMinted[address(arg1)] > !arg3:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            totalMinted[address(arg1)] += arg3
                                                                                                            require ext_code.size(controllerAddress)
                                                                                                            staticcall controllerAddress.0x4ee5c419 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args msg.sender, address(arg1)
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 192
                                                                                                                if ext_call.return_data[0]:
                                                                                                                    revert with 0, 'Creditum: failed to verify health factor'
                                                                                                                else:
                                                                                                                    if ext_call.return_data[128]:
                                                                                                                        revert with 0, 'Creditum: !healthy'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[160] < 10^18:
                                                                                                                            revert with 0, 'Creditum: !healthy'
                                                                                                                        else:
                                                                                                                            require ext_code.size(fTokenAddress)
                                                                                                                            call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args msg.sender, arg3
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                                                if not arg2:
                                                                                                                                    emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                    stor8 = 1
                                                                                                                                    return 0, 0, arg3
                                                                                                                                else:
                                                                                                                                    if arg3:
                                                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                        stor8 = 1
                                                                                                                                        return 0, 0, arg3
                                                                                                                                    else:
                                                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                        stor8 = 1
                                                                                                                                        return 0, 0, arg3
                                                                                    else:
                                                                                        if ext_call.return_data[0] > 18:
                                                                                            revert with 0, 33
                                                                                        else:
                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                            if not arg2:
                                                                                                if not ext_call.return_data[0]:
                                                                                                    emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                    stor8 = 1
                                                                                                    return 0
                                                                                                else:
                                                                                                    if ext_call.return_data[0] > 18:
                                                                                                        revert with 0, 33
                                                                                                    else:
                                                                                                        emit Failure(ext_call.return_data[0]);
                                                                                                        stor8 = 1
                                                                                                        return ext_call.return_data[0], 0, 0
                                                                                            else:
                                                                                                if arg3:
                                                                                                    if ext_call.return_data[0]:
                                                                                                        revert with 0, 'Creditum: borrowFresh failed'
                                                                                                    else:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0
                                                                                                else:
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] > 18:
                                                                                                            revert with 0, 33
                                                                                                        else:
                                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                                            stor8 = 1
                                                                                                            return ext_call.return_data[0], 0, 0
                                                            else:
                                                                require ext_call.return_data[0] >= 32
                                                                require mem[128] == bool(mem[128])
                                                                if not mem[128]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    require ext_code.size(address(arg1))
                                                                    staticcall address(arg1).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if sub_768e5b27[address(arg1)][address(msg.sender)].field_0 > !0:
                                                                                revert with 0, 17
                                                                            else:
                                                                                emit Deposit(0, msg.sender, address(arg1));
                                                                                if not arg3:
                                                                                    if not arg2:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0
                                                                                    else:
                                                                                        if arg3:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                        else:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                else:
                                                                                    require ext_code.size(controllerAddress)
                                                                                    call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(controllerAddress)
                                                                                            staticcall controllerAddress.0x4aa967b0 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args msg.sender, address(arg1)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                                                        if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                                                            if totalMinted[address(arg1)] > !arg3:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                totalMinted[address(arg1)] += arg3
                                                                                                                require ext_code.size(controllerAddress)
                                                                                                                staticcall controllerAddress.0x4ee5c419 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender, address(arg1)
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 192
                                                                                                                    if ext_call.return_data[0]:
                                                                                                                        revert with 0, 'Creditum: failed to verify health factor'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[128]:
                                                                                                                            revert with 0, 'Creditum: !healthy'
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[160] < 10^18:
                                                                                                                                revert with 0, 'Creditum: !healthy'
                                                                                                                            else:
                                                                                                                                require ext_code.size(fTokenAddress)
                                                                                                                                call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, arg3
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                    emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                                                    if not arg2:
                                                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                        stor8 = 1
                                                                                                                                        return 0, 0, arg3
                                                                                                                                    else:
                                                                                                                                        if arg3:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                                                                        else:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                        else:
                                                                                            if ext_call.return_data[0] > 18:
                                                                                                revert with 0, 33
                                                                                            else:
                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                if not arg2:
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] > 18:
                                                                                                            revert with 0, 33
                                                                                                        else:
                                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                                            stor8 = 1
                                                                                                            return ext_call.return_data[0], 0, 0
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if ext_call.return_data[0]:
                                                                                                            revert with 0, 'Creditum: borrowFresh failed'
                                                                                                        else:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                    else:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] > 18:
                                                                                                                revert with 0, 33
                                                                                                            else:
                                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                                stor8 = 1
                                                                                                                return ext_call.return_data[0], 0, 0
                                                    else:
                                                        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                revert with 0, 'SafeERC20: low-level call failed'
                                                        else:
                                                            if not return_data.size:
                                                                require ext_code.size(address(arg1))
                                                                staticcall address(arg1).0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if sub_768e5b27[address(arg1)][address(msg.sender)].field_0 > !0:
                                                                            revert with 0, 17
                                                                        else:
                                                                            emit Deposit(0, msg.sender, address(arg1));
                                                                            if not arg3:
                                                                                if not arg2:
                                                                                    emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                    stor8 = 1
                                                                                    return 0
                                                                                else:
                                                                                    if arg3:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0
                                                                                    else:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0
                                                                            else:
                                                                                require ext_code.size(controllerAddress)
                                                                                call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, address(arg1), arg3
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not ext_call.return_data[0]:
                                                                                        require ext_code.size(controllerAddress)
                                                                                        staticcall controllerAddress.0x4aa967b0 with:
                                                                                                gas gas_remaining wei
                                                                                               args msg.sender, address(arg1)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                                                    sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                                                    sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                                                    if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                                                        if totalMinted[address(arg1)] > !arg3:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            totalMinted[address(arg1)] += arg3
                                                                                                            require ext_code.size(controllerAddress)
                                                                                                            staticcall controllerAddress.0x4ee5c419 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args msg.sender, address(arg1)
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 192
                                                                                                                if ext_call.return_data[0]:
                                                                                                                    revert with 0, 'Creditum: failed to verify health factor'
                                                                                                                else:
                                                                                                                    if ext_call.return_data[128]:
                                                                                                                        revert with 0, 'Creditum: !healthy'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[160] < 10^18:
                                                                                                                            revert with 0, 'Creditum: !healthy'
                                                                                                                        else:
                                                                                                                            require ext_code.size(fTokenAddress)
                                                                                                                            call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args msg.sender, arg3
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                                                if not arg2:
                                                                                                                                    emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                    stor8 = 1
                                                                                                                                    return 0, 0, arg3
                                                                                                                                else:
                                                                                                                                    if arg3:
                                                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                        stor8 = 1
                                                                                                                                        return 0, 0, arg3
                                                                                                                                    else:
                                                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                        stor8 = 1
                                                                                                                                        return 0, 0, arg3
                                                                                    else:
                                                                                        if ext_call.return_data[0] > 18:
                                                                                            revert with 0, 33
                                                                                        else:
                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                            if not arg2:
                                                                                                if not ext_call.return_data[0]:
                                                                                                    emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                    stor8 = 1
                                                                                                    return 0
                                                                                                else:
                                                                                                    if ext_call.return_data[0] > 18:
                                                                                                        revert with 0, 33
                                                                                                    else:
                                                                                                        emit Failure(ext_call.return_data[0]);
                                                                                                        stor8 = 1
                                                                                                        return ext_call.return_data[0], 0, 0
                                                                                            else:
                                                                                                if arg3:
                                                                                                    if ext_call.return_data[0]:
                                                                                                        revert with 0, 'Creditum: borrowFresh failed'
                                                                                                    else:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0
                                                                                                else:
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] > 18:
                                                                                                            revert with 0, 33
                                                                                                        else:
                                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                                            stor8 = 1
                                                                                                            return ext_call.return_data[0], 0, 0
                                                            else:
                                                                require return_data.size >= 32
                                                                require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                                                                if not mem[(6 * ceil32(return_data.size)) + 324]:
                                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                else:
                                                                    require ext_code.size(address(arg1))
                                                                    staticcall address(arg1).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if sub_768e5b27[address(arg1)][address(msg.sender)].field_0 > !0:
                                                                                revert with 0, 17
                                                                            else:
                                                                                emit Deposit(0, msg.sender, address(arg1));
                                                                                if not arg3:
                                                                                    if not arg2:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0
                                                                                    else:
                                                                                        if arg3:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                        else:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                else:
                                                                                    require ext_code.size(controllerAddress)
                                                                                    call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(controllerAddress)
                                                                                            staticcall controllerAddress.0x4aa967b0 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args msg.sender, address(arg1)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                                                        if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                                                            if totalMinted[address(arg1)] > !arg3:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                totalMinted[address(arg1)] += arg3
                                                                                                                require ext_code.size(controllerAddress)
                                                                                                                staticcall controllerAddress.0x4ee5c419 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender, address(arg1)
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 192
                                                                                                                    if ext_call.return_data[0]:
                                                                                                                        revert with 0, 'Creditum: failed to verify health factor'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[128]:
                                                                                                                            revert with 0, 'Creditum: !healthy'
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[160] < 10^18:
                                                                                                                                revert with 0, 'Creditum: !healthy'
                                                                                                                            else:
                                                                                                                                require ext_code.size(fTokenAddress)
                                                                                                                                call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, arg3
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                    emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                                                    if not arg2:
                                                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                        stor8 = 1
                                                                                                                                        return 0, 0, arg3
                                                                                                                                    else:
                                                                                                                                        if arg3:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                                                                        else:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                        else:
                                                                                            if ext_call.return_data[0] > 18:
                                                                                                revert with 0, 33
                                                                                            else:
                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                if not arg2:
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] > 18:
                                                                                                            revert with 0, 33
                                                                                                        else:
                                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                                            stor8 = 1
                                                                                                            return ext_call.return_data[0], 0, 0
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if ext_call.return_data[0]:
                                                                                                            revert with 0, 'Creditum: borrowFresh failed'
                                                                                                        else:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                    else:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] > 18:
                                                                                                                revert with 0, 33
                                                                                                            else:
                                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                                stor8 = 1
                                                                                                                return ext_call.return_data[0], 0, 0
                                    else:
                                        if ext_call.return_data[0] > 18:
                                            revert with 0, 33
                                        else:
                                            emit Failure(ext_call.return_data[0]);
                                            if not arg3:
                                                if not arg2:
                                                    if not ext_call.return_data[0]:
                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                        stor8 = 1
                                                        return 0
                                                    else:
                                                        if ext_call.return_data[0] > 18:
                                                            revert with 0, 33
                                                        else:
                                                            emit Failure(ext_call.return_data[0]);
                                                            stor8 = 1
                                                            return ext_call.return_data[0], 0, 0
                                                else:
                                                    if arg3:
                                                        if ext_call.return_data[0]:
                                                            revert with 0, 'Creditum: depositFresh failed'
                                                        else:
                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                            stor8 = 1
                                                            return 0
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                            stor8 = 1
                                                            return 0
                                                        else:
                                                            if ext_call.return_data[0] > 18:
                                                                revert with 0, 33
                                                            else:
                                                                emit Failure(ext_call.return_data[0]);
                                                                stor8 = 1
                                                                return ext_call.return_data[0], 0, 0
                                            else:
                                                require ext_code.size(controllerAddress)
                                                call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require ext_code.size(controllerAddress)
                                                        staticcall controllerAddress.0x4aa967b0 with:
                                                                gas gas_remaining wei
                                                               args msg.sender, address(arg1)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                revert with 0, 17
                                                            else:
                                                                if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                    revert with 0, 17
                                                                else:
                                                                    totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                    sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                    sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                    if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                        revert with 0, 17
                                                                    else:
                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                        if totalMinted[address(arg1)] > !arg3:
                                                                            revert with 0, 17
                                                                        else:
                                                                            totalMinted[address(arg1)] += arg3
                                                                            require ext_code.size(controllerAddress)
                                                                            staticcall controllerAddress.0x4ee5c419 with:
                                                                                    gas gas_remaining wei
                                                                                   args msg.sender, address(arg1)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 192
                                                                                if ext_call.return_data[0]:
                                                                                    revert with 0, 'Creditum: failed to verify health factor'
                                                                                else:
                                                                                    if ext_call.return_data[128]:
                                                                                        revert with 0, 'Creditum: !healthy'
                                                                                    else:
                                                                                        if ext_call.return_data[160] < 10^18:
                                                                                            revert with 0, 'Creditum: !healthy'
                                                                                        else:
                                                                                            require ext_code.size(fTokenAddress)
                                                                                            call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, arg3
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                if not arg2:
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0, 0, arg3
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] > 18:
                                                                                                            revert with 0, 33
                                                                                                        else:
                                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                                            stor8 = 1
                                                                                                            return ext_call.return_data[0], 0, 0
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if ext_call.return_data[0]:
                                                                                                            revert with 0, 'Creditum: depositFresh failed'
                                                                                                        else:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0, 0, arg3
                                                                                                    else:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0, 0, arg3
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] > 18:
                                                                                                                revert with 0, 33
                                                                                                            else:
                                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                                stor8 = 1
                                                                                                                return ext_call.return_data[0], 0, 0
                                                    else:
                                                        if ext_call.return_data[0] > 18:
                                                            revert with 0, 33
                                                        else:
                                                            emit Failure(ext_call.return_data[0]);
                                                            if not arg2:
                                                                if not ext_call.return_data[0]:
                                                                    if not ext_call.return_data[0]:
                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                        stor8 = 1
                                                                        return 0
                                                                    else:
                                                                        if ext_call.return_data[0] > 18:
                                                                            revert with 0, 33
                                                                        else:
                                                                            emit Failure(ext_call.return_data[0]);
                                                                            stor8 = 1
                                                                            return ext_call.return_data[0], 0, 0
                                                                else:
                                                                    if ext_call.return_data[0] > 18:
                                                                        revert with 0, 33
                                                                    else:
                                                                        emit Failure(ext_call.return_data[0]);
                                                                        stor8 = 1
                                                                        return ext_call.return_data[0], 0, 0
                                                            else:
                                                                if arg3:
                                                                    if ext_call.return_data[0]:
                                                                        revert with 0, 'Creditum: depositFresh failed'
                                                                    else:
                                                                        if ext_call.return_data[0]:
                                                                            revert with 0, 'Creditum: borrowFresh failed'
                                                                        else:
                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                            stor8 = 1
                                                                            return 0
                                                                else:
                                                                    if not ext_call.return_data[0]:
                                                                        if not ext_call.return_data[0]:
                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                            stor8 = 1
                                                                            return 0
                                                                        else:
                                                                            if ext_call.return_data[0] > 18:
                                                                                revert with 0, 33
                                                                            else:
                                                                                emit Failure(ext_call.return_data[0]);
                                                                                stor8 = 1
                                                                                return ext_call.return_data[0], 0, 0
                                                                    else:
                                                                        if ext_call.return_data[0] > 18:
                                                                            revert with 0, 33
                                                                        else:
                                                                            emit Failure(ext_call.return_data[0]);
                                                                            stor8 = 1
                                                                            return ext_call.return_data[0], 0, 0
                        else:
                            if ext_call.return_data[0] > 18:
                                revert with 0, 33
                            else:
                                emit Failure(ext_call.return_data[0]);
                                stor8 = 1
                                return ext_call.return_data[0], 0, 0
                else:
                    if arg3:
                        mem[ceil32(return_data.size) + 100] = msg.sender
                        mem[ceil32(return_data.size) + 132] = address(arg1)
                        mem[ceil32(return_data.size) + 164] = arg2
                        mem[ceil32(return_data.size) + 196] = arg3
                        require ext_code.size(controllerAddress)
                        call controllerAddress.0xd552a84f with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg2, arg3
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if not arg2:
                                    if not arg3:
                                        if not arg2:
                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                            stor8 = 1
                                            return 0
                                        else:
                                            if arg3:
                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                stor8 = 1
                                                return 0
                                            else:
                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                stor8 = 1
                                                return 0
                                    else:
                                        require ext_code.size(controllerAddress)
                                        call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args msg.sender, address(arg1), arg3
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                require ext_code.size(controllerAddress)
                                                staticcall controllerAddress.0x4aa967b0 with:
                                                        gas gas_remaining wei
                                                       args msg.sender, address(arg1)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                        revert with 0, 17
                                                    else:
                                                        if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                            revert with 0, 17
                                                        else:
                                                            totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                            if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                revert with 0, 17
                                                            else:
                                                                sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                if totalMinted[address(arg1)] > !arg3:
                                                                    revert with 0, 17
                                                                else:
                                                                    totalMinted[address(arg1)] += arg3
                                                                    require ext_code.size(controllerAddress)
                                                                    staticcall controllerAddress.0x4ee5c419 with:
                                                                            gas gas_remaining wei
                                                                           args msg.sender, address(arg1)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 192
                                                                        if ext_call.return_data[0]:
                                                                            revert with 0, 'Creditum: failed to verify health factor'
                                                                        else:
                                                                            if ext_call.return_data[128]:
                                                                                revert with 0, 'Creditum: !healthy'
                                                                            else:
                                                                                if ext_call.return_data[160] < 10^18:
                                                                                    revert with 0, 'Creditum: !healthy'
                                                                                else:
                                                                                    require ext_code.size(fTokenAddress)
                                                                                    call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, arg3
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                        emit Borrow(arg3, msg.sender, address(arg1));
                                                                                        if not arg2:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0, 0, arg3
                                                                                        else:
                                                                                            if arg3:
                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                stor8 = 1
                                                                                                return 0, 0, arg3
                                                                                            else:
                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                stor8 = 1
                                                                                                return 0, 0, arg3
                                            else:
                                                if ext_call.return_data[0] > 18:
                                                    revert with 0, 33
                                                else:
                                                    emit Failure(ext_call.return_data[0]);
                                                    if not arg2:
                                                        if not ext_call.return_data[0]:
                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                            stor8 = 1
                                                            return 0
                                                        else:
                                                            if ext_call.return_data[0] > 18:
                                                                revert with 0, 33
                                                            else:
                                                                emit Failure(ext_call.return_data[0]);
                                                                stor8 = 1
                                                                return ext_call.return_data[0], 0, 0
                                                    else:
                                                        if arg3:
                                                            if ext_call.return_data[0]:
                                                                revert with 0, 'Creditum: borrowFresh failed'
                                                            else:
                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                stor8 = 1
                                                                return 0
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                stor8 = 1
                                                                return 0
                                                            else:
                                                                if ext_call.return_data[0] > 18:
                                                                    revert with 0, 33
                                                                else:
                                                                    emit Failure(ext_call.return_data[0]);
                                                                    stor8 = 1
                                                                    return ext_call.return_data[0], 0, 0
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
                                    mem[(2 * ceil32(return_data.size)) + 164] = arg2
                                    require ext_code.size(controllerAddress)
                                    call controllerAddress.0xc8f8fea5 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg2
                                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            mem[(4 * ceil32(return_data.size)) + 100] = this.address
                                            require ext_code.size(address(arg1))
                                            staticcall address(arg1).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                                                mem[(6 * ceil32(return_data.size)) + 164] = this.address
                                                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                                                mem[(6 * ceil32(return_data.size)) + 96] = 100
                                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                                                mem[(6 * ceil32(return_data.size)) + 228] = 32
                                                mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 'Address: insufficient balance for call'
                                                else:
                                                    if not ext_code.size(address(arg1)):
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                                                        mem[(6 * ceil32(return_data.size)) + 392] = 0
                                                        call address(arg1) with:
                                                           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                                                             gas gas_remaining wei
                                                            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    revert with memory
                                                                      from 128
                                                                       len ext_call.return_data[0]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if not ext_call.return_data[0]:
                                                                    require ext_code.size(address(arg1))
                                                                    staticcall address(arg1).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if sub_768e5b27[address(arg1)][address(msg.sender)].field_0 > !0:
                                                                                revert with 0, 17
                                                                            else:
                                                                                emit Deposit(0, msg.sender, address(arg1));
                                                                                if not arg3:
                                                                                    if not arg2:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0
                                                                                    else:
                                                                                        if arg3:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                        else:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                else:
                                                                                    require ext_code.size(controllerAddress)
                                                                                    call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(controllerAddress)
                                                                                            staticcall controllerAddress.0x4aa967b0 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args msg.sender, address(arg1)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                                                        if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                                                            if totalMinted[address(arg1)] > !arg3:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                totalMinted[address(arg1)] += arg3
                                                                                                                require ext_code.size(controllerAddress)
                                                                                                                staticcall controllerAddress.0x4ee5c419 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender, address(arg1)
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 192
                                                                                                                    if ext_call.return_data[0]:
                                                                                                                        revert with 0, 'Creditum: failed to verify health factor'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[128]:
                                                                                                                            revert with 0, 'Creditum: !healthy'
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[160] < 10^18:
                                                                                                                                revert with 0, 'Creditum: !healthy'
                                                                                                                            else:
                                                                                                                                require ext_code.size(fTokenAddress)
                                                                                                                                call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, arg3
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                    emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                                                    if not arg2:
                                                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                        stor8 = 1
                                                                                                                                        return 0, 0, arg3
                                                                                                                                    else:
                                                                                                                                        if arg3:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                                                                        else:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                        else:
                                                                                            if ext_call.return_data[0] > 18:
                                                                                                revert with 0, 33
                                                                                            else:
                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                if not arg2:
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] > 18:
                                                                                                            revert with 0, 33
                                                                                                        else:
                                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                                            stor8 = 1
                                                                                                            return ext_call.return_data[0], 0, 0
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if ext_call.return_data[0]:
                                                                                                            revert with 0, 'Creditum: borrowFresh failed'
                                                                                                        else:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                    else:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] > 18:
                                                                                                                revert with 0, 33
                                                                                                            else:
                                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                                stor8 = 1
                                                                                                                return ext_call.return_data[0], 0, 0
                                                                else:
                                                                    require ext_call.return_data[0] >= 32
                                                                    require mem[128] == bool(mem[128])
                                                                    if not mem[128]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                    else:
                                                                        require ext_code.size(address(arg1))
                                                                        staticcall address(arg1).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if sub_768e5b27[address(arg1)][address(msg.sender)].field_0 > !0:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    emit Deposit(0, msg.sender, address(arg1));
                                                                                    if not arg3:
                                                                                        if not arg2:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                        else:
                                                                                            if arg3:
                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                stor8 = 1
                                                                                                return 0
                                                                                            else:
                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                stor8 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        require ext_code.size(controllerAddress)
                                                                                        call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if not ext_call.return_data[0]:
                                                                                                require ext_code.size(controllerAddress)
                                                                                                staticcall controllerAddress.0x4aa967b0 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args msg.sender, address(arg1)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                                                            if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                                                                if totalMinted[address(arg1)] > !arg3:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    totalMinted[address(arg1)] += arg3
                                                                                                                    require ext_code.size(controllerAddress)
                                                                                                                    staticcall controllerAddress.0x4ee5c419 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender, address(arg1)
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 192
                                                                                                                        if ext_call.return_data[0]:
                                                                                                                            revert with 0, 'Creditum: failed to verify health factor'
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[128]:
                                                                                                                                revert with 0, 'Creditum: !healthy'
                                                                                                                            else:
                                                                                                                                if ext_call.return_data[160] < 10^18:
                                                                                                                                    revert with 0, 'Creditum: !healthy'
                                                                                                                                else:
                                                                                                                                    require ext_code.size(fTokenAddress)
                                                                                                                                    call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args msg.sender, arg3
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                        emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                                                        if not arg2:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                                                                        else:
                                                                                                                                            if arg3:
                                                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                                stor8 = 1
                                                                                                                                                return 0, 0, arg3
                                                                                                                                            else:
                                                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                                stor8 = 1
                                                                                                                                                return 0, 0, arg3
                                                                                            else:
                                                                                                if ext_call.return_data[0] > 18:
                                                                                                    revert with 0, 33
                                                                                                else:
                                                                                                    emit Failure(ext_call.return_data[0]);
                                                                                                    if not arg2:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] > 18:
                                                                                                                revert with 0, 33
                                                                                                            else:
                                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                                stor8 = 1
                                                                                                                return ext_call.return_data[0], 0, 0
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if ext_call.return_data[0]:
                                                                                                                revert with 0, 'Creditum: borrowFresh failed'
                                                                                                            else:
                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                stor8 = 1
                                                                                                                return 0
                                                                                                        else:
                                                                                                            if not ext_call.return_data[0]:
                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                stor8 = 1
                                                                                                                return 0
                                                                                                            else:
                                                                                                                if ext_call.return_data[0] > 18:
                                                                                                                    revert with 0, 33
                                                                                                                else:
                                                                                                                    emit Failure(ext_call.return_data[0]);
                                                                                                                    stor8 = 1
                                                                                                                    return ext_call.return_data[0], 0, 0
                                                        else:
                                                            mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if not return_data.size:
                                                                    require ext_code.size(address(arg1))
                                                                    staticcall address(arg1).0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if sub_768e5b27[address(arg1)][address(msg.sender)].field_0 > !0:
                                                                                revert with 0, 17
                                                                            else:
                                                                                emit Deposit(0, msg.sender, address(arg1));
                                                                                if not arg3:
                                                                                    if not arg2:
                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                        stor8 = 1
                                                                                        return 0
                                                                                    else:
                                                                                        if arg3:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                        else:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                else:
                                                                                    require ext_code.size(controllerAddress)
                                                                                    call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                                                         gas gas_remaining wei
                                                                                        args msg.sender, address(arg1), arg3
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(controllerAddress)
                                                                                            staticcall controllerAddress.0x4aa967b0 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args msg.sender, address(arg1)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                                                        if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                                                            if totalMinted[address(arg1)] > !arg3:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                totalMinted[address(arg1)] += arg3
                                                                                                                require ext_code.size(controllerAddress)
                                                                                                                staticcall controllerAddress.0x4ee5c419 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender, address(arg1)
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 192
                                                                                                                    if ext_call.return_data[0]:
                                                                                                                        revert with 0, 'Creditum: failed to verify health factor'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[128]:
                                                                                                                            revert with 0, 'Creditum: !healthy'
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[160] < 10^18:
                                                                                                                                revert with 0, 'Creditum: !healthy'
                                                                                                                            else:
                                                                                                                                require ext_code.size(fTokenAddress)
                                                                                                                                call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, arg3
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                    emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                                                    if not arg2:
                                                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                        stor8 = 1
                                                                                                                                        return 0, 0, arg3
                                                                                                                                    else:
                                                                                                                                        if arg3:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                                                                        else:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                        else:
                                                                                            if ext_call.return_data[0] > 18:
                                                                                                revert with 0, 33
                                                                                            else:
                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                if not arg2:
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                        stor8 = 1
                                                                                                        return 0
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] > 18:
                                                                                                            revert with 0, 33
                                                                                                        else:
                                                                                                            emit Failure(ext_call.return_data[0]);
                                                                                                            stor8 = 1
                                                                                                            return ext_call.return_data[0], 0, 0
                                                                                                else:
                                                                                                    if arg3:
                                                                                                        if ext_call.return_data[0]:
                                                                                                            revert with 0, 'Creditum: borrowFresh failed'
                                                                                                        else:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                    else:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] > 18:
                                                                                                                revert with 0, 33
                                                                                                            else:
                                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                                stor8 = 1
                                                                                                                return ext_call.return_data[0], 0, 0
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                                                                    if not mem[(6 * ceil32(return_data.size)) + 324]:
                                                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                    else:
                                                                        require ext_code.size(address(arg1))
                                                                        staticcall address(arg1).0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                revert with 0, 17
                                                                            else:
                                                                                if sub_768e5b27[address(arg1)][address(msg.sender)].field_0 > !0:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    emit Deposit(0, msg.sender, address(arg1));
                                                                                    if not arg3:
                                                                                        if not arg2:
                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                            stor8 = 1
                                                                                            return 0
                                                                                        else:
                                                                                            if arg3:
                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                stor8 = 1
                                                                                                return 0
                                                                                            else:
                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                stor8 = 1
                                                                                                return 0
                                                                                    else:
                                                                                        require ext_code.size(controllerAddress)
                                                                                        call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, address(arg1), arg3
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if not ext_call.return_data[0]:
                                                                                                require ext_code.size(controllerAddress)
                                                                                                staticcall controllerAddress.0x4aa967b0 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args msg.sender, address(arg1)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                                                            if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                                                                if totalMinted[address(arg1)] > !arg3:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    totalMinted[address(arg1)] += arg3
                                                                                                                    require ext_code.size(controllerAddress)
                                                                                                                    staticcall controllerAddress.0x4ee5c419 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender, address(arg1)
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 192
                                                                                                                        if ext_call.return_data[0]:
                                                                                                                            revert with 0, 'Creditum: failed to verify health factor'
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[128]:
                                                                                                                                revert with 0, 'Creditum: !healthy'
                                                                                                                            else:
                                                                                                                                if ext_call.return_data[160] < 10^18:
                                                                                                                                    revert with 0, 'Creditum: !healthy'
                                                                                                                                else:
                                                                                                                                    require ext_code.size(fTokenAddress)
                                                                                                                                    call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args msg.sender, arg3
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                                                        emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                                                        if not arg2:
                                                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                            stor8 = 1
                                                                                                                                            return 0, 0, arg3
                                                                                                                                        else:
                                                                                                                                            if arg3:
                                                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                                stor8 = 1
                                                                                                                                                return 0, 0, arg3
                                                                                                                                            else:
                                                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                                                stor8 = 1
                                                                                                                                                return 0, 0, arg3
                                                                                            else:
                                                                                                if ext_call.return_data[0] > 18:
                                                                                                    revert with 0, 33
                                                                                                else:
                                                                                                    emit Failure(ext_call.return_data[0]);
                                                                                                    if not arg2:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] > 18:
                                                                                                                revert with 0, 33
                                                                                                            else:
                                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                                stor8 = 1
                                                                                                                return ext_call.return_data[0], 0, 0
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if ext_call.return_data[0]:
                                                                                                                revert with 0, 'Creditum: borrowFresh failed'
                                                                                                            else:
                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                stor8 = 1
                                                                                                                return 0
                                                                                                        else:
                                                                                                            if not ext_call.return_data[0]:
                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                stor8 = 1
                                                                                                                return 0
                                                                                                            else:
                                                                                                                if ext_call.return_data[0] > 18:
                                                                                                                    revert with 0, 33
                                                                                                                else:
                                                                                                                    emit Failure(ext_call.return_data[0]);
                                                                                                                    stor8 = 1
                                                                                                                    return ext_call.return_data[0], 0, 0
                                        else:
                                            if ext_call.return_data[0] > 18:
                                                revert with 0, 33
                                            else:
                                                emit Failure(ext_call.return_data[0]);
                                                if not arg3:
                                                    if not arg2:
                                                        if not ext_call.return_data[0]:
                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                            stor8 = 1
                                                            return 0
                                                        else:
                                                            if ext_call.return_data[0] > 18:
                                                                revert with 0, 33
                                                            else:
                                                                emit Failure(ext_call.return_data[0]);
                                                                stor8 = 1
                                                                return ext_call.return_data[0], 0, 0
                                                    else:
                                                        if arg3:
                                                            if ext_call.return_data[0]:
                                                                revert with 0, 'Creditum: depositFresh failed'
                                                            else:
                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                stor8 = 1
                                                                return 0
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                stor8 = 1
                                                                return 0
                                                            else:
                                                                if ext_call.return_data[0] > 18:
                                                                    revert with 0, 33
                                                                else:
                                                                    emit Failure(ext_call.return_data[0]);
                                                                    stor8 = 1
                                                                    return ext_call.return_data[0], 0, 0
                                                else:
                                                    require ext_code.size(controllerAddress)
                                                    call controllerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(arg1), arg3
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(controllerAddress)
                                                            staticcall controllerAddress.0x4aa967b0 with:
                                                                    gas gas_remaining wei
                                                                   args msg.sender, address(arg1)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] < sub_768e5b27[address(arg1)][address(msg.sender)].field_256:
                                                                    revert with 0, 17
                                                                else:
                                                                    if totalMinted[address(arg1)] > !(ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256):
                                                                        revert with 0, 17
                                                                    else:
                                                                        totalMinted[address(arg1)] = totalMinted[address(arg1)] + ext_call.return_data[0] - sub_768e5b27[address(arg1)][address(msg.sender)].field_256
                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_256 = ext_call.return_data[0]
                                                                        sub_768e5b27[address(arg1)][address(msg.sender)].field_512 = block.timestamp
                                                                        if sub_768e5b27[address(arg1)][address(msg.sender)].field_256 > !arg3:
                                                                            revert with 0, 17
                                                                        else:
                                                                            sub_768e5b27[address(arg1)][address(msg.sender)].field_256 += arg3
                                                                            if totalMinted[address(arg1)] > !arg3:
                                                                                revert with 0, 17
                                                                            else:
                                                                                totalMinted[address(arg1)] += arg3
                                                                                require ext_code.size(controllerAddress)
                                                                                staticcall controllerAddress.0x4ee5c419 with:
                                                                                        gas gas_remaining wei
                                                                                       args msg.sender, address(arg1)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 192
                                                                                    if ext_call.return_data[0]:
                                                                                        revert with 0, 'Creditum: failed to verify health factor'
                                                                                    else:
                                                                                        if ext_call.return_data[128]:
                                                                                            revert with 0, 'Creditum: !healthy'
                                                                                        else:
                                                                                            if ext_call.return_data[160] < 10^18:
                                                                                                revert with 0, 'Creditum: !healthy'
                                                                                            else:
                                                                                                require ext_code.size(fTokenAddress)
                                                                                                call fTokenAddress.mint(address arg1, uint256 arg2) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, arg3
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                                                                    emit Borrow(arg3, msg.sender, address(arg1));
                                                                                                    if not arg2:
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                            stor8 = 1
                                                                                                            return 0, 0, arg3
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] > 18:
                                                                                                                revert with 0, 33
                                                                                                            else:
                                                                                                                emit Failure(ext_call.return_data[0]);
                                                                                                                stor8 = 1
                                                                                                                return ext_call.return_data[0], 0, 0
                                                                                                    else:
                                                                                                        if arg3:
                                                                                                            if ext_call.return_data[0]:
                                                                                                                revert with 0, 'Creditum: depositFresh failed'
                                                                                                            else:
                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                stor8 = 1
                                                                                                                return 0, 0, arg3
                                                                                                        else:
                                                                                                            if not ext_call.return_data[0]:
                                                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                                                stor8 = 1
                                                                                                                return 0, 0, arg3
                                                                                                            else:
                                                                                                                if ext_call.return_data[0] > 18:
                                                                                                                    revert with 0, 33
                                                                                                                else:
                                                                                                                    emit Failure(ext_call.return_data[0]);
                                                                                                                    stor8 = 1
                                                                                                                    return ext_call.return_data[0], 0, 0
                                                        else:
                                                            if ext_call.return_data[0] > 18:
                                                                revert with 0, 33
                                                            else:
                                                                emit Failure(ext_call.return_data[0]);
                                                                if not arg2:
                                                                    if not ext_call.return_data[0]:
                                                                        if not ext_call.return_data[0]:
                                                                            emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                            stor8 = 1
                                                                            return 0
                                                                        else:
                                                                            if ext_call.return_data[0] > 18:
                                                                                revert with 0, 33
                                                                            else:
                                                                                emit Failure(ext_call.return_data[0]);
                                                                                stor8 = 1
                                                                                return ext_call.return_data[0], 0, 0
                                                                    else:
                                                                        if ext_call.return_data[0] > 18:
                                                                            revert with 0, 33
                                                                        else:
                                                                            emit Failure(ext_call.return_data[0]);
                                                                            stor8 = 1
                                                                            return ext_call.return_data[0], 0, 0
                                                                else:
                                                                    if arg3:
                                                                        if ext_call.return_data[0]:
                                                                            revert with 0, 'Creditum: depositFresh failed'
                                                                        else:
                                                                            if ext_call.return_data[0]:
                                                                                revert with 0, 'Creditum: borrowFresh failed'
                                                                            else:
                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                stor8 = 1
                                                                                return 0
                                                                    else:
                                                                        if not ext_call.return_data[0]:
                                                                            if not ext_call.return_data[0]:
                                                                                emit 0x98b02cd3: arg2, arg3, msg.sender, address(arg1)
                                                                                stor8 = 1
                                                                                return 0
                                                                            else:
                                                                                if ext_call.return_data[0] > 18:
                                                                                    revert with 0, 33
                                                                                else:
                                                                                    emit Failure(ext_call.return_data[0]);
                                                                                    stor8 = 1
                                                                                    return ext_call.return_data[0], 0, 0
                                                                        else:
                                                                            if ext_call.return_data[0] > 18:
                                                                                revert with 0, 33
                                                                            else:
                                                                                emit Failure(ext_call.return_data[0]);
                                                                                stor8 = 1
                                                                                return ext_call.return_data[0], 0, 0
                            else:
                                if ext_call.return_data[0] > 18:
                                    revert with 0, 33
                                else:
                                    emit Failure(ext_call.return_data[0]);
                                    stor8 = 1
                                    return ext_call.return_data[0], 0, 0
                    else:
                        emit Failure(10);
                        stor8 = 1
                        return 10, 0, 0
            else:
                emit Failure(1);
                stor8 = 1
                return 1, 0, 0
}



}
