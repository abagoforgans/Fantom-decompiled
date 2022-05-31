contract main {




// =====================  Runtime code  =====================


#
#  - sub_8a566e71(?)
#
mapping of uint8 stor0;
uint8 stor1;
uint8 stor1; offset 8
address stor1; offset 16
uint256 stor1; offset 8

function isInitialized() payable {
    return bool(address(stor1.field_16))
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    require ext_code.size(address(stor1.field_16))
    call address(stor1.field_16).0xa7fc7a07 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xc4d66de8 with:
         gas gas_remaining wei
        args address(stor1.field_16)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function sub_516d16b9(?) payable {
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    require ext_code.size(address(stor1.field_16))
    staticcall address(stor1.field_16).0x516d16b9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor1.field_8):
        if uint8(stor1.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor1.field_8):
            uint8(stor1.field_0) = 1
            uint8(stor1.field_8) = 1
            Mask(248, 0, stor1.field_8) = 0
    require ext_code.size(arg1)
    staticcall arg1.0xb429afeb with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Lootbox data must be controlled by this lootbox factory'
    address(stor1.field_16) = arg1
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 0
}

function sub_01768052(?) payable {
    require calldata.size - 4 >= 32
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    mem[96] = 0x176805200000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(stor1.field_16))
    staticcall address(stor1.field_16).0x1768052 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 544
    if not bool(ceil32(return_data.size) + 640 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 640
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] == mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 108 len 20]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[_6 + 128] == mem[_6 + 140 len 20]
    mem[ceil32(return_data.size) + 128] = mem[_6 + 128]
    require mem[_6 + 160] == mem[_6 + 172 len 20]
    mem[ceil32(return_data.size) + 160] = mem[_6 + 160]
    require mem[_6 + 192] == mem[_6 + 204 len 20]
    mem[ceil32(return_data.size) + 192] = mem[_6 + 192]
    mem[ceil32(return_data.size) + 224] = mem[_6 + 224]
    _13 = mem[_6 + 256]
    require mem[_6 + 256] <= test266151307()
    require _6 + mem[_6 + 256] + 127 < return_data.size + 96
    _14 = mem[_6 + mem[_6 + 256] + 96]
    if mem[_6 + mem[_6 + 256] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(mem[_6 + mem[_6 + 256] + 96]) + 576 < 544 or ceil32(return_data.size) + ceil32(mem[_6 + mem[_6 + 256] + 96]) + 672 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[_6 + mem[_6 + 256] + 96]) + 672
    mem[ceil32(return_data.size) + 640] = _14
    require _6 + _13 + _14 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 672 len ceil32(_14)] = mem[_6 + _13 + 128 len ceil32(_14)]
    if ceil32(_14) <= _14:
        mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 640
        _138 = mem[_6 + 288]
        require mem[_6 + 288] <= test266151307()
        require _6 + mem[_6 + 288] + 127 < return_data.size + 96
        _140 = mem[_6 + mem[_6 + 288] + 96]
        if mem[_6 + mem[_6 + 288] + 96] > test266151307():
            revert with 'NH{q', 65
        _142 = mem[64]
        if mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32
        mem[_142] = mem[_6 + mem[_6 + 288] + 96]
        require _6 + _138 + _140 + 32 <= return_data.size
        mem[_142 + 32 len ceil32(_140)] = mem[_6 + _138 + 128 len ceil32(_140)]
        if ceil32(_140) <= _140:
            mem[ceil32(return_data.size) + 288] = _142
            _260 = mem[_6 + 320]
            require mem[_6 + 320] <= test266151307()
            require _6 + mem[_6 + 320] + 127 < return_data.size + 96
            _264 = mem[_6 + mem[_6 + 320] + 96]
            if mem[_6 + mem[_6 + 320] + 96] > test266151307():
                revert with 'NH{q', 65
            _268 = mem[64]
            if mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32
            mem[_268] = _264
            require _6 + _260 + _264 + 32 <= return_data.size
            mem[_268 + 32 len ceil32(_264)] = mem[_6 + _260 + 128 len ceil32(_264)]
            if ceil32(_264) > _264:
                mem[_268 + _264 + 32] = 0
            mem[ceil32(return_data.size) + 320] = _268
        else:
            mem[_142 + _140 + 32] = 0
            mem[ceil32(return_data.size) + 288] = _142
            _262 = mem[_6 + 320]
            require mem[_6 + 320] <= test266151307()
            require _6 + mem[_6 + 320] + 127 < return_data.size + 96
            _266 = mem[_6 + mem[_6 + 320] + 96]
            if mem[_6 + mem[_6 + 320] + 96] > test266151307():
                revert with 'NH{q', 65
            _270 = mem[64]
            if mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32
            mem[_270] = _266
            require _6 + _262 + _266 + 32 <= return_data.size
            mem[_270 + 32 len ceil32(_266)] = mem[_6 + _262 + 128 len ceil32(_266)]
            if ceil32(_266) > _266:
                mem[_270 + _266 + 32] = 0
            mem[ceil32(return_data.size) + 320] = _270
    else:
        mem[ceil32(return_data.size) + _14 + 672] = 0
        mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 640
        _139 = mem[_6 + 288]
        require mem[_6 + 288] <= test266151307()
        require _6 + mem[_6 + 288] + 127 < return_data.size + 96
        _141 = mem[_6 + mem[_6 + 288] + 96]
        if mem[_6 + mem[_6 + 288] + 96] > test266151307():
            revert with 'NH{q', 65
        _143 = mem[64]
        if mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32
        mem[_143] = mem[_6 + mem[_6 + 288] + 96]
        require _6 + _139 + _141 + 32 <= return_data.size
        mem[_143 + 32 len ceil32(_141)] = mem[_6 + _139 + 128 len ceil32(_141)]
        if ceil32(_141) <= _141:
            mem[ceil32(return_data.size) + 288] = _143
            _261 = mem[_6 + 320]
            require mem[_6 + 320] <= test266151307()
            require _6 + mem[_6 + 320] + 127 < return_data.size + 96
            _265 = mem[_6 + mem[_6 + 320] + 96]
            if mem[_6 + mem[_6 + 320] + 96] > test266151307():
                revert with 'NH{q', 65
            _269 = mem[64]
            if mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32
            mem[_269] = _265
            require _6 + _261 + _265 + 32 <= return_data.size
            mem[_269 + 32 len ceil32(_265)] = mem[_6 + _261 + 128 len ceil32(_265)]
            if ceil32(_265) > _265:
                mem[_269 + _265 + 32] = 0
            mem[ceil32(return_data.size) + 320] = _269
        else:
            mem[_143 + _141 + 32] = 0
            mem[ceil32(return_data.size) + 288] = _143
            _263 = mem[_6 + 320]
            require mem[_6 + 320] <= test266151307()
            require _6 + mem[_6 + 320] + 127 < return_data.size + 96
            _267 = mem[_6 + mem[_6 + 320] + 96]
            if mem[_6 + mem[_6 + 320] + 96] > test266151307():
                revert with 'NH{q', 65
            _271 = mem[64]
            if mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32
            mem[_271] = _267
            require _6 + _263 + _267 + 32 <= return_data.size
            mem[_271 + 32 len ceil32(_267)] = mem[_6 + _263 + 128 len ceil32(_267)]
            if ceil32(_267) > _267:
                mem[_271 + _267 + 32] = 0
            mem[ceil32(return_data.size) + 320] = _271
    require mem[_6 + 352] == mem[_6 + 383 len 1]
    mem[ceil32(return_data.size) + 352] = mem[_6 + 352]
    require mem[_6 + 384] == mem[_6 + 415 len 1]
    mem[ceil32(return_data.size) + 384] = mem[_6 + 384]
    mem[ceil32(return_data.size) + 416] = mem[_6 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_6 + 448]
    mem[ceil32(return_data.size) + 480] = mem[_6 + 480]
    mem[ceil32(return_data.size) + 512] = mem[_6 + 512]
    mem[ceil32(return_data.size) + 544] = mem[_6 + 544]
    mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
    require mem[_6 + 608] == bool(mem[_6 + 608])
    mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
    mem[mem[64]] = mem[ceil32(return_data.size) + 140 len 20]
    return memory
      from mem[64]
       len 32
}

