contract main {




// =====================  Runtime code  =====================


#
#  - sub_9c6ce5aa(?)
#  - executeFlashClose(address arg1, address arg2, uint256 arg3, uint256 arg4)
#  - sub_fae5a8f0(?)
#
const sub_39221f50(?) = 2

const sub_77a7e77d(?) = 0xffffffffffffffffffffffffffffffffffffffff

const sub_a10364d7(?) = 100


address owner;
address pendingOwner;
uint256 stor2;
uint64 stor3;
uint64 stor3; offset 64
address stor4;
address stor5;
address swapperAddress;

function swapper() {
    return swapperAddress
}

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function sub_0fd9be71(?) {
    return uint64(stor3.field_0), uint64(stor3.field_64)
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFujiAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    stor4 = arg1
}

function setFujiOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    stor5 = arg1
}

function cancelTransferOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require pendingOwner
    pendingOwner = 0
    emit NewPendingOwner(address arg1)
    emit 0x0 
}

function setSwapper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    swapperAddress = arg1
}

function setFlashCloseFee(uint64 arg1, uint64 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '', 0
    uint64(stor3.field_0) = arg1
    uint64(stor3.field_64) = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not pendingOwner
    pendingOwner = arg1
    emit NewPendingOwner(arg1);
}

function flashClose(int256 arg1, address arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    mem[100] = arg2
    require ext_code.size(stor4)
    staticcall stor4.validVault(address arg1) with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid vault!'
    require ext_code.size(arg2)
    call arg2.updateF1155Balances() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.fujiERC1155() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg2)
    staticcall arg2.vAssets() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((4 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[96]
    mem[(4 * ceil32(return_data.size)) + 228] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 260] = uint64(ext_call.return_data[64])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, uint64(ext_call.return_data[64])
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 228] = msg.sender
    require ext_code.size(arg2)
    staticcall arg2.userDebtBalance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 224] = 3
    mem[(7 * ceil32(return_data.size)) + 256] = '106'
    if ext_call.return_data[0] <= 0:
        revert with 0, '106', 0
    if arg1 < 0:
        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 324] = 0
        require ext_code.size(arg2)
        staticcall arg2.getNeededCollateralFor(uint256 arg1, bool arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 288] = 3
        mem[(8 * ceil32(return_data.size)) + 320] = '124'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, '124', 0
        mem[(8 * ceil32(return_data.size)) + 352] = 1
        mem[(8 * ceil32(return_data.size)) + 384] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 416] = 1
        mem[(8 * ceil32(return_data.size)) + 448] = ext_call.return_data[44 len 20]
        mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 512] = arg2
        mem[(8 * ceil32(return_data.size)) + 544] = 0
        mem[(8 * ceil32(return_data.size)) + 576] = (8 * ceil32(return_data.size)) + 352
        mem[(8 * ceil32(return_data.size)) + 704] = 0
        mem[(8 * ceil32(return_data.size)) + 608] = (8 * ceil32(return_data.size)) + 704
        mem[(8 * ceil32(return_data.size)) + 640] = 0
        mem[(8 * ceil32(return_data.size)) + 672] = this.address
        require ext_code.size(stor4)
        staticcall stor4.getFlasher() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 736
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 736] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 740] = 64
        mem[(10 * ceil32(return_data.size)) + 804] = 1
        mem[(10 * ceil32(return_data.size)) + 836] = mem[(8 * ceil32(return_data.size)) + 460 len 20]
        mem[(10 * ceil32(return_data.size)) + 868] = ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 900] = arg2
        mem[(10 * ceil32(return_data.size)) + 932] = 0
        mem[(10 * ceil32(return_data.size)) + 964] = 288
        mem[(10 * ceil32(return_data.size)) + 1092] = 1
        idx = 0
        s = (8 * ceil32(return_data.size)) + 384
        t = (10 * ceil32(return_data.size)) + 1124
        while idx < mem[(8 * ceil32(return_data.size)) + 352]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 996] = 352
        _113 = mem[mem[(8 * ceil32(return_data.size)) + 608]]
        mem[(10 * ceil32(return_data.size)) + 1156] = mem[mem[(8 * ceil32(return_data.size)) + 608]]
        mem[(10 * ceil32(return_data.size)) + 1188 len 32 * _113] = mem[mem[(8 * ceil32(return_data.size)) + 608] + 32 len 32 * _113]
        mem[(10 * ceil32(return_data.size)) + 1028] = mem[(8 * ceil32(return_data.size)) + 652 len 20]
        mem[(10 * ceil32(return_data.size)) + 1060] = mem[(8 * ceil32(return_data.size)) + 684 len 20]
        mem[(10 * ceil32(return_data.size)) + 772] = arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + (32 * _113) + -mem[64] + 1184]
    else:
        mem[(7 * ceil32(return_data.size)) + 292] = arg1
        mem[(7 * ceil32(return_data.size)) + 324] = 0
        require ext_code.size(arg2)
        staticcall arg2.getNeededCollateralFor(uint256 arg1, bool arg2) with:
                gas gas_remaining wei
               args arg1, 0
        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 288] = 3
        mem[(8 * ceil32(return_data.size)) + 320] = '124'
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, '124', 0
        mem[(8 * ceil32(return_data.size)) + 352] = 1
        mem[(8 * ceil32(return_data.size)) + 384] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 416] = 1
        mem[(8 * ceil32(return_data.size)) + 448] = ext_call.return_data[44 len 20]
        mem[(8 * ceil32(return_data.size)) + 480] = arg1
        mem[(8 * ceil32(return_data.size)) + 512] = arg2
        mem[(8 * ceil32(return_data.size)) + 544] = 0
        mem[(8 * ceil32(return_data.size)) + 576] = (8 * ceil32(return_data.size)) + 352
        mem[(8 * ceil32(return_data.size)) + 704] = 0
        mem[(8 * ceil32(return_data.size)) + 608] = (8 * ceil32(return_data.size)) + 704
        mem[(8 * ceil32(return_data.size)) + 640] = 0
        mem[(8 * ceil32(return_data.size)) + 672] = this.address
        require ext_code.size(stor4)
        staticcall stor4.getFlasher() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 736] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 736
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 736] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 740] = 64
        mem[(10 * ceil32(return_data.size)) + 804] = 1
        mem[(10 * ceil32(return_data.size)) + 836] = mem[(8 * ceil32(return_data.size)) + 460 len 20]
        mem[(10 * ceil32(return_data.size)) + 868] = arg1
        mem[(10 * ceil32(return_data.size)) + 900] = arg2
        mem[(10 * ceil32(return_data.size)) + 932] = 0
        mem[(10 * ceil32(return_data.size)) + 964] = 288
        mem[(10 * ceil32(return_data.size)) + 1092] = 1
        idx = 0
        s = (8 * ceil32(return_data.size)) + 384
        t = (10 * ceil32(return_data.size)) + 1124
        while idx < mem[(8 * ceil32(return_data.size)) + 352]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 996] = 352
        _114 = mem[mem[(8 * ceil32(return_data.size)) + 608]]
        mem[(10 * ceil32(return_data.size)) + 1156] = mem[mem[(8 * ceil32(return_data.size)) + 608]]
        mem[(10 * ceil32(return_data.size)) + 1188 len 32 * _114] = mem[mem[(8 * ceil32(return_data.size)) + 608] + 32 len 32 * _114]
        mem[(10 * ceil32(return_data.size)) + 1028] = mem[(8 * ceil32(return_data.size)) + 652 len 20]
        mem[(10 * ceil32(return_data.size)) + 1060] = mem[(8 * ceil32(return_data.size)) + 684 len 20]
        mem[(10 * ceil32(return_data.size)) + 772] = arg3
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (10 * ceil32(return_data.size)) + (32 * _114) + -mem[64] + 1184]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = 1
}

