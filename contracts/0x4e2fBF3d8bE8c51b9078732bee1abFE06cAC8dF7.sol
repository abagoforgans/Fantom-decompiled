contract main {




// =====================  Runtime code  =====================


#
#  - swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
#
const sub_d2201f97(?) = eth.balance(this.address)


address stor0;
address FACTORYAddress;
address ROUTERAddress;
address WETHAddress;

function FACTORY() {
    return FACTORYAddress
}

function ROUTER() {
    return ROUTERAddress
}

function WETH() {
    return WETHAddress
}

function sendEther() payable {
  stop
}

function _fallback() payable {
    revert
}

function transferEth(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not Owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function getbalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not Owner'
    if arg1 == WETHAddress:
        revert with 0, 'Do not use for WETH'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Insufficient Balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg4 < block.timestamp:
        revert with 0, 'PancakeRouter: EXPIRED'
    require 0 < arg2.length
    if address(cd[(arg2 + 36)]) != WETHAddress:
        revert with 0, 'PancakeRouter: INVALID_PATH'
    require ext_code.size(WETHAddress)
    call WETHAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require 0 < arg2.length
    require 1 < arg2.length
    if address(cd[(arg2 + 36)]) == address(cd[(arg2 + 68)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[199 len 29]
    if address(cd[(arg2 + 36)]) < address(cd[(arg2 + 68)]):
        if not address(cd[(arg2 + 36)]):
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[128] = address(cd[(arg2 + 36)])
        mem[148] = address(cd[(arg2 + 68)])
        mem[96] = 40
        mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[201] = FACTORYAddress
        mem[221] = sha3(address(cd[(arg2 + 36)]), address(cd[(arg2 + 68)]))
        mem[253] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
        mem[168] = 85
        mem[321] = msg.value
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(address(cd[(arg2 + 36)]), address(cd[(arg2 + 68)])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg2.length - 1 < arg2.length
        mem[289] = arg3
        require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
        staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = (32 * arg2.length) + 317
        mem[285] = arg2.length
        mem[317 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(32 * arg2.length) + 317] = 0
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[285]
            _3745 = mem[(32 * idx) + 317]
            require idx + 1 < mem[285]
            _3751 = mem[(32 * idx + 1) + 317]
            if mem[(32 * idx) + 329 len 20] == mem[(32 * idx + 1) + 329 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + 329 len 20] < mem[(32 * idx + 1) + 329 len 20]:
                if not mem[(32 * idx) + 329 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 329 len 20] == mem[(32 * idx + 1) + 329 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + 329 len 20] < mem[(32 * idx + 1) + 329 len 20]:
                    if not mem[(32 * idx) + 329 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3803 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 317])
                    mem[mem[64] + 52] = address(_3751)
                    _3804 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3806 = sha3(mem[_3804 + 32 len mem[_3804]])
                    mem[_3803 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3803 + 105] = FACTORYAddress
                    mem[_3803 + 125] = _3806
                    mem[_3803 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                    mem[_3803 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    mem[_3803 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3803 + 193] = address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    require ext_code.size(address(_3745))
                    staticcall address(_3745).0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    mem[_3803 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_3745) == address(_3745):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3803 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3803 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3803 + 295 len 26]
                        if 998 * Mask(144, 112, ext_call.return_data[0]) / 998 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3745):
                                if idx >= mem[285] - 2:
                                    mem[_3803 + 189] = 0
                                    mem[64] = _3803 + 221
                                    mem[_3803 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3803 + 225] = 0
                                    mem[_3803 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3803 + 289] = arg3
                                    mem[_3803 + 321] = 128
                                    mem[_3803 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3803 + s + 385] = mem[_3803 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4363 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3803 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(_3751)
                                        mem[_3803 + 241] = address(_4363)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(address(_3751), address(_4363))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0
                                        mem[_3803 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4363)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4363)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3803 + 241] = address(_3751)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(mem[_3803 + 221 len 20], address(_3751))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        _5178 = sha3(0, FACTORYAddress, sha3(mem[_3803 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0
                                        mem[_3803 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 478] = address(_5178)
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5178), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3803 + 189] = 0
                                    mem[64] = _3803 + 221
                                    mem[_3803 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3803 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3803 + 257] = 0
                                    mem[_3803 + 289] = arg3
                                    mem[_3803 + 321] = 128
                                    mem[_3803 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3803 + s + 385] = mem[_3803 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4364 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3803 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(_3751)
                                        mem[_3803 + 241] = address(_4364)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(address(_3751), address(_4364))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 446] = 0
                                        mem[_3803 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4364)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4364)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3803 + 241] = address(_3751)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(mem[_3803 + 221 len 20], address(_3751))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        _5194 = sha3(0, FACTORYAddress, sha3(mem[_3803 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 446] = 0
                                        mem[_3803 + 478] = address(_5194)
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5194), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 998 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3745):
                                if idx >= mem[285] - 2:
                                    mem[_3803 + 189] = 0
                                    mem[64] = _3803 + 221
                                    mem[_3803 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3803 + 225] = 0
                                    mem[_3803 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3803 + 289] = arg3
                                    mem[_3803 + 321] = 128
                                    mem[_3803 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3803 + s + 385] = mem[_3803 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4497 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3803 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(_3751)
                                        mem[_3803 + 241] = address(_4497)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(address(_3751), address(_4497))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0
                                        mem[_3803 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4497)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4497)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3803 + 241] = address(_3751)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(mem[_3803 + 221 len 20], address(_3751))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        _5914 = sha3(0, FACTORYAddress, sha3(mem[_3803 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0
                                        mem[_3803 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 478] = address(_5914)
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5914), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3803 + 189] = 0
                                    mem[64] = _3803 + 221
                                    mem[_3803 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3803 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3803 + 257] = 0
                                    mem[_3803 + 289] = arg3
                                    mem[_3803 + 321] = 128
                                    mem[_3803 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3803 + s + 385] = mem[_3803 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4498 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3803 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(_3751)
                                        mem[_3803 + 241] = address(_4498)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(address(_3751), address(_4498))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 446] = 0
                                        mem[_3803 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4498)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4498)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3803 + 241] = address(_3751)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(mem[_3803 + 221 len 20], address(_3751))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        _5930 = sha3(0, FACTORYAddress, sha3(mem[_3803 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 446] = 0
                                        mem[_3803 + 478] = address(_5930)
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5930), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3803 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3803 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3803 + 295 len 26]
                        if (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])) / 998 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3745):
                                if idx >= mem[285] - 2:
                                    mem[_3803 + 189] = 0
                                    mem[64] = _3803 + 221
                                    mem[_3803 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3803 + 225] = 0
                                    mem[_3803 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3803 + 289] = arg3
                                    mem[_3803 + 321] = 128
                                    mem[_3803 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3803 + s + 385] = mem[_3803 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4367 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3803 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(_3751)
                                        mem[_3803 + 241] = address(_4367)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(address(_3751), address(_4367))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0
                                        mem[_3803 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4367)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4367)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3803 + 241] = address(_3751)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(mem[_3803 + 221 len 20], address(_3751))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        _5214 = sha3(0, FACTORYAddress, sha3(mem[_3803 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0
                                        mem[_3803 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 478] = address(_5214)
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5214), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3803 + 189] = 0
                                    mem[64] = _3803 + 221
                                    mem[_3803 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3803 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3803 + 257] = 0
                                    mem[_3803 + 289] = arg3
                                    mem[_3803 + 321] = 128
                                    mem[_3803 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3803 + s + 385] = mem[_3803 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4368 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3803 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(_3751)
                                        mem[_3803 + 241] = address(_4368)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(address(_3751), address(_4368))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 446] = 0
                                        mem[_3803 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4368)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4368)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3803 + 241] = address(_3751)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(mem[_3803 + 221 len 20], address(_3751))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        _5230 = sha3(0, FACTORYAddress, sha3(mem[_3803 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 446] = 0
                                        mem[_3803 + 478] = address(_5230)
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5230), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3745):
                                if idx >= mem[285] - 2:
                                    mem[_3803 + 189] = 0
                                    mem[64] = _3803 + 221
                                    mem[_3803 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3803 + 225] = 0
                                    mem[_3803 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3803 + 289] = arg3
                                    mem[_3803 + 321] = 128
                                    mem[_3803 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3803 + s + 385] = mem[_3803 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4505 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3803 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(_3751)
                                        mem[_3803 + 241] = address(_4505)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(address(_3751), address(_4505))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0
                                        mem[_3803 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4505)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4505)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3803 + 241] = address(_3751)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(mem[_3803 + 221 len 20], address(_3751))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        _5946 = sha3(0, FACTORYAddress, sha3(mem[_3803 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = 0
                                        mem[_3803 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 478] = address(_5946)
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5946), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3803 + 189] = 0
                                    mem[64] = _3803 + 221
                                    mem[_3803 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3803 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3803 + 257] = 0
                                    mem[_3803 + 289] = arg3
                                    mem[_3803 + 321] = 128
                                    mem[_3803 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3803 + s + 385] = mem[_3803 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4506 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3803 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(_3751)
                                        mem[_3803 + 241] = address(_4506)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(address(_3751), address(_4506))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 446] = 0
                                        mem[_3803 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4506)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4506)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3803 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3803 + 241] = address(_3751)
                                        mem[_3803 + 189] = 40
                                        mem[_3803 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 294] = FACTORYAddress
                                        mem[_3803 + 314] = sha3(mem[_3803 + 221 len 20], address(_3751))
                                        mem[_3803 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3803 + 261] = 85
                                        _5962 = sha3(0, FACTORYAddress, sha3(mem[_3803 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3803 + 378] = 0
                                        mem[64] = _3803 + 410
                                        mem[_3803 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3803 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3803 + 446] = 0
                                        mem[_3803 + 478] = address(_5962)
                                        mem[_3803 + 510] = 128
                                        mem[_3803 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3803 + s + 574] = mem[_3803 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3806, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5962), 128, 0
                else:
                    if not mem[(32 * idx + 1) + 329 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3811 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 317])
                    mem[mem[64] + 52] = address(_3745)
                    _3812 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3814 = sha3(mem[_3812 + 32 len mem[_3812]])
                    mem[_3811 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3811 + 105] = FACTORYAddress
                    mem[_3811 + 125] = _3814
                    mem[_3811 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                    mem[_3811 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    mem[_3811 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3811 + 193] = address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    require ext_code.size(address(_3745))
                    staticcall address(_3745).0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    mem[_3811 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_3745) == address(_3745):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3811 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3811 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3811 + 295 len 26]
                        if 998 * Mask(144, 112, ext_call.return_data[0]) / 998 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3745):
                                if idx >= mem[285] - 2:
                                    mem[_3811 + 189] = 0
                                    mem[64] = _3811 + 221
                                    mem[_3811 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3811 + 225] = 0
                                    mem[_3811 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3811 + 289] = arg3
                                    mem[_3811 + 321] = 128
                                    mem[_3811 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3811 + s + 385] = mem[_3811 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4371 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3811 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(_3751)
                                        mem[_3811 + 241] = address(_4371)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(address(_3751), address(_4371))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0
                                        mem[_3811 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4371)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4371)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3811 + 241] = address(_3751)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(mem[_3811 + 221 len 20], address(_3751))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        _5250 = sha3(0, FACTORYAddress, sha3(mem[_3811 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0
                                        mem[_3811 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 478] = address(_5250)
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5250), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3811 + 189] = 0
                                    mem[64] = _3811 + 221
                                    mem[_3811 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3811 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3811 + 257] = 0
                                    mem[_3811 + 289] = arg3
                                    mem[_3811 + 321] = 128
                                    mem[_3811 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3811 + s + 385] = mem[_3811 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4372 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3811 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(_3751)
                                        mem[_3811 + 241] = address(_4372)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(address(_3751), address(_4372))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 446] = 0
                                        mem[_3811 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4372)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4372)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3811 + 241] = address(_3751)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(mem[_3811 + 221 len 20], address(_3751))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        _5266 = sha3(0, FACTORYAddress, sha3(mem[_3811 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 446] = 0
                                        mem[_3811 + 478] = address(_5266)
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5266), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 998 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3745):
                                if idx >= mem[285] - 2:
                                    mem[_3811 + 189] = 0
                                    mem[64] = _3811 + 221
                                    mem[_3811 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3811 + 225] = 0
                                    mem[_3811 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3811 + 289] = arg3
                                    mem[_3811 + 321] = 128
                                    mem[_3811 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3811 + s + 385] = mem[_3811 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4513 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3811 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(_3751)
                                        mem[_3811 + 241] = address(_4513)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(address(_3751), address(_4513))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0
                                        mem[_3811 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4513)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4513)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3811 + 241] = address(_3751)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(mem[_3811 + 221 len 20], address(_3751))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        _5978 = sha3(0, FACTORYAddress, sha3(mem[_3811 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0
                                        mem[_3811 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 478] = address(_5978)
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5978), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3811 + 189] = 0
                                    mem[64] = _3811 + 221
                                    mem[_3811 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3811 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3811 + 257] = 0
                                    mem[_3811 + 289] = arg3
                                    mem[_3811 + 321] = 128
                                    mem[_3811 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3811 + s + 385] = mem[_3811 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4514 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3811 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(_3751)
                                        mem[_3811 + 241] = address(_4514)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(address(_3751), address(_4514))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 446] = 0
                                        mem[_3811 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4514)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4514)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3811 + 241] = address(_3751)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(mem[_3811 + 221 len 20], address(_3751))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        _5994 = sha3(0, FACTORYAddress, sha3(mem[_3811 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 446] = 0
                                        mem[_3811 + 478] = address(_5994)
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5994), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3811 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3811 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3811 + 295 len 26]
                        if (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])) / 998 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3745):
                                if idx >= mem[285] - 2:
                                    mem[_3811 + 189] = 0
                                    mem[64] = _3811 + 221
                                    mem[_3811 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3811 + 225] = 0
                                    mem[_3811 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3811 + 289] = arg3
                                    mem[_3811 + 321] = 128
                                    mem[_3811 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3811 + s + 385] = mem[_3811 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4375 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3811 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(_3751)
                                        mem[_3811 + 241] = address(_4375)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(address(_3751), address(_4375))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0
                                        mem[_3811 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4375)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4375)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3811 + 241] = address(_3751)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(mem[_3811 + 221 len 20], address(_3751))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        _5286 = sha3(0, FACTORYAddress, sha3(mem[_3811 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0
                                        mem[_3811 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 478] = address(_5286)
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5286), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3811 + 189] = 0
                                    mem[64] = _3811 + 221
                                    mem[_3811 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3811 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3811 + 257] = 0
                                    mem[_3811 + 289] = arg3
                                    mem[_3811 + 321] = 128
                                    mem[_3811 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3811 + s + 385] = mem[_3811 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4376 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3811 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(_3751)
                                        mem[_3811 + 241] = address(_4376)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(address(_3751), address(_4376))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 446] = 0
                                        mem[_3811 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4376)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4376)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3811 + 241] = address(_3751)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(mem[_3811 + 221 len 20], address(_3751))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        _5302 = sha3(0, FACTORYAddress, sha3(mem[_3811 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 446] = 0
                                        mem[_3811 + 478] = address(_5302)
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5302), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3745):
                                if idx >= mem[285] - 2:
                                    mem[_3811 + 189] = 0
                                    mem[64] = _3811 + 221
                                    mem[_3811 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3811 + 225] = 0
                                    mem[_3811 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3811 + 289] = arg3
                                    mem[_3811 + 321] = 128
                                    mem[_3811 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3811 + s + 385] = mem[_3811 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4521 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3811 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(_3751)
                                        mem[_3811 + 241] = address(_4521)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(address(_3751), address(_4521))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0
                                        mem[_3811 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4521)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4521)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3811 + 241] = address(_3751)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(mem[_3811 + 221 len 20], address(_3751))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        _6010 = sha3(0, FACTORYAddress, sha3(mem[_3811 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = 0
                                        mem[_3811 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 478] = address(_6010)
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_6010), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3811 + 189] = 0
                                    mem[64] = _3811 + 221
                                    mem[_3811 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3811 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3811 + 257] = 0
                                    mem[_3811 + 289] = arg3
                                    mem[_3811 + 321] = 128
                                    mem[_3811 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3811 + s + 385] = mem[_3811 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4522 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3811 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(_3751)
                                        mem[_3811 + 241] = address(_4522)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(address(_3751), address(_4522))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 446] = 0
                                        mem[_3811 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4522)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4522)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3811 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3811 + 241] = address(_3751)
                                        mem[_3811 + 189] = 40
                                        mem[_3811 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 294] = FACTORYAddress
                                        mem[_3811 + 314] = sha3(mem[_3811 + 221 len 20], address(_3751))
                                        mem[_3811 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3811 + 261] = 85
                                        _6026 = sha3(0, FACTORYAddress, sha3(mem[_3811 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3811 + 378] = 0
                                        mem[64] = _3811 + 410
                                        mem[_3811 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3811 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3811 + 446] = 0
                                        mem[_3811 + 478] = address(_6026)
                                        mem[_3811 + 510] = 128
                                        mem[_3811 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3811 + s + 574] = mem[_3811 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3814, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_6026), 128, 0
            else:
                if not mem[(32 * idx + 1) + 329 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 329 len 20] == mem[(32 * idx + 1) + 329 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + 329 len 20] < mem[(32 * idx + 1) + 329 len 20]:
                    if not mem[(32 * idx) + 329 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3819 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 317])
                    mem[mem[64] + 52] = address(_3751)
                    _3820 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3822 = sha3(mem[_3820 + 32 len mem[_3820]])
                    mem[_3819 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3819 + 105] = FACTORYAddress
                    mem[_3819 + 125] = _3822
                    mem[_3819 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                    mem[_3819 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    mem[_3819 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3819 + 193] = address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    require ext_code.size(address(_3745))
                    staticcall address(_3745).0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    mem[_3819 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_3745) == address(_3751):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3819 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3819 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3819 + 295 len 26]
                        if 998 * Mask(144, 112, ext_call.return_data[0]) / 998 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3751):
                                if idx >= mem[285] - 2:
                                    mem[_3819 + 189] = 0
                                    mem[64] = _3819 + 221
                                    mem[_3819 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3819 + 225] = 0
                                    mem[_3819 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3819 + 289] = arg3
                                    mem[_3819 + 321] = 128
                                    mem[_3819 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3819 + s + 385] = mem[_3819 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4379 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3819 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(_3751)
                                        mem[_3819 + 241] = address(_4379)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(address(_3751), address(_4379))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0
                                        mem[_3819 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4379)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4379)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3819 + 241] = address(_3751)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(mem[_3819 + 221 len 20], address(_3751))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        _5322 = sha3(0, FACTORYAddress, sha3(mem[_3819 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0
                                        mem[_3819 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 478] = address(_5322)
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5322), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3819 + 189] = 0
                                    mem[64] = _3819 + 221
                                    mem[_3819 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3819 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3819 + 257] = 0
                                    mem[_3819 + 289] = arg3
                                    mem[_3819 + 321] = 128
                                    mem[_3819 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3819 + s + 385] = mem[_3819 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4380 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3819 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(_3751)
                                        mem[_3819 + 241] = address(_4380)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(address(_3751), address(_4380))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 446] = 0
                                        mem[_3819 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4380)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4380)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3819 + 241] = address(_3751)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(mem[_3819 + 221 len 20], address(_3751))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        _5338 = sha3(0, FACTORYAddress, sha3(mem[_3819 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 446] = 0
                                        mem[_3819 + 478] = address(_5338)
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5338), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 998 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3751):
                                if idx >= mem[285] - 2:
                                    mem[_3819 + 189] = 0
                                    mem[64] = _3819 + 221
                                    mem[_3819 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3819 + 225] = 0
                                    mem[_3819 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3819 + 289] = arg3
                                    mem[_3819 + 321] = 128
                                    mem[_3819 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3819 + s + 385] = mem[_3819 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4529 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3819 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(_3751)
                                        mem[_3819 + 241] = address(_4529)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(address(_3751), address(_4529))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0
                                        mem[_3819 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4529)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4529)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3819 + 241] = address(_3751)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(mem[_3819 + 221 len 20], address(_3751))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        _6042 = sha3(0, FACTORYAddress, sha3(mem[_3819 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0
                                        mem[_3819 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 478] = address(_6042)
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_6042), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3819 + 189] = 0
                                    mem[64] = _3819 + 221
                                    mem[_3819 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3819 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3819 + 257] = 0
                                    mem[_3819 + 289] = arg3
                                    mem[_3819 + 321] = 128
                                    mem[_3819 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3819 + s + 385] = mem[_3819 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4530 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3819 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(_3751)
                                        mem[_3819 + 241] = address(_4530)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(address(_3751), address(_4530))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 446] = 0
                                        mem[_3819 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4530)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4530)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3819 + 241] = address(_3751)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(mem[_3819 + 221 len 20], address(_3751))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        _6058 = sha3(0, FACTORYAddress, sha3(mem[_3819 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 446] = 0
                                        mem[_3819 + 478] = address(_6058)
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_6058), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3819 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3819 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3819 + 295 len 26]
                        if (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])) / 998 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3751):
                                if idx >= mem[285] - 2:
                                    mem[_3819 + 189] = 0
                                    mem[64] = _3819 + 221
                                    mem[_3819 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3819 + 225] = 0
                                    mem[_3819 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3819 + 289] = arg3
                                    mem[_3819 + 321] = 128
                                    mem[_3819 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3819 + s + 385] = mem[_3819 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4383 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3819 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(_3751)
                                        mem[_3819 + 241] = address(_4383)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(address(_3751), address(_4383))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0
                                        mem[_3819 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4383)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4383)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3819 + 241] = address(_3751)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(mem[_3819 + 221 len 20], address(_3751))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        _5358 = sha3(0, FACTORYAddress, sha3(mem[_3819 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0
                                        mem[_3819 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 478] = address(_5358)
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5358), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3819 + 189] = 0
                                    mem[64] = _3819 + 221
                                    mem[_3819 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3819 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3819 + 257] = 0
                                    mem[_3819 + 289] = arg3
                                    mem[_3819 + 321] = 128
                                    mem[_3819 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3819 + s + 385] = mem[_3819 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4384 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3819 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(_3751)
                                        mem[_3819 + 241] = address(_4384)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(address(_3751), address(_4384))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 446] = 0
                                        mem[_3819 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4384)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4384)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3819 + 241] = address(_3751)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(mem[_3819 + 221 len 20], address(_3751))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        _5374 = sha3(0, FACTORYAddress, sha3(mem[_3819 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 446] = 0
                                        mem[_3819 + 478] = address(_5374)
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5374), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3751):
                                if idx >= mem[285] - 2:
                                    mem[_3819 + 189] = 0
                                    mem[64] = _3819 + 221
                                    mem[_3819 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3819 + 225] = 0
                                    mem[_3819 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3819 + 289] = arg3
                                    mem[_3819 + 321] = 128
                                    mem[_3819 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3819 + s + 385] = mem[_3819 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4537 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3819 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(_3751)
                                        mem[_3819 + 241] = address(_4537)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(address(_3751), address(_4537))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0
                                        mem[_3819 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4537)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4537)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3819 + 241] = address(_3751)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(mem[_3819 + 221 len 20], address(_3751))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        _6074 = sha3(0, FACTORYAddress, sha3(mem[_3819 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = 0
                                        mem[_3819 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 478] = address(_6074)
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_6074), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3819 + 189] = 0
                                    mem[64] = _3819 + 221
                                    mem[_3819 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3819 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3819 + 257] = 0
                                    mem[_3819 + 289] = arg3
                                    mem[_3819 + 321] = 128
                                    mem[_3819 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3819 + s + 385] = mem[_3819 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4538 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3819 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(_3751)
                                        mem[_3819 + 241] = address(_4538)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(address(_3751), address(_4538))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 446] = 0
                                        mem[_3819 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4538)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4538)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3819 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3819 + 241] = address(_3751)
                                        mem[_3819 + 189] = 40
                                        mem[_3819 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 294] = FACTORYAddress
                                        mem[_3819 + 314] = sha3(mem[_3819 + 221 len 20], address(_3751))
                                        mem[_3819 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3819 + 261] = 85
                                        _6090 = sha3(0, FACTORYAddress, sha3(mem[_3819 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3819 + 378] = 0
                                        mem[64] = _3819 + 410
                                        mem[_3819 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3819 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3819 + 446] = 0
                                        mem[_3819 + 478] = address(_6090)
                                        mem[_3819 + 510] = 128
                                        mem[_3819 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3819 + s + 574] = mem[_3819 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3822, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_6090), 128, 0
                else:
                    if not mem[(32 * idx + 1) + 329 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3827 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 317])
                    mem[mem[64] + 52] = address(_3745)
                    _3828 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3830 = sha3(mem[_3828 + 32 len mem[_3828]])
                    mem[_3827 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3827 + 105] = FACTORYAddress
                    mem[_3827 + 125] = _3830
                    mem[_3827 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                    mem[_3827 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    mem[_3827 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3827 + 193] = address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    require ext_code.size(address(_3745))
                    staticcall address(_3745).0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    mem[_3827 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_3745) == address(_3751):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3827 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3827 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3827 + 295 len 26]
                        if 998 * Mask(144, 112, ext_call.return_data[0]) / 998 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3751):
                                if idx >= mem[285] - 2:
                                    mem[_3827 + 189] = 0
                                    mem[64] = _3827 + 221
                                    mem[_3827 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3827 + 225] = 0
                                    mem[_3827 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3827 + 289] = arg3
                                    mem[_3827 + 321] = 128
                                    mem[_3827 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3827 + s + 385] = mem[_3827 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4387 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3827 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(_3751)
                                        mem[_3827 + 241] = address(_4387)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(address(_3751), address(_4387))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0
                                        mem[_3827 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4387)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4387)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3827 + 241] = address(_3751)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(mem[_3827 + 221 len 20], address(_3751))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        _5394 = sha3(0, FACTORYAddress, sha3(mem[_3827 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0
                                        mem[_3827 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 478] = address(_5394)
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5394), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3827 + 189] = 0
                                    mem[64] = _3827 + 221
                                    mem[_3827 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3827 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3827 + 257] = 0
                                    mem[_3827 + 289] = arg3
                                    mem[_3827 + 321] = 128
                                    mem[_3827 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3827 + s + 385] = mem[_3827 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4388 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3827 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(_3751)
                                        mem[_3827 + 241] = address(_4388)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(address(_3751), address(_4388))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 446] = 0
                                        mem[_3827 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4388)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4388)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3827 + 241] = address(_3751)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(mem[_3827 + 221 len 20], address(_3751))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        _5410 = sha3(0, FACTORYAddress, sha3(mem[_3827 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 446] = 0
                                        mem[_3827 + 478] = address(_5410)
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5410), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 998 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3751):
                                if idx >= mem[285] - 2:
                                    mem[_3827 + 189] = 0
                                    mem[64] = _3827 + 221
                                    mem[_3827 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3827 + 225] = 0
                                    mem[_3827 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3827 + 289] = arg3
                                    mem[_3827 + 321] = 128
                                    mem[_3827 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3827 + s + 385] = mem[_3827 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4545 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3827 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(_3751)
                                        mem[_3827 + 241] = address(_4545)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(address(_3751), address(_4545))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0
                                        mem[_3827 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4545)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4545)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3827 + 241] = address(_3751)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(mem[_3827 + 221 len 20], address(_3751))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        _6106 = sha3(0, FACTORYAddress, sha3(mem[_3827 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0
                                        mem[_3827 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 478] = address(_6106)
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_6106), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3827 + 189] = 0
                                    mem[64] = _3827 + 221
                                    mem[_3827 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3827 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3827 + 257] = 0
                                    mem[_3827 + 289] = arg3
                                    mem[_3827 + 321] = 128
                                    mem[_3827 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3827 + s + 385] = mem[_3827 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4546 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3827 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(_3751)
                                        mem[_3827 + 241] = address(_4546)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(address(_3751), address(_4546))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 446] = 0
                                        mem[_3827 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4546)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4546)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3827 + 241] = address(_3751)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(mem[_3827 + 221 len 20], address(_3751))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        _6122 = sha3(0, FACTORYAddress, sha3(mem[_3827 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 446] = 0
                                        mem[_3827 + 478] = address(_6122)
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_6122), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3827 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3827 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3827 + 295 len 26]
                        if (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])) / 998 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3751):
                                if idx >= mem[285] - 2:
                                    mem[_3827 + 189] = 0
                                    mem[64] = _3827 + 221
                                    mem[_3827 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3827 + 225] = 0
                                    mem[_3827 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3827 + 289] = arg3
                                    mem[_3827 + 321] = 128
                                    mem[_3827 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3827 + s + 385] = mem[_3827 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4391 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3827 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(_3751)
                                        mem[_3827 + 241] = address(_4391)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(address(_3751), address(_4391))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0
                                        mem[_3827 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4391)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4391)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3827 + 241] = address(_3751)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(mem[_3827 + 221 len 20], address(_3751))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        _5430 = sha3(0, FACTORYAddress, sha3(mem[_3827 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0
                                        mem[_3827 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 478] = address(_5430)
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5430), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3827 + 189] = 0
                                    mem[64] = _3827 + 221
                                    mem[_3827 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3827 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3827 + 257] = 0
                                    mem[_3827 + 289] = arg3
                                    mem[_3827 + 321] = 128
                                    mem[_3827 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3827 + s + 385] = mem[_3827 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4392 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3827 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(_3751)
                                        mem[_3827 + 241] = address(_4392)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(address(_3751), address(_4392))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 446] = 0
                                        mem[_3827 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4392)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4392)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3827 + 241] = address(_3751)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(mem[_3827 + 221 len 20], address(_3751))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        _5446 = sha3(0, FACTORYAddress, sha3(mem[_3827 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 446] = 0
                                        mem[_3827 + 478] = address(_5446)
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5446), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3745) == address(_3751):
                                if idx >= mem[285] - 2:
                                    mem[_3827 + 189] = 0
                                    mem[64] = _3827 + 221
                                    mem[_3827 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3827 + 225] = 0
                                    mem[_3827 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3827 + 289] = arg3
                                    mem[_3827 + 321] = 128
                                    mem[_3827 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3827 + s + 385] = mem[_3827 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4553 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3827 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(_3751)
                                        mem[_3827 + 241] = address(_4553)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(address(_3751), address(_4553))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0
                                        mem[_3827 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4553)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4553)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3827 + 241] = address(_3751)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(mem[_3827 + 221 len 20], address(_3751))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        _6138 = sha3(0, FACTORYAddress, sha3(mem[_3827 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = 0
                                        mem[_3827 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 478] = address(_6138)
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_6138), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3827 + 189] = 0
                                    mem[64] = _3827 + 221
                                    mem[_3827 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3827 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3827 + 257] = 0
                                    mem[_3827 + 289] = arg3
                                    mem[_3827 + 321] = 128
                                    mem[_3827 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3827 + s + 385] = mem[_3827 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4554 = mem[(32 * idx + 2) + 317]
                                    if address(_3751) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3827 + 292 len 29]
                                    if address(_3751) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3751):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(_3751)
                                        mem[_3827 + 241] = address(_4554)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(address(_3751), address(_4554))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 446] = 0
                                        mem[_3827 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4554)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3751), address(_4554)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3827 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3827 + 241] = address(_3751)
                                        mem[_3827 + 189] = 40
                                        mem[_3827 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 294] = FACTORYAddress
                                        mem[_3827 + 314] = sha3(mem[_3827 + 221 len 20], address(_3751))
                                        mem[_3827 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3827 + 261] = 85
                                        _6154 = sha3(0, FACTORYAddress, sha3(mem[_3827 + 221 len 20], address(_3751)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3827 + 378] = 0
                                        mem[64] = _3827 + 410
                                        mem[_3827 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3827 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3827 + 446] = 0
                                        mem[_3827 + 478] = address(_6154)
                                        mem[_3827 + 510] = 128
                                        mem[_3827 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3827 + s + 574] = mem[_3827 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3830, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_6154), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if not address(cd[(arg2 + 68)]):
            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
        mem[128] = address(cd[(arg2 + 68)])
        mem[148] = address(cd[(arg2 + 36)])
        mem[96] = 40
        mem[200] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[201] = FACTORYAddress
        mem[221] = sha3(address(cd[(arg2 + 68)]), address(cd[(arg2 + 36)]))
        mem[253] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
        mem[168] = 85
        mem[321] = msg.value
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(sha3(0, FACTORYAddress, sha3(address(cd[(arg2 + 68)]), address(cd[(arg2 + 36)])), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg2.length - 1 < arg2.length
        mem[289] = arg3
        require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
        staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[64] = (32 * arg2.length) + 317
        mem[285] = arg2.length
        mem[317 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(32 * arg2.length) + 317] = 0
        idx = 0
        while idx < arg2.length - 1:
            require idx < mem[285]
            _3747 = mem[(32 * idx) + 317]
            require idx + 1 < mem[285]
            _3754 = mem[(32 * idx + 1) + 317]
            if mem[(32 * idx) + 329 len 20] == mem[(32 * idx + 1) + 329 len 20]:
                revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + 329 len 20] < mem[(32 * idx + 1) + 329 len 20]:
                if not mem[(32 * idx) + 329 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 329 len 20] == mem[(32 * idx + 1) + 329 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + 329 len 20] < mem[(32 * idx + 1) + 329 len 20]:
                    if not mem[(32 * idx) + 329 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3835 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 317])
                    mem[mem[64] + 52] = address(_3754)
                    _3836 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3838 = sha3(mem[_3836 + 32 len mem[_3836]])
                    mem[_3835 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3835 + 105] = FACTORYAddress
                    mem[_3835 + 125] = _3838
                    mem[_3835 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                    mem[_3835 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    mem[_3835 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3835 + 193] = address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    require ext_code.size(address(_3747))
                    staticcall address(_3747).0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    mem[_3835 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_3747) == address(_3747):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3835 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3835 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3835 + 295 len 26]
                        if 998 * Mask(144, 112, ext_call.return_data[0]) / 998 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3747):
                                if idx >= mem[285] - 2:
                                    mem[_3835 + 189] = 0
                                    mem[64] = _3835 + 221
                                    mem[_3835 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3835 + 225] = 0
                                    mem[_3835 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3835 + 289] = arg3
                                    mem[_3835 + 321] = 128
                                    mem[_3835 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3835 + s + 385] = mem[_3835 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4395 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3835 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(_3754)
                                        mem[_3835 + 241] = address(_4395)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(address(_3754), address(_4395))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0
                                        mem[_3835 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4395)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4395)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3835 + 241] = address(_3754)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(mem[_3835 + 221 len 20], address(_3754))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        _5466 = sha3(0, FACTORYAddress, sha3(mem[_3835 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0
                                        mem[_3835 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 478] = address(_5466)
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5466), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3835 + 189] = 0
                                    mem[64] = _3835 + 221
                                    mem[_3835 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3835 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3835 + 257] = 0
                                    mem[_3835 + 289] = arg3
                                    mem[_3835 + 321] = 128
                                    mem[_3835 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3835 + s + 385] = mem[_3835 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4396 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3835 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(_3754)
                                        mem[_3835 + 241] = address(_4396)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(address(_3754), address(_4396))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 446] = 0
                                        mem[_3835 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4396)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4396)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3835 + 241] = address(_3754)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(mem[_3835 + 221 len 20], address(_3754))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        _5482 = sha3(0, FACTORYAddress, sha3(mem[_3835 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 446] = 0
                                        mem[_3835 + 478] = address(_5482)
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5482), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 998 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3747):
                                if idx >= mem[285] - 2:
                                    mem[_3835 + 189] = 0
                                    mem[64] = _3835 + 221
                                    mem[_3835 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3835 + 225] = 0
                                    mem[_3835 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3835 + 289] = arg3
                                    mem[_3835 + 321] = 128
                                    mem[_3835 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3835 + s + 385] = mem[_3835 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4561 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3835 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(_3754)
                                        mem[_3835 + 241] = address(_4561)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(address(_3754), address(_4561))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0
                                        mem[_3835 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4561)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4561)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3835 + 241] = address(_3754)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(mem[_3835 + 221 len 20], address(_3754))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        _6170 = sha3(0, FACTORYAddress, sha3(mem[_3835 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0
                                        mem[_3835 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 478] = address(_6170)
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_6170), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3835 + 189] = 0
                                    mem[64] = _3835 + 221
                                    mem[_3835 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3835 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3835 + 257] = 0
                                    mem[_3835 + 289] = arg3
                                    mem[_3835 + 321] = 128
                                    mem[_3835 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3835 + s + 385] = mem[_3835 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4562 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3835 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(_3754)
                                        mem[_3835 + 241] = address(_4562)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(address(_3754), address(_4562))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 446] = 0
                                        mem[_3835 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4562)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4562)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3835 + 241] = address(_3754)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(mem[_3835 + 221 len 20], address(_3754))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        _6186 = sha3(0, FACTORYAddress, sha3(mem[_3835 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 446] = 0
                                        mem[_3835 + 478] = address(_6186)
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_6186), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3835 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3835 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3835 + 295 len 26]
                        if (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])) / 998 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3747):
                                if idx >= mem[285] - 2:
                                    mem[_3835 + 189] = 0
                                    mem[64] = _3835 + 221
                                    mem[_3835 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3835 + 225] = 0
                                    mem[_3835 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3835 + 289] = arg3
                                    mem[_3835 + 321] = 128
                                    mem[_3835 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3835 + s + 385] = mem[_3835 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4399 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3835 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(_3754)
                                        mem[_3835 + 241] = address(_4399)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(address(_3754), address(_4399))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0
                                        mem[_3835 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4399)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4399)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3835 + 241] = address(_3754)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(mem[_3835 + 221 len 20], address(_3754))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        _5502 = sha3(0, FACTORYAddress, sha3(mem[_3835 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0
                                        mem[_3835 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 478] = address(_5502)
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5502), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3835 + 189] = 0
                                    mem[64] = _3835 + 221
                                    mem[_3835 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3835 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3835 + 257] = 0
                                    mem[_3835 + 289] = arg3
                                    mem[_3835 + 321] = 128
                                    mem[_3835 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3835 + s + 385] = mem[_3835 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4400 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3835 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(_3754)
                                        mem[_3835 + 241] = address(_4400)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(address(_3754), address(_4400))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 446] = 0
                                        mem[_3835 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4400)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4400)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3835 + 241] = address(_3754)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(mem[_3835 + 221 len 20], address(_3754))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        _5518 = sha3(0, FACTORYAddress, sha3(mem[_3835 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 446] = 0
                                        mem[_3835 + 478] = address(_5518)
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5518), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3747):
                                if idx >= mem[285] - 2:
                                    mem[_3835 + 189] = 0
                                    mem[64] = _3835 + 221
                                    mem[_3835 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3835 + 225] = 0
                                    mem[_3835 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3835 + 289] = arg3
                                    mem[_3835 + 321] = 128
                                    mem[_3835 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3835 + s + 385] = mem[_3835 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4569 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3835 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(_3754)
                                        mem[_3835 + 241] = address(_4569)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(address(_3754), address(_4569))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0
                                        mem[_3835 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4569)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4569)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3835 + 241] = address(_3754)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(mem[_3835 + 221 len 20], address(_3754))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        _6202 = sha3(0, FACTORYAddress, sha3(mem[_3835 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = 0
                                        mem[_3835 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 478] = address(_6202)
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_6202), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3835 + 189] = 0
                                    mem[64] = _3835 + 221
                                    mem[_3835 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3835 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3835 + 257] = 0
                                    mem[_3835 + 289] = arg3
                                    mem[_3835 + 321] = 128
                                    mem[_3835 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3835 + s + 385] = mem[_3835 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4570 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3835 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(_3754)
                                        mem[_3835 + 241] = address(_4570)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(address(_3754), address(_4570))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 446] = 0
                                        mem[_3835 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4570)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4570)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3835 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3835 + 241] = address(_3754)
                                        mem[_3835 + 189] = 40
                                        mem[_3835 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 294] = FACTORYAddress
                                        mem[_3835 + 314] = sha3(mem[_3835 + 221 len 20], address(_3754))
                                        mem[_3835 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3835 + 261] = 85
                                        _6218 = sha3(0, FACTORYAddress, sha3(mem[_3835 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3835 + 378] = 0
                                        mem[64] = _3835 + 410
                                        mem[_3835 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3835 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3835 + 446] = 0
                                        mem[_3835 + 478] = address(_6218)
                                        mem[_3835 + 510] = 128
                                        mem[_3835 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3835 + s + 574] = mem[_3835 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3838, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_6218), 128, 0
                else:
                    if not mem[(32 * idx + 1) + 329 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3843 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 317])
                    mem[mem[64] + 52] = address(_3747)
                    _3844 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3846 = sha3(mem[_3844 + 32 len mem[_3844]])
                    mem[_3843 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3843 + 105] = FACTORYAddress
                    mem[_3843 + 125] = _3846
                    mem[_3843 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                    mem[_3843 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    mem[_3843 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3843 + 193] = address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    require ext_code.size(address(_3747))
                    staticcall address(_3747).0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    mem[_3843 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_3747) == address(_3747):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3843 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3843 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3843 + 295 len 26]
                        if 998 * Mask(144, 112, ext_call.return_data[0]) / 998 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3747):
                                if idx >= mem[285] - 2:
                                    mem[_3843 + 189] = 0
                                    mem[64] = _3843 + 221
                                    mem[_3843 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3843 + 225] = 0
                                    mem[_3843 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3843 + 289] = arg3
                                    mem[_3843 + 321] = 128
                                    mem[_3843 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3843 + s + 385] = mem[_3843 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4403 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3843 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(_3754)
                                        mem[_3843 + 241] = address(_4403)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(address(_3754), address(_4403))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0
                                        mem[_3843 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4403)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4403)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3843 + 241] = address(_3754)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(mem[_3843 + 221 len 20], address(_3754))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        _5538 = sha3(0, FACTORYAddress, sha3(mem[_3843 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0
                                        mem[_3843 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 478] = address(_5538)
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5538), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3843 + 189] = 0
                                    mem[64] = _3843 + 221
                                    mem[_3843 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3843 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3843 + 257] = 0
                                    mem[_3843 + 289] = arg3
                                    mem[_3843 + 321] = 128
                                    mem[_3843 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3843 + s + 385] = mem[_3843 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4404 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3843 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(_3754)
                                        mem[_3843 + 241] = address(_4404)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(address(_3754), address(_4404))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 446] = 0
                                        mem[_3843 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4404)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4404)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3843 + 241] = address(_3754)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(mem[_3843 + 221 len 20], address(_3754))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        _5554 = sha3(0, FACTORYAddress, sha3(mem[_3843 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 446] = 0
                                        mem[_3843 + 478] = address(_5554)
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5554), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 998 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3747):
                                if idx >= mem[285] - 2:
                                    mem[_3843 + 189] = 0
                                    mem[64] = _3843 + 221
                                    mem[_3843 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3843 + 225] = 0
                                    mem[_3843 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3843 + 289] = arg3
                                    mem[_3843 + 321] = 128
                                    mem[_3843 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3843 + s + 385] = mem[_3843 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4577 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3843 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(_3754)
                                        mem[_3843 + 241] = address(_4577)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(address(_3754), address(_4577))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0
                                        mem[_3843 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4577)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4577)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3843 + 241] = address(_3754)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(mem[_3843 + 221 len 20], address(_3754))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        _6234 = sha3(0, FACTORYAddress, sha3(mem[_3843 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0
                                        mem[_3843 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 478] = address(_6234)
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_6234), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3843 + 189] = 0
                                    mem[64] = _3843 + 221
                                    mem[_3843 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3843 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3843 + 257] = 0
                                    mem[_3843 + 289] = arg3
                                    mem[_3843 + 321] = 128
                                    mem[_3843 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3843 + s + 385] = mem[_3843 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4578 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3843 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(_3754)
                                        mem[_3843 + 241] = address(_4578)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(address(_3754), address(_4578))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 446] = 0
                                        mem[_3843 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4578)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4578)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3843 + 241] = address(_3754)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(mem[_3843 + 221 len 20], address(_3754))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        _6250 = sha3(0, FACTORYAddress, sha3(mem[_3843 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 446] = 0
                                        mem[_3843 + 478] = address(_6250)
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_6250), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3843 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3843 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3843 + 295 len 26]
                        if (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])) / 998 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3747):
                                if idx >= mem[285] - 2:
                                    mem[_3843 + 189] = 0
                                    mem[64] = _3843 + 221
                                    mem[_3843 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3843 + 225] = 0
                                    mem[_3843 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3843 + 289] = arg3
                                    mem[_3843 + 321] = 128
                                    mem[_3843 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3843 + s + 385] = mem[_3843 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4407 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3843 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(_3754)
                                        mem[_3843 + 241] = address(_4407)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(address(_3754), address(_4407))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0
                                        mem[_3843 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4407)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4407)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3843 + 241] = address(_3754)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(mem[_3843 + 221 len 20], address(_3754))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        _5574 = sha3(0, FACTORYAddress, sha3(mem[_3843 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0
                                        mem[_3843 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 478] = address(_5574)
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5574), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3843 + 189] = 0
                                    mem[64] = _3843 + 221
                                    mem[_3843 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3843 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3843 + 257] = 0
                                    mem[_3843 + 289] = arg3
                                    mem[_3843 + 321] = 128
                                    mem[_3843 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3843 + s + 385] = mem[_3843 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4408 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3843 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(_3754)
                                        mem[_3843 + 241] = address(_4408)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(address(_3754), address(_4408))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 446] = 0
                                        mem[_3843 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4408)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4408)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3843 + 241] = address(_3754)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(mem[_3843 + 221 len 20], address(_3754))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        _5590 = sha3(0, FACTORYAddress, sha3(mem[_3843 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 446] = 0
                                        mem[_3843 + 478] = address(_5590)
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5590), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3747):
                                if idx >= mem[285] - 2:
                                    mem[_3843 + 189] = 0
                                    mem[64] = _3843 + 221
                                    mem[_3843 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3843 + 225] = 0
                                    mem[_3843 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3843 + 289] = arg3
                                    mem[_3843 + 321] = 128
                                    mem[_3843 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3843 + s + 385] = mem[_3843 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4585 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3843 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(_3754)
                                        mem[_3843 + 241] = address(_4585)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(address(_3754), address(_4585))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0
                                        mem[_3843 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4585)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4585)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3843 + 241] = address(_3754)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(mem[_3843 + 221 len 20], address(_3754))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        _6266 = sha3(0, FACTORYAddress, sha3(mem[_3843 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = 0
                                        mem[_3843 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 478] = address(_6266)
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_6266), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3843 + 189] = 0
                                    mem[64] = _3843 + 221
                                    mem[_3843 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3843 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3843 + 257] = 0
                                    mem[_3843 + 289] = arg3
                                    mem[_3843 + 321] = 128
                                    mem[_3843 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3843 + s + 385] = mem[_3843 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4586 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3843 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(_3754)
                                        mem[_3843 + 241] = address(_4586)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(address(_3754), address(_4586))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 446] = 0
                                        mem[_3843 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4586)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4586)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3843 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3843 + 241] = address(_3754)
                                        mem[_3843 + 189] = 40
                                        mem[_3843 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 294] = FACTORYAddress
                                        mem[_3843 + 314] = sha3(mem[_3843 + 221 len 20], address(_3754))
                                        mem[_3843 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3843 + 261] = 85
                                        _6282 = sha3(0, FACTORYAddress, sha3(mem[_3843 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3843 + 378] = 0
                                        mem[64] = _3843 + 410
                                        mem[_3843 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3843 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3843 + 446] = 0
                                        mem[_3843 + 478] = address(_6282)
                                        mem[_3843 + 510] = 128
                                        mem[_3843 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3843 + s + 574] = mem[_3843 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3846, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_6282), 128, 0
            else:
                if not mem[(32 * idx + 1) + 329 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                if mem[(32 * idx) + 329 len 20] == mem[(32 * idx + 1) + 329 len 20]:
                    revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + 329 len 20] < mem[(32 * idx + 1) + 329 len 20]:
                    if not mem[(32 * idx) + 329 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3851 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx) + 317])
                    mem[mem[64] + 52] = address(_3754)
                    _3852 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3854 = sha3(mem[_3852 + 32 len mem[_3852]])
                    mem[_3851 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3851 + 105] = FACTORYAddress
                    mem[_3851 + 125] = _3854
                    mem[_3851 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                    mem[_3851 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    mem[_3851 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3851 + 193] = address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    require ext_code.size(address(_3747))
                    staticcall address(_3747).0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    mem[_3851 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_3747) == address(_3754):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3851 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3851 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3851 + 295 len 26]
                        if 998 * Mask(144, 112, ext_call.return_data[0]) / 998 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3754):
                                if idx >= mem[285] - 2:
                                    mem[_3851 + 189] = 0
                                    mem[64] = _3851 + 221
                                    mem[_3851 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3851 + 225] = 0
                                    mem[_3851 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3851 + 289] = arg3
                                    mem[_3851 + 321] = 128
                                    mem[_3851 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3851 + s + 385] = mem[_3851 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4411 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3851 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(_3754)
                                        mem[_3851 + 241] = address(_4411)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(address(_3754), address(_4411))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0
                                        mem[_3851 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4411)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4411)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3851 + 241] = address(_3754)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(mem[_3851 + 221 len 20], address(_3754))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        _5610 = sha3(0, FACTORYAddress, sha3(mem[_3851 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0
                                        mem[_3851 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 478] = address(_5610)
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5610), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3851 + 189] = 0
                                    mem[64] = _3851 + 221
                                    mem[_3851 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3851 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3851 + 257] = 0
                                    mem[_3851 + 289] = arg3
                                    mem[_3851 + 321] = 128
                                    mem[_3851 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3851 + s + 385] = mem[_3851 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4412 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3851 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(_3754)
                                        mem[_3851 + 241] = address(_4412)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(address(_3754), address(_4412))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 446] = 0
                                        mem[_3851 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4412)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4412)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3851 + 241] = address(_3754)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(mem[_3851 + 221 len 20], address(_3754))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        _5626 = sha3(0, FACTORYAddress, sha3(mem[_3851 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 446] = 0
                                        mem[_3851 + 478] = address(_5626)
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5626), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 998 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3754):
                                if idx >= mem[285] - 2:
                                    mem[_3851 + 189] = 0
                                    mem[64] = _3851 + 221
                                    mem[_3851 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3851 + 225] = 0
                                    mem[_3851 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3851 + 289] = arg3
                                    mem[_3851 + 321] = 128
                                    mem[_3851 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3851 + s + 385] = mem[_3851 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4593 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3851 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(_3754)
                                        mem[_3851 + 241] = address(_4593)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(address(_3754), address(_4593))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0
                                        mem[_3851 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4593)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4593)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3851 + 241] = address(_3754)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(mem[_3851 + 221 len 20], address(_3754))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        _6298 = sha3(0, FACTORYAddress, sha3(mem[_3851 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0
                                        mem[_3851 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 478] = address(_6298)
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_6298), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3851 + 189] = 0
                                    mem[64] = _3851 + 221
                                    mem[_3851 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3851 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3851 + 257] = 0
                                    mem[_3851 + 289] = arg3
                                    mem[_3851 + 321] = 128
                                    mem[_3851 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3851 + s + 385] = mem[_3851 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4594 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3851 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(_3754)
                                        mem[_3851 + 241] = address(_4594)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(address(_3754), address(_4594))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 446] = 0
                                        mem[_3851 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4594)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4594)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3851 + 241] = address(_3754)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(mem[_3851 + 221 len 20], address(_3754))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        _6314 = sha3(0, FACTORYAddress, sha3(mem[_3851 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 446] = 0
                                        mem[_3851 + 478] = address(_6314)
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_6314), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3851 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3851 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3851 + 295 len 26]
                        if (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])) / 998 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3754):
                                if idx >= mem[285] - 2:
                                    mem[_3851 + 189] = 0
                                    mem[64] = _3851 + 221
                                    mem[_3851 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3851 + 225] = 0
                                    mem[_3851 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3851 + 289] = arg3
                                    mem[_3851 + 321] = 128
                                    mem[_3851 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3851 + s + 385] = mem[_3851 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4415 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3851 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(_3754)
                                        mem[_3851 + 241] = address(_4415)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(address(_3754), address(_4415))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0
                                        mem[_3851 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4415)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4415)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3851 + 241] = address(_3754)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(mem[_3851 + 221 len 20], address(_3754))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        _5646 = sha3(0, FACTORYAddress, sha3(mem[_3851 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0
                                        mem[_3851 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 478] = address(_5646)
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5646), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3851 + 189] = 0
                                    mem[64] = _3851 + 221
                                    mem[_3851 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3851 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3851 + 257] = 0
                                    mem[_3851 + 289] = arg3
                                    mem[_3851 + 321] = 128
                                    mem[_3851 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3851 + s + 385] = mem[_3851 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4416 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3851 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(_3754)
                                        mem[_3851 + 241] = address(_4416)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(address(_3754), address(_4416))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 446] = 0
                                        mem[_3851 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4416)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4416)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3851 + 241] = address(_3754)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(mem[_3851 + 221 len 20], address(_3754))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        _5662 = sha3(0, FACTORYAddress, sha3(mem[_3851 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 446] = 0
                                        mem[_3851 + 478] = address(_5662)
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5662), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3754):
                                if idx >= mem[285] - 2:
                                    mem[_3851 + 189] = 0
                                    mem[64] = _3851 + 221
                                    mem[_3851 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3851 + 225] = 0
                                    mem[_3851 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3851 + 289] = arg3
                                    mem[_3851 + 321] = 128
                                    mem[_3851 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3851 + s + 385] = mem[_3851 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4601 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3851 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(_3754)
                                        mem[_3851 + 241] = address(_4601)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(address(_3754), address(_4601))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0
                                        mem[_3851 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4601)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4601)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3851 + 241] = address(_3754)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(mem[_3851 + 221 len 20], address(_3754))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        _6330 = sha3(0, FACTORYAddress, sha3(mem[_3851 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = 0
                                        mem[_3851 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 478] = address(_6330)
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_6330), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3851 + 189] = 0
                                    mem[64] = _3851 + 221
                                    mem[_3851 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3851 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3851 + 257] = 0
                                    mem[_3851 + 289] = arg3
                                    mem[_3851 + 321] = 128
                                    mem[_3851 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3851 + s + 385] = mem[_3851 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4602 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3851 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(_3754)
                                        mem[_3851 + 241] = address(_4602)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(address(_3754), address(_4602))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 446] = 0
                                        mem[_3851 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4602)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4602)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3851 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3851 + 241] = address(_3754)
                                        mem[_3851 + 189] = 40
                                        mem[_3851 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 294] = FACTORYAddress
                                        mem[_3851 + 314] = sha3(mem[_3851 + 221 len 20], address(_3754))
                                        mem[_3851 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3851 + 261] = 85
                                        _6346 = sha3(0, FACTORYAddress, sha3(mem[_3851 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3851 + 378] = 0
                                        mem[64] = _3851 + 410
                                        mem[_3851 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3851 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3851 + 446] = 0
                                        mem[_3851 + 478] = address(_6346)
                                        mem[_3851 + 510] = 128
                                        mem[_3851 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3851 + s + 574] = mem[_3851 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3854, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_6346), 128, 0
                else:
                    if not mem[(32 * idx + 1) + 329 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    _3859 = mem[64]
                    mem[mem[64] + 32] = address(mem[(32 * idx + 1) + 317])
                    mem[mem[64] + 52] = address(_3747)
                    _3860 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _3862 = sha3(mem[_3860 + 32 len mem[_3860]])
                    mem[_3859 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_3859 + 105] = FACTORYAddress
                    mem[_3859 + 125] = _3862
                    mem[_3859 + 157] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                    mem[_3859 + 72] = 85
                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                    staticcall address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).getReserves() with:
                            gas gas_remaining wei
                    mem[_3859 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[_3859 + 193] = address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    require ext_code.size(address(_3747))
                    staticcall address(_3747).0x70a08231 with:
                            gas gas_remaining wei
                           args address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                    mem[_3859 + 189] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(_3747) == address(_3754):
                        if Mask(144, 112, ext_call.return_data[0]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if Mask(144, 112, ext_call.return_data[0]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3859 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3859 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3859 + 295 len 26]
                        if 998 * Mask(144, 112, ext_call.return_data[0]) / 998 != Mask(144, 112, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3754):
                                if idx >= mem[285] - 2:
                                    mem[_3859 + 189] = 0
                                    mem[64] = _3859 + 221
                                    mem[_3859 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3859 + 225] = 0
                                    mem[_3859 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3859 + 289] = arg3
                                    mem[_3859 + 321] = 128
                                    mem[_3859 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3859 + s + 385] = mem[_3859 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4419 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3859 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(_3754)
                                        mem[_3859 + 241] = address(_4419)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(address(_3754), address(_4419))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0
                                        mem[_3859 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4419)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4419)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3859 + 241] = address(_3754)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(mem[_3859 + 221 len 20], address(_3754))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        _5682 = sha3(0, FACTORYAddress, sha3(mem[_3859 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0
                                        mem[_3859 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 478] = address(_5682)
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_5682), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3859 + 189] = 0
                                    mem[64] = _3859 + 221
                                    mem[_3859 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3859 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3859 + 257] = 0
                                    mem[_3859 + 289] = arg3
                                    mem[_3859 + 321] = 128
                                    mem[_3859 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3859 + s + 385] = mem[_3859 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4420 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3859 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(_3754)
                                        mem[_3859 + 241] = address(_4420)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(address(_3754), address(_4420))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 446] = 0
                                        mem[_3859 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4420)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4420)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3859 + 241] = address(_3754)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(mem[_3859 + 221 len 20], address(_3754))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        _5698 = sha3(0, FACTORYAddress, sha3(mem[_3859 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 446] = 0
                                        mem[_3859 + 478] = address(_5698)
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_5698), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[32])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 998 * Mask(144, 112, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3754):
                                if idx >= mem[285] - 2:
                                    mem[_3859 + 189] = 0
                                    mem[64] = _3859 + 221
                                    mem[_3859 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3859 + 225] = 0
                                    mem[_3859 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3859 + 289] = arg3
                                    mem[_3859 + 321] = 128
                                    mem[_3859 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3859 + s + 385] = mem[_3859 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4609 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3859 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(_3754)
                                        mem[_3859 + 241] = address(_4609)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(address(_3754), address(_4609))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0
                                        mem[_3859 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4609)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4609)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3859 + 241] = address(_3754)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(mem[_3859 + 221 len 20], address(_3754))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        _6362 = sha3(0, FACTORYAddress, sha3(mem[_3859 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0
                                        mem[_3859 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 478] = address(_6362)
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(_6362), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3859 + 189] = 0
                                    mem[64] = _3859 + 221
                                    mem[_3859 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3859 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                    mem[_3859 + 257] = 0
                                    mem[_3859 + 289] = arg3
                                    mem[_3859 + 321] = 128
                                    mem[_3859 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3859 + s + 385] = mem[_3859 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4610 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3859 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(_3754)
                                        mem[_3859 + 241] = address(_4610)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(address(_3754), address(_4610))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 446] = 0
                                        mem[_3859 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4610)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4610)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3859 + 241] = address(_3754)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(mem[_3859 + 221 len 20], address(_3754))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        _6378 = sha3(0, FACTORYAddress, sha3(mem[_3859 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 446] = 0
                                        mem[_3859 + 478] = address(_6378)
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), 0, address(_6378), 128, 0
                    else:
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                            revert with 0, 'ds-math-sub-underflow'
                        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 
                                        32,
                                        41,
                                        0xfe50616e63616b654c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                        mem[_3859 + 298 len 23]
                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3859 + 295 len 26]
                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                            revert with 0, 32, 38, 0x5350616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[_3859 + 295 len 26]
                        if (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])) / 998 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3754):
                                if idx >= mem[285] - 2:
                                    mem[_3859 + 189] = 0
                                    mem[64] = _3859 + 221
                                    mem[_3859 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3859 + 225] = 0
                                    mem[_3859 + 257] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3859 + 289] = arg3
                                    mem[_3859 + 321] = 128
                                    mem[_3859 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3859 + s + 385] = mem[_3859 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4423 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3859 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(_3754)
                                        mem[_3859 + 241] = address(_4423)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(address(_3754), address(_4423))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0
                                        mem[_3859 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4423)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4423)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3859 + 241] = address(_3754)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(mem[_3859 + 221 len 20], address(_3754))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        _5718 = sha3(0, FACTORYAddress, sha3(mem[_3859 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0
                                        mem[_3859 + 446] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 478] = address(_5718)
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_5718), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3859 + 189] = 0
                                    mem[64] = _3859 + 221
                                    mem[_3859 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3859 + 225] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3859 + 257] = 0
                                    mem[_3859 + 289] = arg3
                                    mem[_3859 + 321] = 128
                                    mem[_3859 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3859 + s + 385] = mem[_3859 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4424 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3859 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(_3754)
                                        mem[_3859 + 241] = address(_4424)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(address(_3754), address(_4424))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 446] = 0
                                        mem[_3859 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4424)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4424)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3859 + 241] = address(_3754)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(mem[_3859 + 221 len 20], address(_3754))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        _5734 = sha3(0, FACTORYAddress, sha3(mem[_3859 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 446] = 0
                                        mem[_3859 + 478] = address(_5734)
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0 / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_5734), 128, 0
                        else:
                            require Mask(112, 0, ext_call.return_data[0])
                            if (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (998 * ext_call.return_data[0]) - (998 * Mask(112, 0, ext_call.return_data[32])):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                            if address(_3747) == address(_3754):
                                if idx >= mem[285] - 2:
                                    mem[_3859 + 189] = 0
                                    mem[64] = _3859 + 221
                                    mem[_3859 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3859 + 225] = 0
                                    mem[_3859 + 257] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3859 + 289] = arg3
                                    mem[_3859 + 321] = 128
                                    mem[_3859 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3859 + s + 385] = mem[_3859 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4617 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3859 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(_3754)
                                        mem[_3859 + 241] = address(_4617)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(address(_3754), address(_4617))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0
                                        mem[_3859 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4617)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4617)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3859 + 241] = address(_3754)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(mem[_3859 + 221 len 20], address(_3754))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        _6394 = sha3(0, FACTORYAddress, sha3(mem[_3859 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = 0
                                        mem[_3859 + 446] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 478] = address(_6394)
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), address(_6394), 128, 0
                            else:
                                if idx >= mem[285] - 2:
                                    mem[_3859 + 189] = 0
                                    mem[64] = _3859 + 221
                                    mem[_3859 + 221] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3859 + 225] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                    mem[_3859 + 257] = 0
                                    mem[_3859 + 289] = arg3
                                    mem[_3859 + 321] = 128
                                    mem[_3859 + 353] = 0
                                    s = 0
                                    while s < 0:
                                        mem[_3859 + s + 385] = mem[_3859 + s + 221]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                    call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(arg3), 128, 0
                                else:
                                    require idx + 2 < mem[285]
                                    _4618 = mem[(32 * idx + 2) + 317]
                                    if address(_3754) == mem[(32 * idx + 2) + 329 len 20]:
                                        revert with 0, 32, 35, 0x5450616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[_3859 + 292 len 29]
                                    if address(_3754) < mem[(32 * idx + 2) + 329 len 20]:
                                        if not address(_3754):
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(_3754)
                                        mem[_3859 + 241] = address(_4618)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(address(_3754), address(_4618))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 446] = 0
                                        mem[_3859 + 478] = address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4618)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617))
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(sha3(0, FACTORYAddress, sha3(address(_3754), address(_4618)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)), 128, 0
                                    else:
                                        if not mem[(32 * idx + 2) + 329 len 20]:
                                            revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                                        mem[_3859 + 221] = address(mem[(32 * idx + 2) + 317])
                                        mem[_3859 + 241] = address(_3754)
                                        mem[_3859 + 189] = 40
                                        mem[_3859 + 293] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 294] = FACTORYAddress
                                        mem[_3859 + 314] = sha3(mem[_3859 + 221 len 20], address(_3754))
                                        mem[_3859 + 346] = 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617
                                        mem[_3859 + 261] = 85
                                        _6410 = sha3(0, FACTORYAddress, sha3(mem[_3859 + 221 len 20], address(_3754)), 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)
                                        mem[_3859 + 378] = 0
                                        mem[64] = _3859 + 410
                                        mem[_3859 + 410] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_3859 + 414] = (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
                                        mem[_3859 + 446] = 0
                                        mem[_3859 + 478] = address(_6410)
                                        mem[_3859 + 510] = 128
                                        mem[_3859 + 542] = 0
                                        s = 0
                                        while s < 0:
                                            mem[_3859 + s + 574] = mem[_3859 + s + 410]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)))
                                        call address(sha3(0, FACTORYAddress, _3862, 0xe242e798f6cee26a9cb0bbf24653bf066e5356ffeac160907fe2cc108e238617)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(_6410), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    require arg2.length - 1 < arg2.length
    require ext_code.size(address(cd[((32 * arg2.length - 1) + arg2 + 36)]))
    staticcall address(cd[((32 * arg2.length - 1) + arg2 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 > ext_call.return_data[0]:
        revert with 0, 'ds-math-sub-underflow'
    if 0 < arg1:
        revert with 0, 
                    32,
                    41,
                    0x5450616e63616b65526f757465723a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[mem[64] + 109 len 23]
}



}