function sub_5213b7ff(?) payable {
    require calldata.size - 4 >= 32
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    mem[96] = 0xbb0492f500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(stor1.field_16))
    staticcall address(stor1.field_16).0xbb0492f5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require return_data.size - mem[96 len 4], Mask(224, 32, arg1) >> 32 >= 544
    if not bool(ceil32(return_data.size) + 640 <= test266151307()):
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + 640
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] == mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 108 len 20]
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    require mem[_6 + 128] == mem[_6 + 140 len 20]
    mem[ceil32(return_data.size) + 128] = mem[_6 + 128]
    require mem[_6 + 160] == mem[_6 + 172 len 20]
    mem[ceil32(return_data.size) + 160] = mem[_6 + 160]
    require mem[_6 + 192] == mem[_6 + 204 len 20]
    mem[ceil32(return_data.size) + 192] = mem[_6 + 192]
    mem[ceil32(return_data.size) + 224] = mem[_6 + 224]
    _13 = mem[_6 + 256]
    require mem[_6 + 256] <= test266151307()
    require _6 + mem[_6 + 256] + 127 < return_data.size + 96
    _14 = mem[_6 + mem[_6 + 256] + 96]
    if mem[_6 + mem[_6 + 256] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(mem[_6 + mem[_6 + 256] + 96]) + 576 < 544 or ceil32(return_data.size) + ceil32(mem[_6 + mem[_6 + 256] + 96]) + 672 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(mem[_6 + mem[_6 + 256] + 96]) + 672
    mem[ceil32(return_data.size) + 640] = _14
    require _6 + _13 + _14 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 672 len ceil32(_14)] = mem[_6 + _13 + 128 len ceil32(_14)]
    if ceil32(_14) <= _14:
        mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 640
        _138 = mem[_6 + 288]
        require mem[_6 + 288] <= test266151307()
        require _6 + mem[_6 + 288] + 127 < return_data.size + 96
        _140 = mem[_6 + mem[_6 + 288] + 96]
        if mem[_6 + mem[_6 + 288] + 96] > test266151307():
            revert with 'NH{q', 65
        _142 = mem[64]
        if mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32
        mem[_142] = mem[_6 + mem[_6 + 288] + 96]
        require _6 + _138 + _140 + 32 <= return_data.size
        mem[_142 + 32 len ceil32(_140)] = mem[_6 + _138 + 128 len ceil32(_140)]
        if ceil32(_140) <= _140:
            mem[ceil32(return_data.size) + 288] = _142
            _260 = mem[_6 + 320]
            require mem[_6 + 320] <= test266151307()
            require _6 + mem[_6 + 320] + 127 < return_data.size + 96
            _264 = mem[_6 + mem[_6 + 320] + 96]
            if mem[_6 + mem[_6 + 320] + 96] > test266151307():
                revert with 'NH{q', 65
            _268 = mem[64]
            if mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32
            mem[_268] = _264
            require _6 + _260 + _264 + 32 <= return_data.size
            mem[_268 + 32 len ceil32(_264)] = mem[_6 + _260 + 128 len ceil32(_264)]
            if ceil32(_264) > _264:
                mem[_268 + _264 + 32] = 0
            mem[ceil32(return_data.size) + 320] = _268
        else:
            mem[_142 + _140 + 32] = 0
            mem[ceil32(return_data.size) + 288] = _142
            _262 = mem[_6 + 320]
            require mem[_6 + 320] <= test266151307()
            require _6 + mem[_6 + 320] + 127 < return_data.size + 96
            _266 = mem[_6 + mem[_6 + 320] + 96]
            if mem[_6 + mem[_6 + 320] + 96] > test266151307():
                revert with 'NH{q', 65
            _270 = mem[64]
            if mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32
            mem[_270] = _266
            require _6 + _262 + _266 + 32 <= return_data.size
            mem[_270 + 32 len ceil32(_266)] = mem[_6 + _262 + 128 len ceil32(_266)]
            if ceil32(_266) > _266:
                mem[_270 + _266 + 32] = 0
            mem[ceil32(return_data.size) + 320] = _270
    else:
        mem[ceil32(return_data.size) + _14 + 672] = 0
        mem[ceil32(return_data.size) + 256] = ceil32(return_data.size) + 640
        _139 = mem[_6 + 288]
        require mem[_6 + 288] <= test266151307()
        require _6 + mem[_6 + 288] + 127 < return_data.size + 96
        _141 = mem[_6 + mem[_6 + 288] + 96]
        if mem[_6 + mem[_6 + 288] + 96] > test266151307():
            revert with 'NH{q', 65
        _143 = mem[64]
        if mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 288] + 96]) + 32
        mem[_143] = mem[_6 + mem[_6 + 288] + 96]
        require _6 + _139 + _141 + 32 <= return_data.size
        mem[_143 + 32 len ceil32(_141)] = mem[_6 + _139 + 128 len ceil32(_141)]
        if ceil32(_141) <= _141:
            mem[ceil32(return_data.size) + 288] = _143
            _261 = mem[_6 + 320]
            require mem[_6 + 320] <= test266151307()
            require _6 + mem[_6 + 320] + 127 < return_data.size + 96
            _265 = mem[_6 + mem[_6 + 320] + 96]
            if mem[_6 + mem[_6 + 320] + 96] > test266151307():
                revert with 'NH{q', 65
            _269 = mem[64]
            if mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32
            mem[_269] = _265
            require _6 + _261 + _265 + 32 <= return_data.size
            mem[_269 + 32 len ceil32(_265)] = mem[_6 + _261 + 128 len ceil32(_265)]
            if ceil32(_265) > _265:
                mem[_269 + _265 + 32] = 0
            mem[ceil32(return_data.size) + 320] = _269
        else:
            mem[_143 + _141 + 32] = 0
            mem[ceil32(return_data.size) + 288] = _143
            _263 = mem[_6 + 320]
            require mem[_6 + 320] <= test266151307()
            require _6 + mem[_6 + 320] + 127 < return_data.size + 96
            _267 = mem[_6 + mem[_6 + 320] + 96]
            if mem[_6 + mem[_6 + 320] + 96] > test266151307():
                revert with 'NH{q', 65
            _271 = mem[64]
            if mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 320] + 96]) + 32
            mem[_271] = _267
            require _6 + _263 + _267 + 32 <= return_data.size
            mem[_271 + 32 len ceil32(_267)] = mem[_6 + _263 + 128 len ceil32(_267)]
            if ceil32(_267) > _267:
                mem[_271 + _267 + 32] = 0
            mem[ceil32(return_data.size) + 320] = _271
    require mem[_6 + 352] == mem[_6 + 383 len 1]
    mem[ceil32(return_data.size) + 352] = mem[_6 + 352]
    require mem[_6 + 384] == mem[_6 + 415 len 1]
    mem[ceil32(return_data.size) + 384] = mem[_6 + 384]
    mem[ceil32(return_data.size) + 416] = mem[_6 + 416]
    mem[ceil32(return_data.size) + 448] = mem[_6 + 448]
    mem[ceil32(return_data.size) + 480] = mem[_6 + 480]
    mem[ceil32(return_data.size) + 512] = mem[_6 + 512]
    mem[ceil32(return_data.size) + 544] = mem[_6 + 544]
    mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
    require mem[_6 + 608] == bool(mem[_6 + 608])
    mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
    mem[mem[64]] = mem[ceil32(return_data.size) + 140 len 20]
    return memory
      from mem[64]
       len 32
}