function sub_56bae453(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == uint8(arg3)
    mem[100] = address(arg2)
    require ext_code.size(stor4)
    staticcall stor4.validVault(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid vault!'
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    require ext_code.size(address(arg2))
    staticcall address(arg2).vAssets() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    if not bool((2 * ceil32(return_data.size)) + 224 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[88 len 8]
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[96]
    require ext_code.size(address(arg2))
    staticcall address(arg2).fujiERC1155() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg2))
    call address(arg2).updateF1155Balances() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 224] = arg1.length
    mem[(4 * ceil32(return_data.size)) + 256 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 0, 65
    mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 0, 65
        mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 0, 65
            mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320] = arg1.length
            mem[64] = (4 * ceil32(return_data.size)) + (131 * arg1.length) + 352
            if arg1.length:
                mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (98 * arg1.length) + 352] = mem[(2 * ceil32(return_data.size)) + 184 len 8]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (64 * arg1.length) + 320] = mem[(2 * ceil32(return_data.size)) + 216 len 8]
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _481 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _519 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                s = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while arg1.length < _519:
                    mem[t] = mem[s + 12 len 20]
                    s = arg1.length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_481 + 36] = t + -_481 - 4
                _911 = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t + 32 len 32 * _911] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * _911]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len t + (32 * _911) + -mem[64] + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1295 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1303 = mem[_1295]
                require mem[_1295] <= test266151307()
                require _1295 + mem[_1295] + 31 < _1295 + return_data.size
                _1311 = mem[_1295 + mem[_1295]]
                if mem[_1295 + mem[_1295]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_1295 + mem[_1295]]) + 32 < 0 or _1295 + ceil32(return_data.size) + (32 * mem[_1295 + mem[_1295]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _1295 + ceil32(return_data.size) + (32 * mem[_1295 + mem[_1295]]) + 32
                mem[_1295 + ceil32(return_data.size)] = _1311
                require return_data.size >= _1303 + (32 * _1311) + 32
                mem[_1295 + ceil32(return_data.size) + 32 len 32 * _1311] = mem[_1295 + _1303 + 32 len 32 * _1311]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _1655 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while idx < _1655:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 36] = (32 * _1655) + 96
                _1959 = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[mem[64] + (32 * _1655) + 100] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[mem[64] + (32 * _1655) + 132 len 32 * _1959] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * _1959]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).balanceOfBatch(address[] arg1, uint256[] arg2) with:
                        gas gas_remaining wei
                       args 64, (32 * _1655) + 96, mem[mem[64] + 68 len (32 * _1655) + (32 * _1959) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2255 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2263 = mem[_2255]
                require mem[_2255] <= test266151307()
                require _2255 + mem[_2255] + 31 < _2255 + return_data.size
                _2271 = mem[_2255 + mem[_2255]]
                if mem[_2255 + mem[_2255]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2255 + mem[_2255]]) + 32 < 0 or _2255 + ceil32(return_data.size) + (32 * mem[_2255 + mem[_2255]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2255 + ceil32(return_data.size) + (32 * mem[_2255 + mem[_2255]]) + 32
                mem[_2255 + ceil32(return_data.size)] = _2271
                require return_data.size >= _2263 + (32 * _2271) + 32
                mem[_2255 + ceil32(return_data.size) + 32 len 32 * _2271] = mem[_2255 + _2263 + 32 len 32 * _2271]
                _2735 = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = 0
                s = 0
                while idx < _2735:
                    if idx >= mem[_1295 + ceil32(return_data.size)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + _1295 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getNeededCollateralFor(uint256 arg1, bool arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2839 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2863 = mem[_2839]
                    if idx >= mem[_2255 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2255 + ceil32(return_data.size) + 32] >= mem[_2839]:
                        if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                            revert with 0, 50
                        mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
                        if idx > -2:
                            revert with 0, 17
                        _2735 = mem[(4 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = _2863
                        s = s
                        continue 
                    if idx >= mem[(4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 50
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    _2960 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).userProtocolFee(address arg1) with:
                            gas gas_remaining wei
                           args address(_2960)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3007 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_1295 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1295 + ceil32(return_data.size) + 32] > !mem[_3007]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _1295 + ceil32(return_data.size) + 32] + mem[_3007]):
                        revert with 0, 17
                    if idx > -2:
                        revert with 0, 17
                    _2735 = mem[(4 * ceil32(return_data.size)) + 224]
                    idx = idx + 1
                    s = _2863
                    s = s + mem[(32 * idx) + _1295 + ceil32(return_data.size) + 32] + mem[_3007]
                    continue 
                _2753 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2753] = 3
                mem[_2753 + 32] = 0x3130380000000000000000000000000000000000000000000000000000000000
                if s <= 0:
                    revert with 0, '', 0
                _2779 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2779] = 2
                mem[_2779 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                mem[_2779 + 64] = s
                mem[_2779 + 96] = address(arg2)
                mem[_2779 + 128] = 0
                mem[_2779 + 160] = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 256
                mem[_2779 + 192] = _1295 + ceil32(return_data.size)
                mem[_2779 + 224] = msg.sender
                mem[_2779 + 256] = this.address
                require ext_code.size(stor4)
                staticcall stor4.getFlasher() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2848 = mem[_2831]
                require mem[_2831] == mem[_2831 + 12 len 20]
                mem[mem[64]] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = mem[_2779 + 44 len 20]
                mem[mem[64] + 132] = s
                mem[mem[64] + 164] = address(arg2)
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 288
                _3048 = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                idx = 0
                t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288
                u = mem[64] + 388
                while idx < _3048:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _3135 = mem[_2779 + 192]
                mem[mem[64] + 260] = (32 * _3048) + 320
                _3143 = mem[_3135]
                mem[mem[64] + (32 * _3048) + 388] = mem[_3135]
                mem[mem[64] + (32 * _3048) + 420 len 32 * _3143] = mem[_3135 + 32 len 32 * _3143]
                mem[mem[64] + 292] = mem[_2779 + 236 len 20]
                mem[mem[64] + 324] = mem[_2779 + 268 len 20]
                require ext_code.size(address(_2848))
                call address(_2848).0x5ccd808c with:
                     gas gas_remaining wei
                    args 64, uint8(arg3), 2, mem[mem[64] + 100], s, address(arg2), 0, 288, (32 * _3048) + 320, mem[mem[64] + 292 len (32 * _3048) + (32 * _3143) + 128]
            else:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (98 * arg1.length) + 352] = mem[(2 * ceil32(return_data.size)) + 184 len 8]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (64 * arg1.length) + 320] = mem[(2 * ceil32(return_data.size)) + 216 len 8]
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _478 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _518 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                s = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while arg1.length < _518:
                    mem[t] = mem[s + 12 len 20]
                    s = arg1.length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_478 + 36] = t + -_478 - 4
                _910 = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t + 32 len 32 * _910] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * _910]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len t + (32 * _910) + -mem[64] + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1294 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1302 = mem[_1294]
                require mem[_1294] <= test266151307()
                require _1294 + mem[_1294] + 31 < _1294 + return_data.size
                _1310 = mem[_1294 + mem[_1294]]
                if mem[_1294 + mem[_1294]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_1294 + mem[_1294]]) + 32 < 0 or _1294 + ceil32(return_data.size) + (32 * mem[_1294 + mem[_1294]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _1294 + ceil32(return_data.size) + (32 * mem[_1294 + mem[_1294]]) + 32
                mem[_1294 + ceil32(return_data.size)] = _1310
                require return_data.size >= _1302 + (32 * _1310) + 32
                mem[_1294 + ceil32(return_data.size) + 32 len 32 * _1310] = mem[_1294 + _1302 + 32 len 32 * _1310]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _1654 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while idx < _1654:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 36] = (32 * _1654) + 96
                _1958 = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[mem[64] + (32 * _1654) + 100] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[mem[64] + (32 * _1654) + 132 len 32 * _1958] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * _1958]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).balanceOfBatch(address[] arg1, uint256[] arg2) with:
                        gas gas_remaining wei
                       args 64, (32 * _1654) + 96, mem[mem[64] + 68 len (32 * _1654) + (32 * _1958) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2254 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2262 = mem[_2254]
                require mem[_2254] <= test266151307()
                require _2254 + mem[_2254] + 31 < _2254 + return_data.size
                _2270 = mem[_2254 + mem[_2254]]
                if mem[_2254 + mem[_2254]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2254 + mem[_2254]]) + 32 < 0 or _2254 + ceil32(return_data.size) + (32 * mem[_2254 + mem[_2254]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2254 + ceil32(return_data.size) + (32 * mem[_2254 + mem[_2254]]) + 32
                mem[_2254 + ceil32(return_data.size)] = _2270
                require return_data.size >= _2262 + (32 * _2270) + 32
                mem[_2254 + ceil32(return_data.size) + 32 len 32 * _2270] = mem[_2254 + _2262 + 32 len 32 * _2270]
                _2734 = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = 0
                s = 0
                while idx < _2734:
                    if idx >= mem[_1294 + ceil32(return_data.size)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + _1294 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getNeededCollateralFor(uint256 arg1, bool arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2838 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2862 = mem[_2838]
                    if idx >= mem[_2254 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2254 + ceil32(return_data.size) + 32] >= mem[_2838]:
                        if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                            revert with 0, 50
                        mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
                        if idx > -2:
                            revert with 0, 17
                        _2734 = mem[(4 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = _2862
                        s = s
                        continue 
                    if idx >= mem[(4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 50
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    _2958 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).userProtocolFee(address arg1) with:
                            gas gas_remaining wei
                           args address(_2958)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3006 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_1294 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1294 + ceil32(return_data.size) + 32] > !mem[_3006]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _1294 + ceil32(return_data.size) + 32] + mem[_3006]):
                        revert with 0, 17
                    if idx > -2:
                        revert with 0, 17
                    _2734 = mem[(4 * ceil32(return_data.size)) + 224]
                    idx = idx + 1
                    s = _2862
                    s = s + mem[(32 * idx) + _1294 + ceil32(return_data.size) + 32] + mem[_3006]
                    continue 
                _2750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2750] = 3
                mem[_2750 + 32] = 0x3130380000000000000000000000000000000000000000000000000000000000
                if s <= 0:
                    revert with 0, '', 0
                _2774 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2774] = 2
                mem[_2774 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                mem[_2774 + 64] = s
                mem[_2774 + 96] = address(arg2)
                mem[_2774 + 128] = 0
                mem[_2774 + 160] = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 256
                mem[_2774 + 192] = _1294 + ceil32(return_data.size)
                mem[_2774 + 224] = msg.sender
                mem[_2774 + 256] = this.address
                require ext_code.size(stor4)
                staticcall stor4.getFlasher() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2846 = mem[_2830]
                require mem[_2830] == mem[_2830 + 12 len 20]
                _2902 = mem[64]
                mem[mem[64]] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = mem[_2774 + 44 len 20]
                mem[mem[64] + 132] = s
                mem[mem[64] + 164] = address(arg2)
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 288
                _3046 = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                idx = 0
                s = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288
                t = mem[64] + 388
                while idx < _3046:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3134 = mem[_2774 + 192]
                mem[_2902 + 260] = (32 * _3046) + 320
                _3142 = mem[_3134]
                mem[_2902 + (32 * _3046) + 388] = mem[_3134]
                mem[_2902 + (32 * _3046) + 420 len 32 * _3142] = mem[_3134 + 32 len 32 * _3142]
                mem[_2902 + 292] = mem[_2774 + 236 len 20]
                mem[_2902 + 324] = mem[_2774 + 268 len 20]
                mem[_2902 + 36] = uint8(arg3)
                require ext_code.size(address(_2846))
                call address(_2846).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2902 + (32 * _3046) + (32 * _3142) + -mem[64] + 416]
        else:
            mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            if arg1.length > test266151307():
                revert with 0, 65
            mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320] = arg1.length
            mem[64] = (4 * ceil32(return_data.size)) + (131 * arg1.length) + 352
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (98 * arg1.length) + 352] = mem[(2 * ceil32(return_data.size)) + 184 len 8]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (64 * arg1.length) + 320] = mem[(2 * ceil32(return_data.size)) + 216 len 8]
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _484 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _520 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                s = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while arg1.length < _520:
                    mem[t] = mem[s + 12 len 20]
                    s = arg1.length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_484 + 36] = t + -_484 - 4
                _912 = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t + 32 len 32 * _912] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * _912]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len t + (32 * _912) + -mem[64] + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1296 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1304 = mem[_1296]
                require mem[_1296] <= test266151307()
                require _1296 + mem[_1296] + 31 < _1296 + return_data.size
                _1312 = mem[_1296 + mem[_1296]]
                if mem[_1296 + mem[_1296]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_1296 + mem[_1296]]) + 32 < 0 or _1296 + ceil32(return_data.size) + (32 * mem[_1296 + mem[_1296]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _1296 + ceil32(return_data.size) + (32 * mem[_1296 + mem[_1296]]) + 32
                mem[_1296 + ceil32(return_data.size)] = _1312
                require return_data.size >= _1304 + (32 * _1312) + 32
                mem[_1296 + ceil32(return_data.size) + 32 len 32 * _1312] = mem[_1296 + _1304 + 32 len 32 * _1312]
                _1648 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _1656 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while idx < _1656:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1648 + 36] = (32 * _1656) + 96
                _1960 = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1648 + (32 * _1656) + 100] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1648 + (32 * _1656) + 132 len 32 * _1960] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * _1960]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1648 + (32 * _1656) + (32 * _1960) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2256 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2264 = mem[_2256]
                require mem[_2256] <= test266151307()
                require _2256 + mem[_2256] + 31 < _2256 + return_data.size
                _2272 = mem[_2256 + mem[_2256]]
                if mem[_2256 + mem[_2256]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2256 + mem[_2256]]) + 32 < 0 or _2256 + ceil32(return_data.size) + (32 * mem[_2256 + mem[_2256]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2256 + ceil32(return_data.size) + (32 * mem[_2256 + mem[_2256]]) + 32
                mem[_2256 + ceil32(return_data.size)] = _2272
                require return_data.size >= _2264 + (32 * _2272) + 32
                mem[_2256 + ceil32(return_data.size) + 32 len 32 * _2272] = mem[_2256 + _2264 + 32 len 32 * _2272]
                _2736 = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = 0
                s = 0
                while idx < _2736:
                    if idx >= mem[_1296 + ceil32(return_data.size)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + _1296 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getNeededCollateralFor(uint256 arg1, bool arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2840 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2864 = mem[_2840]
                    if idx >= mem[_2256 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2256 + ceil32(return_data.size) + 32] >= mem[_2840]:
                        if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                            revert with 0, 50
                        mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
                        if idx > -2:
                            revert with 0, 17
                        _2736 = mem[(4 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = _2864
                        s = s
                        continue 
                    if idx >= mem[(4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 50
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    _2962 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).userProtocolFee(address arg1) with:
                            gas gas_remaining wei
                           args address(_2962)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3008 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_1296 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1296 + ceil32(return_data.size) + 32] > !mem[_3008]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _1296 + ceil32(return_data.size) + 32] + mem[_3008]):
                        revert with 0, 17
                    if idx > -2:
                        revert with 0, 17
                    _2736 = mem[(4 * ceil32(return_data.size)) + 224]
                    idx = idx + 1
                    s = _2864
                    s = s + mem[(32 * idx) + _1296 + ceil32(return_data.size) + 32] + mem[_3008]
                    continue 
                _2756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2756] = 3
                mem[_2756 + 32] = 0x3130380000000000000000000000000000000000000000000000000000000000
                if s <= 0:
                    revert with 0, '', 0
                _2784 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2784] = 2
                mem[_2784 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                mem[_2784 + 64] = s
                mem[_2784 + 96] = address(arg2)
                mem[_2784 + 128] = 0
                mem[_2784 + 160] = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 256
                mem[_2784 + 192] = _1296 + ceil32(return_data.size)
                mem[_2784 + 224] = msg.sender
                mem[_2784 + 256] = this.address
                require ext_code.size(stor4)
                staticcall stor4.getFlasher() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2832 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2850 = mem[_2832]
                require mem[_2832] == mem[_2832 + 12 len 20]
                mem[mem[64]] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = mem[_2784 + 44 len 20]
                mem[mem[64] + 132] = s
                mem[mem[64] + 164] = address(arg2)
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 288
                _3050 = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                idx = 0
                t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288
                u = mem[64] + 388
                while idx < _3050:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _3136 = mem[_2784 + 192]
                mem[mem[64] + 260] = (32 * _3050) + 320
                _3144 = mem[_3136]
                mem[mem[64] + (32 * _3050) + 388] = mem[_3136]
                mem[mem[64] + (32 * _3050) + 420 len 32 * _3144] = mem[_3136 + 32 len 32 * _3144]
                mem[mem[64] + 292] = mem[_2784 + 236 len 20]
                mem[mem[64] + 324] = mem[_2784 + 268 len 20]
                require ext_code.size(address(_2850))
                call address(_2850).0x5ccd808c with:
                     gas gas_remaining wei
                    args 64, uint8(arg3), 2, mem[mem[64] + 100], s, address(arg2), 0, 288, (32 * _3050) + 320, mem[mem[64] + 292 len (32 * _3050) + (32 * _3144) + 128]
            else:
                mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (98 * arg1.length) + 352] = mem[(2 * ceil32(return_data.size)) + 184 len 8]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (64 * arg1.length) + 320] = mem[(2 * ceil32(return_data.size)) + 216 len 8]
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _487 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _521 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                s = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while arg1.length < _521:
                    mem[t] = mem[s + 12 len 20]
                    s = arg1.length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_487 + 36] = t + -_487 - 4
                _913 = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t + 32 len 32 * _913] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * _913]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len t + (32 * _913) + -mem[64] + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1297 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1305 = mem[_1297]
                require mem[_1297] <= test266151307()
                require _1297 + mem[_1297] + 31 < _1297 + return_data.size
                _1313 = mem[_1297 + mem[_1297]]
                if mem[_1297 + mem[_1297]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_1297 + mem[_1297]]) + 32 < 0 or _1297 + ceil32(return_data.size) + (32 * mem[_1297 + mem[_1297]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _1297 + ceil32(return_data.size) + (32 * mem[_1297 + mem[_1297]]) + 32
                mem[_1297 + ceil32(return_data.size)] = _1313
                require return_data.size >= _1305 + (32 * _1313) + 32
                mem[_1297 + ceil32(return_data.size) + 32 len 32 * _1313] = mem[_1297 + _1305 + 32 len 32 * _1313]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _1657 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while idx < _1657:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 36] = (32 * _1657) + 96
                _1961 = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[mem[64] + (32 * _1657) + 100] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[mem[64] + (32 * _1657) + 132 len 32 * _1961] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * _1961]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).balanceOfBatch(address[] arg1, uint256[] arg2) with:
                        gas gas_remaining wei
                       args 64, (32 * _1657) + 96, mem[mem[64] + 68 len (32 * _1657) + (32 * _1961) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2257 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2265 = mem[_2257]
                require mem[_2257] <= test266151307()
                require _2257 + mem[_2257] + 31 < _2257 + return_data.size
                _2273 = mem[_2257 + mem[_2257]]
                if mem[_2257 + mem[_2257]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2257 + mem[_2257]]) + 32 < 0 or _2257 + ceil32(return_data.size) + (32 * mem[_2257 + mem[_2257]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2257 + ceil32(return_data.size) + (32 * mem[_2257 + mem[_2257]]) + 32
                mem[_2257 + ceil32(return_data.size)] = _2273
                require return_data.size >= _2265 + (32 * _2273) + 32
                mem[_2257 + ceil32(return_data.size) + 32 len 32 * _2273] = mem[_2257 + _2265 + 32 len 32 * _2273]
                _2737 = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = 0
                s = 0
                while idx < _2737:
                    if idx >= mem[_1297 + ceil32(return_data.size)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + _1297 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getNeededCollateralFor(uint256 arg1, bool arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2841 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2865 = mem[_2841]
                    if idx >= mem[_2257 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2257 + ceil32(return_data.size) + 32] >= mem[_2841]:
                        if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                            revert with 0, 50
                        mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
                        if idx > -2:
                            revert with 0, 17
                        _2737 = mem[(4 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = _2865
                        s = s
                        continue 
                    if idx >= mem[(4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 50
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    _2964 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).userProtocolFee(address arg1) with:
                            gas gas_remaining wei
                           args address(_2964)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3009 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_1297 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1297 + ceil32(return_data.size) + 32] > !mem[_3009]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _1297 + ceil32(return_data.size) + 32] + mem[_3009]):
                        revert with 0, 17
                    if idx > -2:
                        revert with 0, 17
                    _2737 = mem[(4 * ceil32(return_data.size)) + 224]
                    idx = idx + 1
                    s = _2865
                    s = s + mem[(32 * idx) + _1297 + ceil32(return_data.size) + 32] + mem[_3009]
                    continue 
                _2759 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2759] = 3
                mem[_2759 + 32] = 0x3130380000000000000000000000000000000000000000000000000000000000
                if s <= 0:
                    revert with 0, '', 0
                _2789 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2789] = 2
                mem[_2789 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                mem[_2789 + 64] = s
                mem[_2789 + 96] = address(arg2)
                mem[_2789 + 128] = 0
                mem[_2789 + 160] = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 256
                mem[_2789 + 192] = _1297 + ceil32(return_data.size)
                mem[_2789 + 224] = msg.sender
                mem[_2789 + 256] = this.address
                require ext_code.size(stor4)
                staticcall stor4.getFlasher() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2852 = mem[_2833]
                require mem[_2833] == mem[_2833 + 12 len 20]
                _2911 = mem[64]
                mem[mem[64]] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = mem[_2789 + 44 len 20]
                mem[mem[64] + 132] = s
                mem[mem[64] + 164] = address(arg2)
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 288
                _3052 = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                idx = 0
                s = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288
                t = mem[64] + 388
                while idx < _3052:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3137 = mem[_2789 + 192]
                mem[_2911 + 260] = (32 * _3052) + 320
                _3145 = mem[_3137]
                mem[_2911 + (32 * _3052) + 388] = mem[_3137]
                mem[_2911 + (32 * _3052) + 420 len 32 * _3145] = mem[_3137 + 32 len 32 * _3145]
                mem[_2911 + 292] = mem[_2789 + 236 len 20]
                mem[_2911 + 324] = mem[_2789 + 268 len 20]
                mem[_2911 + 36] = uint8(arg3)
                require ext_code.size(address(_2852))
                call address(_2852).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2911 + (32 * _3052) + (32 * _3145) + -mem[64] + 416]
    else:
        mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 288 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 0, 65
        mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288] = arg1.length
        if not arg1.length:
            if arg1.length > test266151307():
                revert with 0, 65
            mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320] = arg1.length
            mem[64] = (4 * ceil32(return_data.size)) + (131 * arg1.length) + 352
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (98 * arg1.length) + 352] = mem[(2 * ceil32(return_data.size)) + 184 len 8]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (64 * arg1.length) + 320] = mem[(2 * ceil32(return_data.size)) + 216 len 8]
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _490 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _522 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                s = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while arg1.length < _522:
                    mem[t] = mem[s + 12 len 20]
                    s = arg1.length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_490 + 36] = t + -_490 - 4
                _914 = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t + 32 len 32 * _914] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * _914]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len t + (32 * _914) + -mem[64] + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1298 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1306 = mem[_1298]
                require mem[_1298] <= test266151307()
                require _1298 + mem[_1298] + 31 < _1298 + return_data.size
                _1314 = mem[_1298 + mem[_1298]]
                if mem[_1298 + mem[_1298]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_1298 + mem[_1298]]) + 32 < 0 or _1298 + ceil32(return_data.size) + (32 * mem[_1298 + mem[_1298]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _1298 + ceil32(return_data.size) + (32 * mem[_1298 + mem[_1298]]) + 32
                mem[_1298 + ceil32(return_data.size)] = _1314
                require return_data.size >= _1306 + (32 * _1314) + 32
                mem[_1298 + ceil32(return_data.size) + 32 len 32 * _1314] = mem[_1298 + _1306 + 32 len 32 * _1314]
                _1650 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _1658 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while idx < _1658:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1650 + 36] = (32 * _1658) + 96
                _1962 = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1650 + (32 * _1658) + 100] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1650 + (32 * _1658) + 132 len 32 * _1962] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * _1962]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1650 + (32 * _1658) + (32 * _1962) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2258 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2266 = mem[_2258]
                require mem[_2258] <= test266151307()
                require _2258 + mem[_2258] + 31 < _2258 + return_data.size
                _2274 = mem[_2258 + mem[_2258]]
                if mem[_2258 + mem[_2258]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2258 + mem[_2258]]) + 32 < 0 or _2258 + ceil32(return_data.size) + (32 * mem[_2258 + mem[_2258]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2258 + ceil32(return_data.size) + (32 * mem[_2258 + mem[_2258]]) + 32
                mem[_2258 + ceil32(return_data.size)] = _2274
                require return_data.size >= _2266 + (32 * _2274) + 32
                mem[_2258 + ceil32(return_data.size) + 32 len 32 * _2274] = mem[_2258 + _2266 + 32 len 32 * _2274]
                _2738 = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = 0
                s = 0
                while idx < _2738:
                    if idx >= mem[_1298 + ceil32(return_data.size)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + _1298 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getNeededCollateralFor(uint256 arg1, bool arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2866 = mem[_2842]
                    if idx >= mem[_2258 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2258 + ceil32(return_data.size) + 32] >= mem[_2842]:
                        if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                            revert with 0, 50
                        mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
                        if idx > -2:
                            revert with 0, 17
                        _2738 = mem[(4 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = _2866
                        s = s
                        continue 
                    if idx >= mem[(4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 50
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    _2966 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).userProtocolFee(address arg1) with:
                            gas gas_remaining wei
                           args address(_2966)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3010 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_1298 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1298 + ceil32(return_data.size) + 32] > !mem[_3010]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _1298 + ceil32(return_data.size) + 32] + mem[_3010]):
                        revert with 0, 17
                    if idx > -2:
                        revert with 0, 17
                    _2738 = mem[(4 * ceil32(return_data.size)) + 224]
                    idx = idx + 1
                    s = _2866
                    s = s + mem[(32 * idx) + _1298 + ceil32(return_data.size) + 32] + mem[_3010]
                    continue 
                _2762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2762] = 3
                mem[_2762 + 32] = 0x3130380000000000000000000000000000000000000000000000000000000000
                if s <= 0:
                    revert with 0, '', 0
                _2794 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2794] = 2
                mem[_2794 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                mem[_2794 + 64] = s
                mem[_2794 + 96] = address(arg2)
                mem[_2794 + 128] = 0
                mem[_2794 + 160] = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 256
                mem[_2794 + 192] = _1298 + ceil32(return_data.size)
                mem[_2794 + 224] = msg.sender
                mem[_2794 + 256] = this.address
                require ext_code.size(stor4)
                staticcall stor4.getFlasher() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2834 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2854 = mem[_2834]
                require mem[_2834] == mem[_2834 + 12 len 20]
                mem[mem[64]] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = mem[_2794 + 44 len 20]
                mem[mem[64] + 132] = s
                mem[mem[64] + 164] = address(arg2)
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 288
                _3054 = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                idx = 0
                t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288
                u = mem[64] + 388
                while idx < _3054:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _3138 = mem[_2794 + 192]
                mem[mem[64] + 260] = (32 * _3054) + 320
                _3146 = mem[_3138]
                mem[mem[64] + (32 * _3054) + 388] = mem[_3138]
                mem[mem[64] + (32 * _3054) + 420 len 32 * _3146] = mem[_3138 + 32 len 32 * _3146]
                mem[mem[64] + 292] = mem[_2794 + 236 len 20]
                mem[mem[64] + 324] = mem[_2794 + 268 len 20]
                require ext_code.size(address(_2854))
                call address(_2854).0x5ccd808c with:
                     gas gas_remaining wei
                    args 64, uint8(arg3), 2, mem[mem[64] + 100], s, address(arg2), 0, 288, (32 * _3054) + 320, mem[mem[64] + 292 len (32 * _3054) + (32 * _3146) + 128]
            else:
                mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (98 * arg1.length) + 352] = mem[(2 * ceil32(return_data.size)) + 184 len 8]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (64 * arg1.length) + 320] = mem[(2 * ceil32(return_data.size)) + 216 len 8]
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _493 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _523 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                s = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while arg1.length < _523:
                    mem[t] = mem[s + 12 len 20]
                    s = arg1.length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_493 + 36] = t + -_493 - 4
                _915 = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t + 32 len 32 * _915] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * _915]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len t + (32 * _915) + -mem[64] + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1299 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1307 = mem[_1299]
                require mem[_1299] <= test266151307()
                require _1299 + mem[_1299] + 31 < _1299 + return_data.size
                _1315 = mem[_1299 + mem[_1299]]
                if mem[_1299 + mem[_1299]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_1299 + mem[_1299]]) + 32 < 0 or _1299 + ceil32(return_data.size) + (32 * mem[_1299 + mem[_1299]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _1299 + ceil32(return_data.size) + (32 * mem[_1299 + mem[_1299]]) + 32
                mem[_1299 + ceil32(return_data.size)] = _1315
                require return_data.size >= _1307 + (32 * _1315) + 32
                mem[_1299 + ceil32(return_data.size) + 32 len 32 * _1315] = mem[_1299 + _1307 + 32 len 32 * _1315]
                _1651 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _1659 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while idx < _1659:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1651 + 36] = (32 * _1659) + 96
                _1963 = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1651 + (32 * _1659) + 100] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1651 + (32 * _1659) + 132 len 32 * _1963] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * _1963]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1651 + (32 * _1659) + (32 * _1963) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2259 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2267 = mem[_2259]
                require mem[_2259] <= test266151307()
                require _2259 + mem[_2259] + 31 < _2259 + return_data.size
                _2275 = mem[_2259 + mem[_2259]]
                if mem[_2259 + mem[_2259]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2259 + mem[_2259]]) + 32 < 0 or _2259 + ceil32(return_data.size) + (32 * mem[_2259 + mem[_2259]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2259 + ceil32(return_data.size) + (32 * mem[_2259 + mem[_2259]]) + 32
                mem[_2259 + ceil32(return_data.size)] = _2275
                require return_data.size >= _2267 + (32 * _2275) + 32
                mem[_2259 + ceil32(return_data.size) + 32 len 32 * _2275] = mem[_2259 + _2267 + 32 len 32 * _2275]
                _2739 = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = 0
                s = 0
                while idx < _2739:
                    if idx >= mem[_1299 + ceil32(return_data.size)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + _1299 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getNeededCollateralFor(uint256 arg1, bool arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2867 = mem[_2843]
                    if idx >= mem[_2259 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2259 + ceil32(return_data.size) + 32] >= mem[_2843]:
                        if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                            revert with 0, 50
                        mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
                        if idx > -2:
                            revert with 0, 17
                        _2739 = mem[(4 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = _2867
                        s = s
                        continue 
                    if idx >= mem[(4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 50
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    _2968 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).userProtocolFee(address arg1) with:
                            gas gas_remaining wei
                           args address(_2968)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3011 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_1299 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1299 + ceil32(return_data.size) + 32] > !mem[_3011]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _1299 + ceil32(return_data.size) + 32] + mem[_3011]):
                        revert with 0, 17
                    if idx > -2:
                        revert with 0, 17
                    _2739 = mem[(4 * ceil32(return_data.size)) + 224]
                    idx = idx + 1
                    s = _2867
                    s = s + mem[(32 * idx) + _1299 + ceil32(return_data.size) + 32] + mem[_3011]
                    continue 
                _2765 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2765] = 3
                mem[_2765 + 32] = 0x3130380000000000000000000000000000000000000000000000000000000000
                if s <= 0:
                    revert with 0, '', 0
                _2799 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2799] = 2
                mem[_2799 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                mem[_2799 + 64] = s
                mem[_2799 + 96] = address(arg2)
                mem[_2799 + 128] = 0
                mem[_2799 + 160] = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 256
                mem[_2799 + 192] = _1299 + ceil32(return_data.size)
                mem[_2799 + 224] = msg.sender
                mem[_2799 + 256] = this.address
                require ext_code.size(stor4)
                staticcall stor4.getFlasher() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2835 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2856 = mem[_2835]
                require mem[_2835] == mem[_2835 + 12 len 20]
                _2917 = mem[64]
                mem[mem[64]] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = mem[_2799 + 44 len 20]
                mem[mem[64] + 132] = s
                mem[mem[64] + 164] = address(arg2)
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 288
                _3056 = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                idx = 0
                s = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288
                t = mem[64] + 388
                while idx < _3056:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3139 = mem[_2799 + 192]
                mem[_2917 + 260] = (32 * _3056) + 320
                _3147 = mem[_3139]
                mem[_2917 + (32 * _3056) + 388] = mem[_3139]
                mem[_2917 + (32 * _3056) + 420 len 32 * _3147] = mem[_3139 + 32 len 32 * _3147]
                mem[_2917 + 292] = mem[_2799 + 236 len 20]
                mem[_2917 + 324] = mem[_2799 + 268 len 20]
                mem[_2917 + 36] = uint8(arg3)
                require ext_code.size(address(_2856))
                call address(_2856).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2917 + (32 * _3056) + (32 * _3147) + -mem[64] + 416]
        else:
            mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            if arg1.length > test266151307():
                revert with 0, 65
            mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320] = arg1.length
            mem[64] = (4 * ceil32(return_data.size)) + (131 * arg1.length) + 352
            if arg1.length:
                mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (98 * arg1.length) + 352] = mem[(2 * ceil32(return_data.size)) + 184 len 8]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (64 * arg1.length) + 320] = mem[(2 * ceil32(return_data.size)) + 216 len 8]
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _499 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _525 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                s = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while arg1.length < _525:
                    mem[t] = mem[s + 12 len 20]
                    s = arg1.length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_499 + 36] = t + -_499 - 4
                _917 = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t + 32 len 32 * _917] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * _917]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len t + (32 * _917) + -mem[64] + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1301 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1309 = mem[_1301]
                require mem[_1301] <= test266151307()
                require _1301 + mem[_1301] + 31 < _1301 + return_data.size
                _1317 = mem[_1301 + mem[_1301]]
                if mem[_1301 + mem[_1301]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_1301 + mem[_1301]]) + 32 < 0 or _1301 + ceil32(return_data.size) + (32 * mem[_1301 + mem[_1301]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _1301 + ceil32(return_data.size) + (32 * mem[_1301 + mem[_1301]]) + 32
                mem[_1301 + ceil32(return_data.size)] = _1317
                require return_data.size >= _1309 + (32 * _1317) + 32
                mem[_1301 + ceil32(return_data.size) + 32 len 32 * _1317] = mem[_1301 + _1309 + 32 len 32 * _1317]
                _1653 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _1661 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while idx < _1661:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1653 + 36] = (32 * _1661) + 96
                _1965 = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1653 + (32 * _1661) + 100] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1653 + (32 * _1661) + 132 len 32 * _1965] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * _1965]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1653 + (32 * _1661) + (32 * _1965) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2261 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2269 = mem[_2261]
                require mem[_2261] <= test266151307()
                require _2261 + mem[_2261] + 31 < _2261 + return_data.size
                _2277 = mem[_2261 + mem[_2261]]
                if mem[_2261 + mem[_2261]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2261 + mem[_2261]]) + 32 < 0 or _2261 + ceil32(return_data.size) + (32 * mem[_2261 + mem[_2261]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2261 + ceil32(return_data.size) + (32 * mem[_2261 + mem[_2261]]) + 32
                mem[_2261 + ceil32(return_data.size)] = _2277
                require return_data.size >= _2269 + (32 * _2277) + 32
                mem[_2261 + ceil32(return_data.size) + 32 len 32 * _2277] = mem[_2261 + _2269 + 32 len 32 * _2277]
                _2741 = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = 0
                s = 0
                while idx < _2741:
                    if idx >= mem[_1301 + ceil32(return_data.size)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + _1301 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getNeededCollateralFor(uint256 arg1, bool arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2869 = mem[_2845]
                    if idx >= mem[_2261 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2261 + ceil32(return_data.size) + 32] >= mem[_2845]:
                        if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                            revert with 0, 50
                        mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
                        if idx > -2:
                            revert with 0, 17
                        _2741 = mem[(4 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = _2869
                        s = s
                        continue 
                    if idx >= mem[(4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 50
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    _2972 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).userProtocolFee(address arg1) with:
                            gas gas_remaining wei
                           args address(_2972)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3013 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_1301 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1301 + ceil32(return_data.size) + 32] > !mem[_3013]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _1301 + ceil32(return_data.size) + 32] + mem[_3013]):
                        revert with 0, 17
                    if idx > -2:
                        revert with 0, 17
                    _2741 = mem[(4 * ceil32(return_data.size)) + 224]
                    idx = idx + 1
                    s = _2869
                    s = s + mem[(32 * idx) + _1301 + ceil32(return_data.size) + 32] + mem[_3013]
                    continue 
                _2771 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2771] = 3
                mem[_2771 + 32] = 0x3130380000000000000000000000000000000000000000000000000000000000
                if s <= 0:
                    revert with 0, '', 0
                _2809 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2809] = 2
                mem[_2809 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                mem[_2809 + 64] = s
                mem[_2809 + 96] = address(arg2)
                mem[_2809 + 128] = 0
                mem[_2809 + 160] = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 256
                mem[_2809 + 192] = _1301 + ceil32(return_data.size)
                mem[_2809 + 224] = msg.sender
                mem[_2809 + 256] = this.address
                require ext_code.size(stor4)
                staticcall stor4.getFlasher() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2837 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2860 = mem[_2837]
                require mem[_2837] == mem[_2837 + 12 len 20]
                mem[mem[64]] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = mem[_2809 + 44 len 20]
                mem[mem[64] + 132] = s
                mem[mem[64] + 164] = address(arg2)
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 288
                _3060 = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                idx = 0
                t = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288
                u = mem[64] + 388
                while idx < _3060:
                    mem[u] = mem[t + 12 len 20]
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _3141 = mem[_2809 + 192]
                mem[mem[64] + 260] = (32 * _3060) + 320
                _3149 = mem[_3141]
                mem[mem[64] + (32 * _3060) + 388] = mem[_3141]
                mem[mem[64] + (32 * _3060) + 420 len 32 * _3149] = mem[_3141 + 32 len 32 * _3149]
                mem[mem[64] + 292] = mem[_2809 + 236 len 20]
                mem[mem[64] + 324] = mem[_2809 + 268 len 20]
                require ext_code.size(address(_2860))
                call address(_2860).0x5ccd808c with:
                     gas gas_remaining wei
                    args 64, uint8(arg3), 2, mem[mem[64] + 100], s, address(arg2), 0, 288, (32 * _3060) + 320, mem[mem[64] + 292 len (32 * _3060) + (32 * _3149) + 128]
            else:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (98 * arg1.length) + 352] = mem[(2 * ceil32(return_data.size)) + 184 len 8]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (64 * arg1.length) + 320] = mem[(2 * ceil32(return_data.size)) + 216 len 8]
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _496 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _524 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                s = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while arg1.length < _524:
                    mem[t] = mem[s + 12 len 20]
                    s = arg1.length + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_496 + 36] = t + -_496 - 4
                _916 = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 288]
                mem[t + 32 len 32 * _916] = mem[(4 * ceil32(return_data.size)) + (64 * arg1.length) + 320 len 32 * _916]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len t + (32 * _916) + -mem[64] + 28]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1300 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1308 = mem[_1300]
                require mem[_1300] <= test266151307()
                require _1300 + mem[_1300] + 31 < _1300 + return_data.size
                _1316 = mem[_1300 + mem[_1300]]
                if mem[_1300 + mem[_1300]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_1300 + mem[_1300]]) + 32 < 0 or _1300 + ceil32(return_data.size) + (32 * mem[_1300 + mem[_1300]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _1300 + ceil32(return_data.size) + (32 * mem[_1300 + mem[_1300]]) + 32
                mem[_1300 + ceil32(return_data.size)] = _1316
                require return_data.size >= _1308 + (32 * _1316) + 32
                mem[_1300 + ceil32(return_data.size) + 32 len 32 * _1316] = mem[_1300 + _1308 + 32 len 32 * _1316]
                _1652 = mem[64]
                mem[mem[64]] = 0x4e1273f400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _1660 = mem[(4 * ceil32(return_data.size)) + 224]
                mem[mem[64] + 68] = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = mem[64] + 100
                while idx < _1660:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1652 + 36] = (32 * _1660) + 96
                _1964 = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1652 + (32 * _1660) + 100] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 320]
                mem[_1652 + (32 * _1660) + 132 len 32 * _1964] = mem[(4 * ceil32(return_data.size)) + (98 * arg1.length) + 352 len 32 * _1964]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1652 + (32 * _1660) + (32 * _1964) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2260 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2268 = mem[_2260]
                require mem[_2260] <= test266151307()
                require _2260 + mem[_2260] + 31 < _2260 + return_data.size
                _2276 = mem[_2260 + mem[_2260]]
                if mem[_2260 + mem[_2260]] > test266151307():
                    revert with 0, 65
                if (32 * mem[_2260 + mem[_2260]]) + 32 < 0 or _2260 + ceil32(return_data.size) + (32 * mem[_2260 + mem[_2260]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _2260 + ceil32(return_data.size) + (32 * mem[_2260 + mem[_2260]]) + 32
                mem[_2260 + ceil32(return_data.size)] = _2276
                require return_data.size >= _2268 + (32 * _2276) + 32
                mem[_2260 + ceil32(return_data.size) + 32 len 32 * _2276] = mem[_2260 + _2268 + 32 len 32 * _2276]
                _2740 = mem[(4 * ceil32(return_data.size)) + 224]
                idx = 0
                s = 0
                s = 0
                while idx < _2740:
                    if idx >= mem[_1300 + ceil32(return_data.size)]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * idx) + _1300 + ceil32(return_data.size) + 32]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).getNeededCollateralFor(uint256 arg1, bool arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2868 = mem[_2844]
                    if idx >= mem[_2260 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _2260 + ceil32(return_data.size) + 32] >= mem[_2844]:
                        if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                            revert with 0, 50
                        mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
                        if idx > -2:
                            revert with 0, 17
                        _2740 = mem[(4 * ceil32(return_data.size)) + 224]
                        idx = idx + 1
                        s = _2868
                        s = s
                        continue 
                    if idx >= mem[(4 * ceil32(return_data.size)) + 224]:
                        revert with 0, 50
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    mem[(32 * idx) + (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    if idx >= mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]:
                        revert with 0, 50
                    _2970 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 268 len 20]
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).userProtocolFee(address arg1) with:
                            gas gas_remaining wei
                           args address(_2970)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3012 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_1300 + ceil32(return_data.size)]:
                        revert with 0, 50
                    if mem[(32 * idx) + _1300 + ceil32(return_data.size) + 32] > !mem[_3012]:
                        revert with 0, 17
                    if s > !(mem[(32 * idx) + _1300 + ceil32(return_data.size) + 32] + mem[_3012]):
                        revert with 0, 17
                    if idx > -2:
                        revert with 0, 17
                    _2740 = mem[(4 * ceil32(return_data.size)) + 224]
                    idx = idx + 1
                    s = _2868
                    s = s + mem[(32 * idx) + _1300 + ceil32(return_data.size) + 32] + mem[_3012]
                    continue 
                _2768 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2768] = 3
                mem[_2768 + 32] = 0x3130380000000000000000000000000000000000000000000000000000000000
                if s <= 0:
                    revert with 0, '', 0
                _2804 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2804] = 2
                mem[_2804 + 32] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
                mem[_2804 + 64] = s
                mem[_2804 + 96] = address(arg2)
                mem[_2804 + 128] = 0
                mem[_2804 + 160] = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 256
                mem[_2804 + 192] = _1300 + ceil32(return_data.size)
                mem[_2804 + 224] = msg.sender
                mem[_2804 + 256] = this.address
                require ext_code.size(stor4)
                staticcall stor4.getFlasher() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2836 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2858 = mem[_2836]
                require mem[_2836] == mem[_2836 + 12 len 20]
                _2920 = mem[64]
                mem[mem[64]] = 0x5ccd808c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                mem[mem[64] + 68] = 2
                mem[mem[64] + 100] = mem[_2804 + 44 len 20]
                mem[mem[64] + 132] = s
                mem[mem[64] + 164] = address(arg2)
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = 288
                _3058 = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                mem[mem[64] + 356] = mem[(4 * ceil32(return_data.size)) + (32 * arg1.length) + 256]
                idx = 0
                s = (4 * ceil32(return_data.size)) + (32 * arg1.length) + 288
                t = mem[64] + 388
                while idx < _3058:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _3140 = mem[_2804 + 192]
                mem[_2920 + 260] = (32 * _3058) + 320
                _3148 = mem[_3140]
                mem[_2920 + (32 * _3058) + 388] = mem[_3140]
                mem[_2920 + (32 * _3058) + 420 len 32 * _3148] = mem[_3140 + 32 len 32 * _3148]
                mem[_2920 + 292] = mem[_2804 + 236 len 20]
                mem[_2920 + 324] = mem[_2804 + 268 len 20]
                mem[_2920 + 36] = uint8(arg3)
                require ext_code.size(address(_2858))
                call address(_2858).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _2920 + (32 * _3058) + (32 * _3148) + -mem[64] + 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2 = 1
}



}
