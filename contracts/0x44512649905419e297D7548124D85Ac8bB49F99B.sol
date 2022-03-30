contract main {




// =====================  Runtime code  =====================


#
#  - sub_71b898a1(?)
#
function _fallback() payable {
    revert
}

function prepareBuyerFeeMessage(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12) payable {
    require calldata.size - 4 >= 384
    require calldata.size - 4 >= 352
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require calldata.size - 68 >= 96
    require arg3 == arg3
    require arg4 == arg4
    require arg5 < 5
    require calldata.size - 164 >= 96
    require arg6 == arg6
    require arg7 == arg7
    require arg8 < 5
    require arg9 == arg9
    require arg10 == arg10
    require arg11 == arg11
    require arg12 == arg12
    require arg5 < 5
    require arg8 < 5
    mem[1056 len 64] = code.data[4451 len 64]
    idx = 0
    while idx < 32:
        require 2 * idx < 64
        mem[(2 * idx) + 1056 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx < 32
        require (2 * idx) + 1 < 64
        mem[(2 * idx) + 1057 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    return 32, 64, mem[1056 len 64]
}

function sub_a5f2ab96(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint8(arg2)
    require arg3 == arg3
    require arg4 == arg4
    mem[96] = arg1.length
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 26
    mem[ceil32(arg1.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a000000000000
    if not arg1.length:
        if arg1.length + 27:
            mem[ceil32(arg1.length) + 416 len arg1.length + 27] = code.data[4451 len arg1.length + 27]
        idx = 0
        s = 0
        while idx < 26:
            require idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            require s < arg1.length + 27
            mem[s + ceil32(arg1.length) + 416 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 26
        while idx < 1:
            require idx < 1
            require s < arg1.length + 27
            mem[s + ceil32(arg1.length) + 416 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 27
        while idx < arg1.length:
            require idx < arg1.length
            require s < arg1.length + 27
            mem[s + ceil32(arg1.length) + 416 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = arg1.length + 27
        while idx < 0:
            require idx < 0
            require s < arg1.length + 27
            mem[s + ceil32(arg1.length) + 416 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = arg1.length + 27
        while idx < 0:
            require idx < 0
            require s < arg1.length + 27
            mem[s + ceil32(arg1.length) + 416 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = arg1.length + 27
        while idx < 0:
            require idx < 0
            require s < arg1.length + 27
            mem[s + ceil32(arg1.length) + 416 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = arg1.length + 27
        while idx < 0:
            require idx < 0
            require s < arg1.length + 27
            mem[s + ceil32(arg1.length) + 416 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        signer = erecover(sha3(mem[ceil32(arg1.length) + 416 len arg1.length + 27]), arg2 << 248, arg3, arg4) 
    else:
        s = 0
        idx = arg1.length
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[ceil32(arg1.length) + 192] = s
        if not s:
            t = s - 1
            idx = arg1.length
            while idx:
                require t < s
                mem[t + ceil32(arg1.length) + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(arg1.length) + ceil32(s) + 256] = 0
            mem[ceil32(arg1.length) + ceil32(s) + 288] = 0
            mem[ceil32(arg1.length) + ceil32(s) + 320] = 0
            mem[ceil32(arg1.length) + ceil32(s) + 352] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + s + arg1.length + mem[ceil32(arg1.length) + ceil32(s) + 224]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + s + arg1.length + mem[ceil32(arg1.length) + ceil32(s) + 224]:
                _580 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                idx = 0
                t = 0
                while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                    require idx < mem[ceil32(arg1.length) + 128]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = _580
                while idx < mem[ceil32(arg1.length) + 192]:
                    require idx < mem[ceil32(arg1.length) + 192]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                _968 = mem[96]
                idx = 0
                t = _580 + mem[ceil32(arg1.length) + 192]
                while idx < _968:
                    require idx < mem[96]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _968 = mem[96]
                    idx = idx + 1
                    t = t + 1
                    continue 
                t = 0
                u = _580 + mem[ceil32(arg1.length) + 192] + _968
                while t < mem[ceil32(arg1.length) + ceil32(s) + 224]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 224]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _580 + mem[ceil32(arg1.length) + 192] + _968 + mem[ceil32(arg1.length) + ceil32(s) + 224]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 256]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 256]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _580 + mem[ceil32(arg1.length) + 192] + _968 + mem[ceil32(arg1.length) + ceil32(s) + 224] + mem[ceil32(arg1.length) + ceil32(s) + 256]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 288]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 288]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _580 + mem[ceil32(arg1.length) + 192] + _968 + mem[ceil32(arg1.length) + ceil32(s) + 224] + mem[ceil32(arg1.length) + ceil32(s) + 256] + mem[ceil32(arg1.length) + ceil32(s) + 288]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 320]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 320]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
            else:
                mem[ceil32(arg1.length) + ceil32(s) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + s + arg1.length + mem[ceil32(arg1.length) + ceil32(s) + 224]] = code.data[4451 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + s + arg1.length + mem[ceil32(arg1.length) + ceil32(s) + 224]]
                _581 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                idx = 0
                t = 0
                while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                    require idx < mem[ceil32(arg1.length) + 128]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = _581
                while idx < mem[ceil32(arg1.length) + 192]:
                    require idx < mem[ceil32(arg1.length) + 192]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                _969 = mem[96]
                idx = 0
                t = _581 + mem[ceil32(arg1.length) + 192]
                while idx < _969:
                    require idx < mem[96]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _969 = mem[96]
                    idx = idx + 1
                    t = t + 1
                    continue 
                t = 0
                u = _581 + mem[ceil32(arg1.length) + 192] + _969
                while t < mem[ceil32(arg1.length) + ceil32(s) + 224]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 224]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _581 + mem[ceil32(arg1.length) + 192] + _969 + mem[ceil32(arg1.length) + ceil32(s) + 224]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 256]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 256]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _581 + mem[ceil32(arg1.length) + 192] + _969 + mem[ceil32(arg1.length) + ceil32(s) + 224] + mem[ceil32(arg1.length) + ceil32(s) + 256]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 288]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 288]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _581 + mem[ceil32(arg1.length) + 192] + _969 + mem[ceil32(arg1.length) + ceil32(s) + 224] + mem[ceil32(arg1.length) + ceil32(s) + 256] + mem[ceil32(arg1.length) + ceil32(s) + 288]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 320]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 320]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
        else:
            mem[ceil32(arg1.length) + 224 len s] = code.data[4451 len s]
            t = s - 1
            idx = arg1.length
            while idx:
                require t < s
                mem[t + ceil32(arg1.length) + 224 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(arg1.length) + ceil32(s) + 256] = 0
            mem[ceil32(arg1.length) + ceil32(s) + 288] = 0
            mem[ceil32(arg1.length) + ceil32(s) + 320] = 0
            mem[ceil32(arg1.length) + ceil32(s) + 352] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + s + arg1.length + mem[ceil32(arg1.length) + ceil32(s) + 224]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + s + arg1.length + mem[ceil32(arg1.length) + ceil32(s) + 224]:
                _582 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                idx = 0
                t = 0
                while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                    require idx < mem[ceil32(arg1.length) + 128]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = _582
                while idx < mem[ceil32(arg1.length) + 192]:
                    require idx < mem[ceil32(arg1.length) + 192]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                _970 = mem[96]
                idx = 0
                t = _582 + mem[ceil32(arg1.length) + 192]
                while idx < _970:
                    require idx < mem[96]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _970 = mem[96]
                    idx = idx + 1
                    t = t + 1
                    continue 
                t = 0
                u = _582 + mem[ceil32(arg1.length) + 192] + _970
                while t < mem[ceil32(arg1.length) + ceil32(s) + 224]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 224]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _582 + mem[ceil32(arg1.length) + 192] + _970 + mem[ceil32(arg1.length) + ceil32(s) + 224]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 256]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 256]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _582 + mem[ceil32(arg1.length) + 192] + _970 + mem[ceil32(arg1.length) + ceil32(s) + 224] + mem[ceil32(arg1.length) + ceil32(s) + 256]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 288]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 288]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _582 + mem[ceil32(arg1.length) + 192] + _970 + mem[ceil32(arg1.length) + ceil32(s) + 224] + mem[ceil32(arg1.length) + ceil32(s) + 256] + mem[ceil32(arg1.length) + ceil32(s) + 288]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 320]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 320]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
            else:
                mem[ceil32(arg1.length) + ceil32(s) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + s + arg1.length + mem[ceil32(arg1.length) + ceil32(s) + 224]] = code.data[4451 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + s + arg1.length + mem[ceil32(arg1.length) + ceil32(s) + 224]]
                _583 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                idx = 0
                t = 0
                while idx < Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
                    require idx < mem[ceil32(arg1.length) + 128]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = _583
                while idx < mem[ceil32(arg1.length) + 192]:
                    require idx < mem[ceil32(arg1.length) + 192]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                _971 = mem[96]
                idx = 0
                t = _583 + mem[ceil32(arg1.length) + 192]
                while idx < _971:
                    require idx < mem[96]
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[t + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    _971 = mem[96]
                    idx = idx + 1
                    t = t + 1
                    continue 
                t = 0
                u = _583 + mem[ceil32(arg1.length) + 192] + _971
                while t < mem[ceil32(arg1.length) + ceil32(s) + 224]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 224]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _583 + mem[ceil32(arg1.length) + 192] + _971 + mem[ceil32(arg1.length) + ceil32(s) + 224]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 256]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 256]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _583 + mem[ceil32(arg1.length) + 192] + _971 + mem[ceil32(arg1.length) + ceil32(s) + 224] + mem[ceil32(arg1.length) + ceil32(s) + 256]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 288]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 288]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                t = 0
                u = _583 + mem[ceil32(arg1.length) + 192] + _971 + mem[ceil32(arg1.length) + ceil32(s) + 224] + mem[ceil32(arg1.length) + ceil32(s) + 256] + mem[ceil32(arg1.length) + ceil32(s) + 288]
                while t < mem[ceil32(arg1.length) + ceil32(s) + 320]:
                    require t < mem[ceil32(arg1.length) + ceil32(s) + 320]
                    require u < mem[ceil32(arg1.length) + ceil32(s) + 352]
                    mem[u + ceil32(arg1.length) + ceil32(s) + 384 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
        signer = erecover(sha3(mem[ceil32(arg1.length) + ceil32(s) + 384 len mem[ceil32(arg1.length) + ceil32(s) + 352]]), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}



}