function sub_5d610177(?) payable {
    if not address(stor1.field_16):
        revert with 0, 'Lootbox is not initialized'
    mem[96] = 0x5d61017700000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(stor1.field_16))
    staticcall address(stor1.field_16).0x5d610177 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[96] + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _7
    idx = 0
    s = _6 + 128
    t = ceil32(return_data.size) + 128
    while idx < _7:
        _218 = mem[s]
        require return_data.size + -_6 + -mem[s] - 32 >= 544
        _221 = mem[64]
        if mem[64] + 544 < mem[64] or mem[64] + 544 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 544
        require mem[_6 + _218 + 128] == mem[_6 + _218 + 140 len 20]
        mem[_221] = mem[_6 + _218 + 128]
        require mem[_6 + _218 + 160] == mem[_6 + _218 + 172 len 20]
        mem[_221 + 32] = mem[_6 + _218 + 160]
        require mem[_6 + _218 + 192] == mem[_6 + _218 + 204 len 20]
        mem[_221 + 64] = mem[_6 + _218 + 192]
        require mem[_6 + _218 + 224] == mem[_6 + _218 + 236 len 20]
        mem[_221 + 96] = mem[_6 + _218 + 224]
        mem[_221 + 128] = mem[_6 + _218 + 256]
        _242 = mem[_6 + _218 + 288]
        require mem[_6 + _218 + 288] <= test266151307()
        require _6 + _218 + mem[_6 + _218 + 288] + 159 < return_data.size + 96
        _245 = mem[_6 + _218 + mem[_6 + _218 + 288] + 128]
        if mem[_6 + _218 + mem[_6 + _218 + 288] + 128] > test266151307():
            revert with 'NH{q', 65
        _254 = mem[64]
        if mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 288] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 288] + 128]) + 32 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 288] + 128]) + 32
        mem[_254] = mem[_6 + _218 + mem[_6 + _218 + 288] + 128]
        require _6 + _218 + _242 + _245 + 64 <= return_data.size
        u = 0
        while u < _245:
            mem[u + _254 + 32] = mem[u + _6 + _218 + _242 + 160]
            u = u + 32
            continue 
        if ceil32(_245) <= _245:
            mem[_221 + 160] = _254
            _432 = mem[_6 + _218 + 320]
            require mem[_6 + _218 + 320] <= test266151307()
            require _6 + _218 + mem[_6 + _218 + 320] + 159 < return_data.size + 96
            _435 = mem[_6 + _218 + mem[_6 + _218 + 320] + 128]
            if mem[_6 + _218 + mem[_6 + _218 + 320] + 128] > test266151307():
                revert with 'NH{q', 65
            _441 = mem[64]
            if mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 320] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 320] + 128]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 320] + 128]) + 32
            mem[_441] = mem[_6 + _218 + mem[_6 + _218 + 320] + 128]
            require _6 + _218 + _432 + _435 + 64 <= return_data.size
            u = 0
            while u < _435:
                mem[u + _441 + 32] = mem[u + _6 + _218 + _432 + 160]
                u = u + 32
                continue 
            if ceil32(_435) <= _435:
                mem[_221 + 192] = _441
                _628 = mem[_6 + _218 + 352]
                require mem[_6 + _218 + 352] <= test266151307()
                require _6 + _218 + mem[_6 + _218 + 352] + 159 < return_data.size + 96
                _635 = mem[_6 + _218 + mem[_6 + _218 + 352] + 128]
                if mem[_6 + _218 + mem[_6 + _218 + 352] + 128] > test266151307():
                    revert with 'NH{q', 65
                _642 = mem[64]
                if mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32
                mem[_642] = mem[_6 + _218 + mem[_6 + _218 + 352] + 128]
                require _6 + _218 + _628 + _635 + 64 <= return_data.size
                u = 0
                while u < _635:
                    mem[u + _642 + 32] = mem[u + _6 + _218 + _628 + 160]
                    u = u + 32
                    continue 
                if ceil32(_635) > _635:
                    mem[_642 + _635 + 32] = 0
                mem[_221 + 224] = _642
            else:
                mem[_441 + _435 + 32] = 0
                mem[_221 + 192] = _441
                _632 = mem[_6 + _218 + 352]
                require mem[_6 + _218 + 352] <= test266151307()
                require _6 + _218 + mem[_6 + _218 + 352] + 159 < return_data.size + 96
                _638 = mem[_6 + _218 + mem[_6 + _218 + 352] + 128]
                if mem[_6 + _218 + mem[_6 + _218 + 352] + 128] > test266151307():
                    revert with 'NH{q', 65
                _647 = mem[64]
                if mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32
                mem[_647] = mem[_6 + _218 + mem[_6 + _218 + 352] + 128]
                require _6 + _218 + _632 + _638 + 64 <= return_data.size
                u = 0
                while u < _638:
                    mem[u + _647 + 32] = mem[u + _6 + _218 + _632 + 160]
                    u = u + 32
                    continue 
                if ceil32(_638) > _638:
                    mem[_647 + _638 + 32] = 0
                mem[_221 + 224] = _647
        else:
            mem[_254 + _245 + 32] = 0
            mem[_221 + 160] = _254
            _433 = mem[_6 + _218 + 320]
            require mem[_6 + _218 + 320] <= test266151307()
            require _6 + _218 + mem[_6 + _218 + 320] + 159 < return_data.size + 96
            _437 = mem[_6 + _218 + mem[_6 + _218 + 320] + 128]
            if mem[_6 + _218 + mem[_6 + _218 + 320] + 128] > test266151307():
                revert with 'NH{q', 65
            _442 = mem[64]
            if mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 320] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 320] + 128]) + 32 > test266151307():
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 320] + 128]) + 32
            mem[_442] = mem[_6 + _218 + mem[_6 + _218 + 320] + 128]
            require _6 + _218 + _433 + _437 + 64 <= return_data.size
            u = 0
            while u < _437:
                mem[u + _442 + 32] = mem[u + _6 + _218 + _433 + 160]
                u = u + 32
                continue 
            if ceil32(_437) <= _437:
                mem[_221 + 192] = _442
                _629 = mem[_6 + _218 + 352]
                require mem[_6 + _218 + 352] <= test266151307()
                require _6 + _218 + mem[_6 + _218 + 352] + 159 < return_data.size + 96
                _636 = mem[_6 + _218 + mem[_6 + _218 + 352] + 128]
                if mem[_6 + _218 + mem[_6 + _218 + 352] + 128] > test266151307():
                    revert with 'NH{q', 65
                _643 = mem[64]
                if mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32
                mem[_643] = mem[_6 + _218 + mem[_6 + _218 + 352] + 128]
                require _6 + _218 + _629 + _636 + 64 <= return_data.size
                u = 0
                while u < _636:
                    mem[u + _643 + 32] = mem[u + _6 + _218 + _629 + 160]
                    u = u + 32
                    continue 
                if ceil32(_636) > _636:
                    mem[_643 + _636 + 32] = 0
                mem[_221 + 224] = _643
            else:
                mem[_442 + _437 + 32] = 0
                mem[_221 + 192] = _442
                _633 = mem[_6 + _218 + 352]
                require mem[_6 + _218 + 352] <= test266151307()
                require _6 + _218 + mem[_6 + _218 + 352] + 159 < return_data.size + 96
                _639 = mem[_6 + _218 + mem[_6 + _218 + 352] + 128]
                if mem[_6 + _218 + mem[_6 + _218 + 352] + 128] > test266151307():
                    revert with 'NH{q', 65
                _648 = mem[64]
                if mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32 < mem[64] or mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(mem[_6 + _218 + mem[_6 + _218 + 352] + 128]) + 32
                mem[_648] = mem[_6 + _218 + mem[_6 + _218 + 352] + 128]
                require _6 + _218 + _633 + _639 + 64 <= return_data.size
                u = 0
                while u < _639:
                    mem[u + _648 + 32] = mem[u + _6 + _218 + _633 + 160]
                    u = u + 32
                    continue 
                if ceil32(_639) > _639:
                    mem[_648 + _639 + 32] = 0
                mem[_221 + 224] = _648
        require mem[_6 + _218 + 384] == mem[_6 + _218 + 415 len 1]
        mem[_221 + 256] = mem[_6 + _218 + 384]
        require mem[_6 + _218 + 416] == mem[_6 + _218 + 447 len 1]
        mem[_221 + 288] = mem[_6 + _218 + 416]
        mem[_221 + 320] = mem[_6 + _218 + 448]
        mem[_221 + 352] = mem[_6 + _218 + 480]
        mem[_221 + 384] = mem[_6 + _218 + 512]
        mem[_221 + 416] = mem[_6 + _218 + 544]
        mem[_221 + 448] = mem[_6 + _218 + 576]
        mem[_221 + 480] = mem[_6 + _218 + 608]
        require mem[_6 + _218 + 640] == bool(mem[_6 + _218 + 640])
        mem[_221 + 512] = mem[_6 + _218 + 640]
        mem[t] = _221
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _219 = mem[64]
    mem[mem[64]] = 32
    _220 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    u = mem[64] + (32 * _220) + 64
    while idx < _220:
        mem[t] = u + -_219 - 64
        _427 = mem[s]
        mem[u] = mem[mem[s] + 12 len 20]
        mem[u + 32] = mem[_427 + 44 len 20]
        mem[u + 64] = mem[_427 + 76 len 20]
        mem[u + 96] = mem[_427 + 108 len 20]
        mem[u + 128] = mem[_427 + 128]
        _439 = mem[_427 + 160]
        mem[u + 160] = 544
        _440 = mem[_439]
        mem[u + 544] = mem[_439]
        v = 0
        while v < _440:
            mem[v + u + 576] = mem[v + _439 + 32]
            v = v + 32
            continue 
        if ceil32(_440) <= _440:
            _627 = mem[_427 + 192]
            mem[u + 192] = ceil32(_440) + 576
            _630 = mem[_627]
            mem[ceil32(_440) + u + 576] = mem[_627]
            v = 0
            while v < _630:
                mem[v + ceil32(_440) + u + 608] = mem[v + _627 + 32]
                v = v + 32
                continue 
            if ceil32(_630) <= _630:
                _811 = mem[_427 + 224]
                mem[u + 224] = ceil32(_630) + ceil32(_440) + 608
                _813 = mem[_811]
                mem[ceil32(_630) + ceil32(_440) + u + 608] = mem[_811]
                v = 0
                while v < _813:
                    mem[v + ceil32(_630) + ceil32(_440) + u + 640] = mem[v + _811 + 32]
                    v = v + 32
                    continue 
                if ceil32(_813) > _813:
                    mem[ceil32(_630) + ceil32(_440) + u + _813 + 640] = 0
                mem[u + 256] = mem[_427 + 287 len 1]
                mem[u + 288] = mem[_427 + 319 len 1]
                mem[u + 320] = mem[_427 + 320]
                mem[u + 352] = mem[_427 + 352]
                mem[u + 384] = mem[_427 + 384]
                mem[u + 416] = mem[_427 + 416]
                mem[u + 448] = mem[_427 + 448]
                mem[u + 480] = mem[_427 + 480]
                mem[u + 512] = bool(mem[_427 + 512])
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_813) + ceil32(_630) + ceil32(_440) + u + 640
                continue 
            mem[ceil32(_440) + u + _630 + 608] = 0
            _814 = mem[_427 + 224]
            mem[u + 224] = ceil32(_630) + ceil32(_440) + 608
            _821 = mem[_814]
            mem[ceil32(_630) + ceil32(_440) + u + 608] = mem[_814]
            v = 0
            while v < _821:
                mem[v + ceil32(_630) + ceil32(_440) + u + 640] = mem[v + _814 + 32]
                v = v + 32
                continue 
            if ceil32(_821) > _821:
                mem[ceil32(_630) + ceil32(_440) + u + _821 + 640] = 0
            mem[u + 256] = mem[_427 + 287 len 1]
            mem[u + 288] = mem[_427 + 319 len 1]
            mem[u + 320] = mem[_427 + 320]
            mem[u + 352] = mem[_427 + 352]
            mem[u + 384] = mem[_427 + 384]
            mem[u + 416] = mem[_427 + 416]
            mem[u + 448] = mem[_427 + 448]
            mem[u + 480] = mem[_427 + 480]
            mem[u + 512] = bool(mem[_427 + 512])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_821) + ceil32(_630) + ceil32(_440) + u + 640
            continue 
        mem[u + _440 + 576] = 0
        _631 = mem[_427 + 192]
        mem[u + 192] = ceil32(_440) + 576
        _634 = mem[_631]
        mem[ceil32(_440) + u + 576] = mem[_631]
        v = 0
        while v < _634:
            mem[v + ceil32(_440) + u + 608] = mem[v + _631 + 32]
            v = v + 32
            continue 
        if ceil32(_634) <= _634:
            _812 = mem[_427 + 224]
            mem[u + 224] = ceil32(_634) + ceil32(_440) + 608
            _815 = mem[_812]
            mem[ceil32(_634) + ceil32(_440) + u + 608] = mem[_812]
            v = 0
            while v < _815:
                mem[v + ceil32(_634) + ceil32(_440) + u + 640] = mem[v + _812 + 32]
                v = v + 32
                continue 
            if ceil32(_815) > _815:
                mem[ceil32(_634) + ceil32(_440) + u + _815 + 640] = 0
            mem[u + 256] = mem[_427 + 287 len 1]
            mem[u + 288] = mem[_427 + 319 len 1]
            mem[u + 320] = mem[_427 + 320]
            mem[u + 352] = mem[_427 + 352]
            mem[u + 384] = mem[_427 + 384]
            mem[u + 416] = mem[_427 + 416]
            mem[u + 448] = mem[_427 + 448]
            mem[u + 480] = mem[_427 + 480]
            mem[u + 512] = bool(mem[_427 + 512])
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_815) + ceil32(_634) + ceil32(_440) + u + 640
            continue 
        mem[ceil32(_440) + u + _634 + 608] = 0
        _816 = mem[_427 + 224]
        mem[u + 224] = ceil32(_634) + ceil32(_440) + 608
        _822 = mem[_816]
        mem[ceil32(_634) + ceil32(_440) + u + 608] = mem[_816]
        v = 0
        while v < _822:
            mem[v + ceil32(_634) + ceil32(_440) + u + 640] = mem[v + _816 + 32]
            v = v + 32
            continue 
        if ceil32(_822) > _822:
            mem[ceil32(_634) + ceil32(_440) + u + _822 + 640] = 0
        mem[u + 256] = mem[_427 + 287 len 1]
        mem[u + 288] = mem[_427 + 319 len 1]
        mem[u + 320] = mem[_427 + 320]
        mem[u + 352] = mem[_427 + 352]
        mem[u + 384] = mem[_427 + 384]
        mem[u + 416] = mem[_427 + 416]
        mem[u + 448] = mem[_427 + 448]
        mem[u + 480] = mem[_427 + 480]
        mem[u + 512] = bool(mem[_427 + 512])
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_822) + ceil32(_634) + ceil32(_440) + u + 640
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
