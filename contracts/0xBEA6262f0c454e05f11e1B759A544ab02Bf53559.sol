contract main {




// =====================  Runtime code  =====================


const sub_1928346a(?) = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const sub_c7cd8144(?) = 0x7775813b416dc51dfef05645e2b3ceec54f226d5


function _fallback() payable {
    revert
}

function getPrice(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0x7775813b416dc51dfef05645e2b3ceec54f226d5)
    staticcall 0x7775813b416dc51dfef05645e2b3ceec54f226d5.0x9185f6ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x7775813b416dc51dfef05645e2b3ceec54f226d5)
    if ext_call.return_data[0]:
        staticcall 0x7775813b416dc51dfef05645e2b3ceec54f226d5.0x9185f6ec with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(arg2)
            staticcall arg2.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not uint8(ext_call.return_data[0]):
                if not ext_call.return_data[31 len 1]:
                    return 10^18, block.timestamp
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    return 10^18 * 10^ext_call.return_data[31 len 1], block.timestamp
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
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
                if s * t > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                return 10^18 * s * t, block.timestamp
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if not ext_call.return_data[31 len 1]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 / 10^uint8(ext_call.return_data[0]), block.timestamp
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]), block.timestamp
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
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
                if s * t > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return 10^18 * s * t / 10^uint8(ext_call.return_data[0]), block.timestamp
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if not ext_call.return_data[31 len 1]:
                if not s * t:
                    revert with 0, 18
                return 10^18 / s * t, block.timestamp
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * 10^ext_call.return_data[31 len 1] / s * t, block.timestamp
            u = 10
            v = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if u * v > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            return 10^18 * u * v / s * t, block.timestamp
    staticcall 0x7775813b416dc51dfef05645e2b3ceec54f226d5.0x9185f6ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x7775813b416dc51dfef05645e2b3ceec54f226d5)
    if ext_call.return_data[0]:
        staticcall 0x7775813b416dc51dfef05645e2b3ceec54f226d5.0xac41865a with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        return ext_call.return_data[0], ext_call.return_data[32]
    staticcall 0x7775813b416dc51dfef05645e2b3ceec54f226d5.0x9185f6ec with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x7775813b416dc51dfef05645e2b3ceec54f226d5)
    if ext_call.return_data[0]:
        staticcall 0x7775813b416dc51dfef05645e2b3ceec54f226d5.0xac41865a with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        return ext_call.return_data[0], ext_call.return_data[32]
    staticcall 0x7775813b416dc51dfef05645e2b3ceec54f226d5.0xac41865a with:
            gas gas_remaining wei
           args address(arg1), 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x7775813b416dc51dfef05645e2b3ceec54f226d5)
    staticcall 0x7775813b416dc51dfef05645e2b3ceec54f226d5.0xac41865a with:
            gas gas_remaining wei
           args address(arg2), 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[32]
}



}
