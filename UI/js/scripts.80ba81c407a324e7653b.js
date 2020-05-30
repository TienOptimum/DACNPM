!function (e, t) {
  'use strict';
  'object' == typeof module && 'object' == typeof module.exports ? module.exports = e.document ? t(e, !0)  : function (e) {
    if (!e.document) throw new Error('jQuery requires a window with a document');
    return t(e)
  }
   : t(e)
}('undefined' != typeof window ? window : this, function (e, t) {
  'use strict';
  var n = [
  ],
  i = e.document,
  r = Object.getPrototypeOf,
  o = n.slice,
  s = n.concat,
  a = n.push,
  l = n.indexOf,
  c = {
  },
  u = c.toString,
  f = c.hasOwnProperty,
  d = f.toString,
  h = d.call(Object),
  p = {
  },
  m = function (e) {
    return 'function' == typeof e && 'number' != typeof e.nodeType
  },
  g = function (e) {
    return null != e && e === e.window
  },
  v = {
    type: !0,
    src: !0,
    noModule: !0
  };
  function y(e, t, n) {
    var r,
    o = (t = t || i).createElement('script');
    if (o.text = e, n) for (r in v) n[r] && (o[r] = n[r]);
    t.head.appendChild(o).parentNode.removeChild(o)
  }
  function b(e) {
    return null == e ? e + '' : 'object' == typeof e || 'function' == typeof e ? c[u.call(e)] || 'object' : typeof e
  }
  var _ = function (e, t) {
    return new _.fn.init(e, t)
  },
  w = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
  function E(e) {
    var t = !!e && 'length' in e && e.length,
    n = b(e);
    return !m(e) && !g(e) && ('array' === n || 0 === t || 'number' == typeof t && t > 0 && t - 1 in e)
  }
  _.fn = _.prototype = {
    jquery: '3.3.1',
    constructor: _,
    length: 0,
    toArray: function () {
      return o.call(this)
    },
    get: function (e) {
      return null == e ? o.call(this)  : e < 0 ? this[e + this.length] : this[e]
    },
    pushStack: function (e) {
      var t = _.merge(this.constructor(), e);
      return t.prevObject = this,
      t
    },
    each: function (e) {
      return _.each(this, e)
    },
    map: function (e) {
      return this.pushStack(_.map(this, function (t, n) {
        return e.call(t, n, t)
      }))
    },
    slice: function () {
      return this.pushStack(o.apply(this, arguments))
    },
    first: function () {
      return this.eq(0)
    },
    last: function () {
      return this.eq( - 1)
    },
    eq: function (e) {
      var t = this.length,
      n = + e + (e < 0 ? t : 0);
      return this.pushStack(n >= 0 && n < t ? [
        this[n]
      ] : [
      ])
    },
    end: function () {
      return this.prevObject || this.constructor()
    },
    push: a,
    sort: n.sort,
    splice: n.splice
  },
  _.extend = _.fn.extend = function () {
    var e,
    t,
    n,
    i,
    r,
    o,
    s = arguments[0] || {
    },
    a = 1,
    l = arguments.length,
    c = !1;
    for ('boolean' == typeof s && (c = s, s = arguments[a] || {
    }, a++), 'object' == typeof s || m(s) || (s = {
    }), a === l && (s = this, a--); a < l; a++) if (null != (e = arguments[a])) for (t in e) n = s[t],
    s !== (i = e[t]) && (c && i && (_.isPlainObject(i) || (r = Array.isArray(i))) ? (r ? (r = !1, o = n && Array.isArray(n) ? n : [
    ])  : o = n && _.isPlainObject(n) ? n : {
    }, s[t] = _.extend(c, o, i))  : void 0 !== i && (s[t] = i));
    return s
  },
  _.extend({
    expando: 'jQuery' + ('3.3.1' + Math.random()).replace(/\D/g, ''),
    isReady: !0,
    error: function (e) {
      throw new Error(e)
    },
    noop: function () {
    },
    isPlainObject: function (e) {
      var t,
      n;
      return !(!e || '[object Object]' !== u.call(e) || (t = r(e)) && ('function' != typeof (n = f.call(t, 'constructor') && t.constructor) || d.call(n) !== h))
    },
    isEmptyObject: function (e) {
      var t;
      for (t in e) return !1;
      return !0
    },
    globalEval: function (e) {
      y(e)
    },
    each: function (e, t) {
      var n,
      i = 0;
      if (E(e)) for (n = e.length; i < n && !1 !== t.call(e[i], i, e[i]); i++);
       else for (i in e) if (!1 === t.call(e[i], i, e[i])) break;
      return e
    },
    trim: function (e) {
      return null == e ? '' : (e + '').replace(w, '')
    },
    makeArray: function (e, t) {
      var n = t || [
      ];
      return null != e && (E(Object(e)) ? _.merge(n, 'string' == typeof e ? [
        e
      ] : e)  : a.call(n, e)),
      n
    },
    inArray: function (e, t, n) {
      return null == t ? - 1 : l.call(t, e, n)
    },
    merge: function (e, t) {
      for (var n = + t.length, i = 0, r = e.length; i < n; i++) e[r++] = t[i];
      return e.length = r,
      e
    },
    grep: function (e, t, n) {
      for (var i = [
      ], r = 0, o = e.length, s = !n; r < o; r++) !t(e[r], r) !== s && i.push(e[r]);
      return i
    },
    map: function (e, t, n) {
      var i,
      r,
      o = 0,
      a = [
      ];
      if (E(e)) for (i = e.length; o < i; o++) null != (r = t(e[o], o, n)) && a.push(r);
       else for (o in e) null != (r = t(e[o], o, n)) && a.push(r);
      return s.apply([], a)
    },
    guid: 1,
    support: p
  }),
  'function' == typeof Symbol && (_.fn[Symbol.iterator] = n[Symbol.iterator]),
  _.each('Boolean Number String Function Array Date RegExp Object Error Symbol'.split(' '), function (e, t) {
    c['[object ' + t + ']'] = t.toLowerCase()
  });
  var C = function (e) {
    var t,
    n,
    i,
    r,
    o,
    s,
    a,
    l,
    c,
    u,
    f,
    d,
    h,
    p,
    m,
    g,
    v,
    y,
    b,
    _ = 'sizzle' + 1 * new Date,
    w = e.document,
    E = 0,
    C = 0,
    T = se(),
    x = se(),
    A = se(),
    S = function (e, t) {
      return e === t && (f = !0),
      0
    },
    I = {
    }.hasOwnProperty,
    D = [
    ],
    k = D.pop,
    N = D.push,
    O = D.push,
    j = D.slice,
    L = function (e, t) {
      for (var n = 0, i = e.length; n < i; n++) if (e[n] === t) return n;
      return - 1
    },
    $ = 'checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped',
    P = '[\\x20\\t\\r\\n\\f]',
    M = '(?:\\\\.|[\\w-]|[^\0-\\xa0])+',
    H = '\\[' + P + '*(' + M + ')(?:' + P + '*([*^$|!~]?=)' + P + '*(?:\'((?:\\\\.|[^\\\\\'])*)\'|"((?:\\\\.|[^\\\\"])*)"|(' + M + '))|)' + P + '*\\]',
    F = ':(' + M + ')(?:\\(((\'((?:\\\\.|[^\\\\\'])*)\'|"((?:\\\\.|[^\\\\"])*)")|((?:\\\\.|[^\\\\()[\\]]|' + H + ')*)|.*)\\)|)',
    R = new RegExp(P + '+', 'g'),
    W = new RegExp('^' + P + '+|((?:^|[^\\\\])(?:\\\\.)*)' + P + '+$', 'g'),
    q = new RegExp('^' + P + '*,' + P + '*'),
    B = new RegExp('^' + P + '*([>+~]|' + P + ')' + P + '*'),
    Q = new RegExp('=' + P + '*([^\\]\'"]*?)' + P + '*\\]', 'g'),
    U = new RegExp(F),
    G = new RegExp('^' + M + '$'),
    V = {
      ID: new RegExp('^#(' + M + ')'),
      CLASS: new RegExp('^\\.(' + M + ')'),
      TAG: new RegExp('^(' + M + '|[*])'),
      ATTR: new RegExp('^' + H),
      PSEUDO: new RegExp('^' + F),
      CHILD: new RegExp('^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(' + P + '*(even|odd|(([+-]|)(\\d*)n|)' + P + '*(?:([+-]|)' + P + '*(\\d+)|))' + P + '*\\)|)', 'i'),
      bool: new RegExp('^(?:' + $ + ')$', 'i'),
      needsContext: new RegExp('^' + P + '*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(' + P + '*((?:-\\d)?\\d*)' + P + '*\\)|)(?=[^-]|$)', 'i')
    },
    K = /^(?:input|select|textarea|button)$/i,
    Y = /^h\d$/i,
    z = /^[^{]+\{\s*\[native \w/,
    X = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
    J = /[+~]/,
    Z = new RegExp('\\\\([\\da-f]{1,6}' + P + '?|(' + P + ')|.)', 'ig'),
    ee = function (e, t, n) {
      var i = '0x' + t - 65536;
      return i != i || n ? t : i < 0 ? String.fromCharCode(i + 65536)  : String.fromCharCode(i >> 10 | 55296, 1023 & i | 56320)
    },
    te = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,
    ne = function (e, t) {
      return t ? '\0' === e ? '�' : e.slice(0, - 1) + '\\' + e.charCodeAt(e.length - 1).toString(16) + ' ' : '\\' + e
    },
    ie = function () {
      d()
    },
    re = ye(function (e) {
      return !0 === e.disabled && ('form' in e || 'label' in e)
    }, {
      dir: 'parentNode',
      next: 'legend'
    });
    try {
      O.apply(D = j.call(w.childNodes), w.childNodes)
    } catch (e) {
      O = {
        apply: D.length ? function (e, t) {
          N.apply(e, j.call(t))
        }
         : function (e, t) {
          for (var n = e.length, i = 0; e[n++] = t[i++]; );
          e.length = n - 1
        }
      }
    }
    function oe(e, t, i, r) {
      var o,
      a,
      c,
      u,
      f,
      p,
      v,
      y = t && t.ownerDocument,
      E = t ? t.nodeType : 9;
      if (i = i || [
      ], 'string' != typeof e || !e || 1 !== E && 9 !== E && 11 !== E) return i;
      if (!r && ((t ? t.ownerDocument || t : w) !== h && d(t), t = t || h, m)) {
        if (11 !== E && (f = X.exec(e))) if (o = f[1]) {
          if (9 === E) {
            if (!(c = t.getElementById(o))) return i;
            if (c.id === o) return i.push(c),
            i
          } else if (y && (c = y.getElementById(o)) && b(t, c) && c.id === o) return i.push(c),
          i
        } else {
          if (f[2]) return O.apply(i, t.getElementsByTagName(e)),
          i;
          if ((o = f[3]) && n.getElementsByClassName && t.getElementsByClassName) return O.apply(i, t.getElementsByClassName(o)),
          i
        }
        if (n.qsa && !A[e + ' '] && (!g || !g.test(e))) {
          if (1 !== E) y = t,
          v = e;
           else if ('object' !== t.nodeName.toLowerCase()) {
            for ((u = t.getAttribute('id')) ? u = u.replace(te, ne)  : t.setAttribute('id', u = _), a = (p = s(e)).length; a--; ) p[a] = '#' + u + ' ' + ve(p[a]);
            v = p.join(','),
            y = J.test(e) && me(t.parentNode) || t
          }
          if (v) try {
            return O.apply(i, y.querySelectorAll(v)),
            i
          } catch (e) {
          } finally {
            u === _ && t.removeAttribute('id')
          }
        }
      }
      return l(e.replace(W, '$1'), t, i, r)
    }
    function se() {
      var e = [
      ];
      return function t(n, r) {
        return e.push(n + ' ') > i.cacheLength && delete t[e.shift()],
        t[n + ' '] = r
      }
    }
    function ae(e) {
      return e[_] = !0,
      e
    }
    function le(e) {
      var t = h.createElement('fieldset');
      try {
        return !!e(t)
      } catch (e) {
        return !1
      } finally {
        t.parentNode && t.parentNode.removeChild(t),
        t = null
      }
    }
    function ce(e, t) {
      for (var n = e.split('|'), r = n.length; r--; ) i.attrHandle[n[r]] = t
    }
    function ue(e, t) {
      var n = t && e,
      i = n && 1 === e.nodeType && 1 === t.nodeType && e.sourceIndex - t.sourceIndex;
      if (i) return i;
      if (n) for (; n = n.nextSibling; ) if (n === t) return - 1;
      return e ? 1 : - 1
    }
    function fe(e) {
      return function (t) {
        return 'input' === t.nodeName.toLowerCase() && t.type === e
      }
    }
    function de(e) {
      return function (t) {
        var n = t.nodeName.toLowerCase();
        return ('input' === n || 'button' === n) && t.type === e
      }
    }
    function he(e) {
      return function (t) {
        return 'form' in t ? t.parentNode && !1 === t.disabled ? 'label' in t ? 'label' in t.parentNode ? t.parentNode.disabled === e : t.disabled === e : t.isDisabled === e || t.isDisabled !== !e && re(t) === e : t.disabled === e : 'label' in t && t.disabled === e
      }
    }
    function pe(e) {
      return ae(function (t) {
        return t = + t,
        ae(function (n, i) {
          for (var r, o = e([], n.length, t), s = o.length; s--; ) n[r = o[s]] && (n[r] = !(i[r] = n[r]))
        })
      })
    }
    function me(e) {
      return e && void 0 !== e.getElementsByTagName && e
    }
    for (t in n = oe.support = {
    }, o = oe.isXML = function (e) {
      var t = e && (e.ownerDocument || e).documentElement;
      return !!t && 'HTML' !== t.nodeName
    }, d = oe.setDocument = function (e) {
      var t,
      r,
      s = e ? e.ownerDocument || e : w;
      return s !== h && 9 === s.nodeType && s.documentElement ? (p = (h = s).documentElement, m = !o(h), w !== h && (r = h.defaultView) && r.top !== r && (r.addEventListener ? r.addEventListener('unload', ie, !1)  : r.attachEvent && r.attachEvent('onunload', ie)), n.attributes = le(function (e) {
        return e.className = 'i',
        !e.getAttribute('className')
      }), n.getElementsByTagName = le(function (e) {
        return e.appendChild(h.createComment('')),
        !e.getElementsByTagName('*').length
      }), n.getElementsByClassName = z.test(h.getElementsByClassName), n.getById = le(function (e) {
        return p.appendChild(e).id = _,
        !h.getElementsByName || !h.getElementsByName(_).length
      }), n.getById ? (i.filter.ID = function (e) {
        var t = e.replace(Z, ee);
        return function (e) {
          return e.getAttribute('id') === t
        }
      }, i.find.ID = function (e, t) {
        if (void 0 !== t.getElementById && m) {
          var n = t.getElementById(e);
          return n ? [
            n
          ] : [
          ]
        }
      })  : (i.filter.ID = function (e) {
        var t = e.replace(Z, ee);
        return function (e) {
          var n = void 0 !== e.getAttributeNode && e.getAttributeNode('id');
          return n && n.value === t
        }
      }, i.find.ID = function (e, t) {
        if (void 0 !== t.getElementById && m) {
          var n,
          i,
          r,
          o = t.getElementById(e);
          if (o) {
            if ((n = o.getAttributeNode('id')) && n.value === e) return [o];
            for (r = t.getElementsByName(e), i = 0; o = r[i++]; ) if ((n = o.getAttributeNode('id')) && n.value === e) return [o]
          }
          return []
        }
      }), i.find.TAG = n.getElementsByTagName ? function (e, t) {
        return void 0 !== t.getElementsByTagName ? t.getElementsByTagName(e)  : n.qsa ? t.querySelectorAll(e)  : void 0
      }
       : function (e, t) {
        var n,
        i = [
        ],
        r = 0,
        o = t.getElementsByTagName(e);
        if ('*' === e) {
          for (; n = o[r++]; ) 1 === n.nodeType && i.push(n);
          return i
        }
        return o
      }, i.find.CLASS = n.getElementsByClassName && function (e, t) {
        if (void 0 !== t.getElementsByClassName && m) return t.getElementsByClassName(e)
      }, v = [
      ], g = [
      ], (n.qsa = z.test(h.querySelectorAll)) && (le(function (e) {
        p.appendChild(e).innerHTML = '<a id=\'' + _ + '\'></a><select id=\'' + _ + '-\r\\\' msallowcapture=\'\'><option selected=\'\'></option></select>',
        e.querySelectorAll('[msallowcapture^=\'\']').length && g.push('[*^$]=' + P + '*(?:\'\'|"")'),
        e.querySelectorAll('[selected]').length || g.push('\\[' + P + '*(?:value|' + $ + ')'),
        e.querySelectorAll('[id~=' + _ + '-]').length || g.push('~='),
        e.querySelectorAll(':checked').length || g.push(':checked'),
        e.querySelectorAll('a#' + _ + '+*').length || g.push('.#.+[+~]')
      }), le(function (e) {
        e.innerHTML = '<a href=\'\' disabled=\'disabled\'></a><select disabled=\'disabled\'><option/></select>';
        var t = h.createElement('input');
        t.setAttribute('type', 'hidden'),
        e.appendChild(t).setAttribute('name', 'D'),
        e.querySelectorAll('[name=d]').length && g.push('name' + P + '*[*^$|!~]?='),
        2 !== e.querySelectorAll(':enabled').length && g.push(':enabled', ':disabled'),
        p.appendChild(e).disabled = !0,
        2 !== e.querySelectorAll(':disabled').length && g.push(':enabled', ':disabled'),
        e.querySelectorAll('*,:x'),
        g.push(',.*:')
      })), (n.matchesSelector = z.test(y = p.matches || p.webkitMatchesSelector || p.mozMatchesSelector || p.oMatchesSelector || p.msMatchesSelector)) && le(function (e) {
        n.disconnectedMatch = y.call(e, '*'),
        y.call(e, '[s!=\'\']:x'),
        v.push('!=', F)
      }), g = g.length && new RegExp(g.join('|')), v = v.length && new RegExp(v.join('|')), t = z.test(p.compareDocumentPosition), b = t || z.test(p.contains) ? function (e, t) {
        var n = 9 === e.nodeType ? e.documentElement : e,
        i = t && t.parentNode;
        return e === i || !(!i || 1 !== i.nodeType || !(n.contains ? n.contains(i)  : e.compareDocumentPosition && 16 & e.compareDocumentPosition(i)))
      }
       : function (e, t) {
        if (t) for (; t = t.parentNode; ) if (t === e) return !0;
        return !1
      }, S = t ? function (e, t) {
        if (e === t) return f = !0,
        0;
        var i = !e.compareDocumentPosition - !t.compareDocumentPosition;
        return i || (1 & (i = (e.ownerDocument || e) === (t.ownerDocument || t) ? e.compareDocumentPosition(t)  : 1) || !n.sortDetached && t.compareDocumentPosition(e) === i ? e === h || e.ownerDocument === w && b(w, e) ? - 1 : t === h || t.ownerDocument === w && b(w, t) ? 1 : u ? L(u, e) - L(u, t)  : 0 : 4 & i ? - 1 : 1)
      }
       : function (e, t) {
        if (e === t) return f = !0,
        0;
        var n,
        i = 0,
        r = e.parentNode,
        o = t.parentNode,
        s = [
          e
        ],
        a = [
          t
        ];
        if (!r || !o) return e === h ? - 1 : t === h ? 1 : r ? - 1 : o ? 1 : u ? L(u, e) - L(u, t)  : 0;
        if (r === o) return ue(e, t);
        for (n = e; n = n.parentNode; ) s.unshift(n);
        for (n = t; n = n.parentNode; ) a.unshift(n);
        for (; s[i] === a[i]; ) i++;
        return i ? ue(s[i], a[i])  : s[i] === w ? - 1 : a[i] === w ? 1 : 0
      }, h)  : h
    }, oe.matches = function (e, t) {
      return oe(e, null, null, t)
    }, oe.matchesSelector = function (e, t) {
      if ((e.ownerDocument || e) !== h && d(e), t = t.replace(Q, '=\'$1\']'), n.matchesSelector && m && !A[t + ' '] && (!v || !v.test(t)) && (!g || !g.test(t))) try {
        var i = y.call(e, t);
        if (i || n.disconnectedMatch || e.document && 11 !== e.document.nodeType) return i
      } catch (e) {
      }
      return oe(t, h, null, [
        e
      ]).length > 0
    }, oe.contains = function (e, t) {
      return (e.ownerDocument || e) !== h && d(e),
      b(e, t)
    }, oe.attr = function (e, t) {
      (e.ownerDocument || e) !== h && d(e);
      var r = i.attrHandle[t.toLowerCase()],
      o = r && I.call(i.attrHandle, t.toLowerCase()) ? r(e, t, !m)  : void 0;
      return void 0 !== o ? o : n.attributes || !m ? e.getAttribute(t)  : (o = e.getAttributeNode(t)) && o.specified ? o.value : null
    }, oe.escape = function (e) {
      return (e + '').replace(te, ne)
    }, oe.error = function (e) {
      throw new Error('Syntax error, unrecognized expression: ' + e)
    }, oe.uniqueSort = function (e) {
      var t,
      i = [
      ],
      r = 0,
      o = 0;
      if (f = !n.detectDuplicates, u = !n.sortStable && e.slice(0), e.sort(S), f) {
        for (; t = e[o++]; ) t === e[o] && (r = i.push(o));
        for (; r--; ) e.splice(i[r], 1)
      }
      return u = null,
      e
    }, r = oe.getText = function (e) {
      var t,
      n = '',
      i = 0,
      o = e.nodeType;
      if (o) {
        if (1 === o || 9 === o || 11 === o) {
          if ('string' == typeof e.textContent) return e.textContent;
          for (e = e.firstChild; e; e = e.nextSibling) n += r(e)
        } else if (3 === o || 4 === o) return e.nodeValue
      } else for (; t = e[i++]; ) n += r(t);
      return n
    }, (i = oe.selectors = {
      cacheLength: 50,
      createPseudo: ae,
      match: V,
      attrHandle: {
      },
      find: {
      },
      relative: {
        '>': {
          dir: 'parentNode',
          first: !0
        },
        ' ': {
          dir: 'parentNode'
        },
        '+': {
          dir: 'previousSibling',
          first: !0
        },
        '~': {
          dir: 'previousSibling'
        }
      },
      preFilter: {
        ATTR: function (e) {
          return e[1] = e[1].replace(Z, ee),
          e[3] = (e[3] || e[4] || e[5] || '').replace(Z, ee),
          '~=' === e[2] && (e[3] = ' ' + e[3] + ' '),
          e.slice(0, 4)
        },
        CHILD: function (e) {
          return e[1] = e[1].toLowerCase(),
          'nth' === e[1].slice(0, 3) ? (e[3] || oe.error(e[0]), e[4] = + (e[4] ? e[5] + (e[6] || 1)  : 2 * ('even' === e[3] || 'odd' === e[3])), e[5] = + (e[7] + e[8] || 'odd' === e[3]))  : e[3] && oe.error(e[0]),
          e
        },
        PSEUDO: function (e) {
          var t,
          n = !e[6] && e[2];
          return V.CHILD.test(e[0]) ? null : (e[3] ? e[2] = e[4] || e[5] || '' : n && U.test(n) && (t = s(n, !0)) && (t = n.indexOf(')', n.length - t) - n.length) && (e[0] = e[0].slice(0, t), e[2] = n.slice(0, t)), e.slice(0, 3))
        }
      },
      filter: {
        TAG: function (e) {
          var t = e.replace(Z, ee).toLowerCase();
          return '*' === e ? function () {
            return !0
          }
           : function (e) {
            return e.nodeName && e.nodeName.toLowerCase() === t
          }
        },
        CLASS: function (e) {
          var t = T[e + ' '];
          return t || (t = new RegExp('(^|' + P + ')' + e + '(' + P + '|$)')) && T(e, function (e) {
            return t.test('string' == typeof e.className && e.className || void 0 !== e.getAttribute && e.getAttribute('class') || '')
          })
        },
        ATTR: function (e, t, n) {
          return function (i) {
            var r = oe.attr(i, e);
            return null == r ? '!=' === t : !t || (r += '', '=' === t ? r === n : '!=' === t ? r !== n : '^=' === t ? n && 0 === r.indexOf(n)  : '*=' === t ? n && r.indexOf(n) > - 1 : '$=' === t ? n && r.slice( - n.length) === n : '~=' === t ? (' ' + r.replace(R, ' ') + ' ').indexOf(n) > - 1 : '|=' === t && (r === n || r.slice(0, n.length + 1) === n + '-'))
          }
        },
        CHILD: function (e, t, n, i, r) {
          var o = 'nth' !== e.slice(0, 3),
          s = 'last' !== e.slice( - 4),
          a = 'of-type' === t;
          return 1 === i && 0 === r ? function (e) {
            return !!e.parentNode
          }
           : function (t, n, l) {
            var c,
            u,
            f,
            d,
            h,
            p,
            m = o !== s ? 'nextSibling' : 'previousSibling',
            g = t.parentNode,
            v = a && t.nodeName.toLowerCase(),
            y = !l && !a,
            b = !1;
            if (g) {
              if (o) {
                for (; m; ) {
                  for (d = t; d = d[m]; ) if (a ? d.nodeName.toLowerCase() === v : 1 === d.nodeType) return !1;
                  p = m = 'only' === e && !p && 'nextSibling'
                }
                return !0
              }
              if (p = [
                s ? g.firstChild : g.lastChild
              ], s && y) {
                for (b = (h = (c = (u = (f = (d = g) [_] || (d[_] = {
                })) [d.uniqueID] || (f[d.uniqueID] = {
                })) [e] || [
                ]) [0] === E && c[1]) && c[2], d = h && g.childNodes[h]; d = ++h && d && d[m] || (b = h = 0) || p.pop(); ) if (1 === d.nodeType && ++b && d === t) {
                  u[e] = [
                    E,
                    h,
                    b
                  ];
                  break
                }
              } else if (y && (b = h = (c = (u = (f = (d = t) [_] || (d[_] = {
              })) [d.uniqueID] || (f[d.uniqueID] = {
              })) [e] || [
              ]) [0] === E && c[1]), !1 === b) for (; (d = ++h && d && d[m] || (b = h = 0) || p.pop()) && ((a ? d.nodeName.toLowerCase() !== v : 1 !== d.nodeType) || !++b || (y && ((u = (f = d[_] || (d[_] = {
              })) [d.uniqueID] || (f[d.uniqueID] = {
              })) [e] = [
                E,
                b
              ]), d !== t)); );
              return (b -= r) === i || b % i == 0 && b / i >= 0
            }
          }
        },
        PSEUDO: function (e, t) {
          var n,
          r = i.pseudos[e] || i.setFilters[e.toLowerCase()] || oe.error('unsupported pseudo: ' + e);
          return r[_] ? r(t)  : r.length > 1 ? (n = [
            e,
            e,
            '',
            t
          ], i.setFilters.hasOwnProperty(e.toLowerCase()) ? ae(function (e, n) {
            for (var i, o = r(e, t), s = o.length; s--; ) e[i = L(e, o[s])] = !(n[i] = o[s])
          })  : function (e) {
            return r(e, 0, n)
          })  : r
        }
      },
      pseudos: {
        not: ae(function (e) {
          var t = [
          ],
          n = [
          ],
          i = a(e.replace(W, '$1'));
          return i[_] ? ae(function (e, t, n, r) {
            for (var o, s = i(e, null, r, [
            ]), a = e.length; a--; ) (o = s[a]) && (e[a] = !(t[a] = o))
          })  : function (e, r, o) {
            return t[0] = e,
            i(t, null, o, n),
            t[0] = null,
            !n.pop()
          }
        }),
        has: ae(function (e) {
          return function (t) {
            return oe(e, t).length > 0
          }
        }),
        contains: ae(function (e) {
          return e = e.replace(Z, ee),
          function (t) {
            return (t.textContent || t.innerText || r(t)).indexOf(e) > - 1
          }
        }),
        lang: ae(function (e) {
          return G.test(e || '') || oe.error('unsupported lang: ' + e),
          e = e.replace(Z, ee).toLowerCase(),
          function (t) {
            var n;
            do {
              if (n = m ? t.lang : t.getAttribute('xml:lang') || t.getAttribute('lang')) return (n = n.toLowerCase()) === e || 0 === n.indexOf(e + '-')
            } while ((t = t.parentNode) && 1 === t.nodeType);
            return !1
          }
        }),
        target: function (t) {
          var n = e.location && e.location.hash;
          return n && n.slice(1) === t.id
        },
        root: function (e) {
          return e === p
        },
        focus: function (e) {
          return e === h.activeElement && (!h.hasFocus || h.hasFocus()) && !!(e.type || e.href || ~e.tabIndex)
        },
        enabled: he(!1),
        disabled: he(!0),
        checked: function (e) {
          var t = e.nodeName.toLowerCase();
          return 'input' === t && !!e.checked || 'option' === t && !!e.selected
        },
        selected: function (e) {
          return !0 === e.selected
        },
        empty: function (e) {
          for (e = e.firstChild; e; e = e.nextSibling) if (e.nodeType < 6) return !1;
          return !0
        },
        parent: function (e) {
          return !i.pseudos.empty(e)
        },
        header: function (e) {
          return Y.test(e.nodeName)
        },
        input: function (e) {
          return K.test(e.nodeName)
        },
        button: function (e) {
          var t = e.nodeName.toLowerCase();
          return 'input' === t && 'button' === e.type || 'button' === t
        },
        text: function (e) {
          var t;
          return 'input' === e.nodeName.toLowerCase() && 'text' === e.type && (null == (t = e.getAttribute('type')) || 'text' === t.toLowerCase())
        },
        first: pe(function () {
          return [0]
        }),
        last: pe(function (e, t) {
          return [t - 1]
        }),
        eq: pe(function (e, t, n) {
          return [n < 0 ? n + t : n]
        }),
        even: pe(function (e, t) {
          for (var n = 0; n < t; n += 2) e.push(n);
          return e
        }),
        odd: pe(function (e, t) {
          for (var n = 1; n < t; n += 2) e.push(n);
          return e
        }),
        lt: pe(function (e, t, n) {
          for (var i = n < 0 ? n + t : n; --i >= 0; ) e.push(i);
          return e
        }),
        gt: pe(function (e, t, n) {
          for (var i = n < 0 ? n + t : n; ++i < t; ) e.push(i);
          return e
        })
      }
    }).pseudos.nth = i.pseudos.eq, {
      radio: !0,
      checkbox: !0,
      file: !0,
      password: !0,
      image: !0
    }) i.pseudos[t] = fe(t);
    for (t in {
      submit: !0,
      reset: !0
    }) i.pseudos[t] = de(t);
    function ge() {
    }
    function ve(e) {
      for (var t = 0, n = e.length, i = ''; t < n; t++) i += e[t].value;
      return i
    }
    function ye(e, t, n) {
      var i = t.dir,
      r = t.next,
      o = r || i,
      s = n && 'parentNode' === o,
      a = C++;
      return t.first ? function (t, n, r) {
        for (; t = t[i]; ) if (1 === t.nodeType || s) return e(t, n, r);
        return !1
      }
       : function (t, n, l) {
        var c,
        u,
        f,
        d = [
          E,
          a
        ];
        if (l) {
          for (; t = t[i]; ) if ((1 === t.nodeType || s) && e(t, n, l)) return !0
        } else for (; t = t[i]; ) if (1 === t.nodeType || s) if (u = (f = t[_] || (t[_] = {
        })) [t.uniqueID] || (f[t.uniqueID] = {
        }), r && r === t.nodeName.toLowerCase()) t = t[i] || t;
         else {
          if ((c = u[o]) && c[0] === E && c[1] === a) return d[2] = c[2];
          if (u[o] = d, d[2] = e(t, n, l)) return !0
        }
        return !1
      }
    }
    function be(e) {
      return e.length > 1 ? function (t, n, i) {
        for (var r = e.length; r--; ) if (!e[r](t, n, i)) return !1;
        return !0
      }
       : e[0]
    }
    function _e(e, t, n, i, r) {
      for (var o, s = [
      ], a = 0, l = e.length, c = null != t; a < l; a++) (o = e[a]) && (n && !n(o, i, r) || (s.push(o), c && t.push(a)));
      return s
    }
    function we(e, t, n, i, r, o) {
      return i && !i[_] && (i = we(i)),
      r && !r[_] && (r = we(r, o)),
      ae(function (o, s, a, l) {
        var c,
        u,
        f,
        d = [
        ],
        h = [
        ],
        p = s.length,
        m = o || function (e, t, n) {
          for (var i = 0, r = t.length; i < r; i++) oe(e, t[i], n);
          return n
        }(t || '*', a.nodeType ? [
          a
        ] : a, [
        ]),
        g = !e || !o && t ? m : _e(m, d, e, a, l),
        v = n ? r || (o ? e : p || i) ? [
        ] : s : g;
        if (n && n(g, v, a, l), i) for (c = _e(v, h), i(c, [
        ], a, l), u = c.length; u--; ) (f = c[u]) && (v[h[u]] = !(g[h[u]] = f));
        if (o) {
          if (r || e) {
            if (r) {
              for (c = [
              ], u = v.length; u--; ) (f = v[u]) && c.push(g[u] = f);
              r(null, v = [
              ], c, l)
            }
            for (u = v.length; u--; ) (f = v[u]) && (c = r ? L(o, f)  : d[u]) > - 1 && (o[c] = !(s[c] = f))
          }
        } else v = _e(v === s ? v.splice(p, v.length)  : v),
        r ? r(null, s, v, l)  : O.apply(s, v)
      })
    }
    function Ee(e) {
      for (var t, n, r, o = e.length, s = i.relative[e[0].type], a = s || i.relative[' '], l = s ? 1 : 0, u = ye(function (e) {
        return e === t
      }, a, !0), f = ye(function (e) {
        return L(t, e) > - 1
      }, a, !0), d = [
        function (e, n, i) {
          var r = !s && (i || n !== c) || ((t = n).nodeType ? u(e, n, i)  : f(e, n, i));
          return t = null,
          r
        }
      ]; l < o; l++) if (n = i.relative[e[l].type]) d = [
        ye(be(d), n)
      ];
       else {
        if ((n = i.filter[e[l].type].apply(null, e[l].matches)) [_]) {
          for (r = ++l; r < o && !i.relative[e[r].type]; r++);
          return we(l > 1 && be(d), l > 1 && ve(e.slice(0, l - 1).concat({
            value: ' ' === e[l - 2].type ? '*' : ''
          })).replace(W, '$1'), n, l < r && Ee(e.slice(l, r)), r < o && Ee(e = e.slice(r)), r < o && ve(e))
        }
        d.push(n)
      }
      return be(d)
    }
    return ge.prototype = i.filters = i.pseudos,
    i.setFilters = new ge,
    s = oe.tokenize = function (e, t) {
      var n,
      r,
      o,
      s,
      a,
      l,
      c,
      u = x[e + ' '];
      if (u) return t ? 0 : u.slice(0);
      for (a = e, l = [
      ], c = i.preFilter; a; ) {
        for (s in n && !(r = q.exec(a)) || (r && (a = a.slice(r[0].length) || a), l.push(o = [
        ])), n = !1, (r = B.exec(a)) && (n = r.shift(), o.push({
          value: n,
          type: r[0].replace(W, ' ')
        }), a = a.slice(n.length)), i.filter) !(r = V[s].exec(a)) || c[s] && !(r = c[s](r)) || (n = r.shift(), o.push({
          value: n,
          type: s,
          matches: r
        }), a = a.slice(n.length));
        if (!n) break
      }
      return t ? a.length : a ? oe.error(e)  : x(e, l).slice(0)
    },
    a = oe.compile = function (e, t) {
      var n,
      r = [
      ],
      o = [
      ],
      a = A[e + ' '];
      if (!a) {
        for (t || (t = s(e)), n = t.length; n--; ) (a = Ee(t[n])) [_] ? r.push(a)  : o.push(a);
        (a = A(e, function (e, t) {
          var n = t.length > 0,
          r = e.length > 0,
          o = function (o, s, a, l, u) {
            var f,
            p,
            g,
            v = 0,
            y = '0',
            b = o && [
            ],
            _ = [
            ],
            w = c,
            C = o || r && i.find.TAG('*', u),
            T = E += null == w ? 1 : Math.random() || 0.1,
            x = C.length;
            for (u && (c = s === h || s || u); y !== x && null != (f = C[y]); y++) {
              if (r && f) {
                for (p = 0, s || f.ownerDocument === h || (d(f), a = !m); g = e[p++]; ) if (g(f, s || h, a)) {
                  l.push(f);
                  break
                }
                u && (E = T)
              }
              n && ((f = !g && f) && v--, o && b.push(f))
            }
            if (v += y, n && y !== v) {
              for (p = 0; g = t[p++]; ) g(b, _, s, a);
              if (o) {
                if (v > 0) for (; y--; ) b[y] || _[y] || (_[y] = k.call(l));
                _ = _e(_)
              }
              O.apply(l, _),
              u && !o && _.length > 0 && v + t.length > 1 && oe.uniqueSort(l)
            }
            return u && (E = T, c = w),
            b
          };
          return n ? ae(o)  : o
        }(o, r))).selector = e
      }
      return a
    },
    l = oe.select = function (e, t, n, r) {
      var o,
      l,
      c,
      u,
      f,
      d = 'function' == typeof e && e,
      h = !r && s(e = d.selector || e);
      if (n = n || [
      ], 1 === h.length) {
        if ((l = h[0] = h[0].slice(0)).length > 2 && 'ID' === (c = l[0]).type && 9 === t.nodeType && m && i.relative[l[1].type]) {
          if (!(t = (i.find.ID(c.matches[0].replace(Z, ee), t) || [
          ]) [0])) return n;
          d && (t = t.parentNode),
          e = e.slice(l.shift().value.length)
        }
        for (o = V.needsContext.test(e) ? 0 : l.length; o-- && !i.relative[u = (c = l[o]).type]; ) if ((f = i.find[u]) && (r = f(c.matches[0].replace(Z, ee), J.test(l[0].type) && me(t.parentNode) || t))) {
          if (l.splice(o, 1), !(e = r.length && ve(l))) return O.apply(n, r),
          n;
          break
        }
      }
      return (d || a(e, h)) (r, t, !m, n, !t || J.test(e) && me(t.parentNode) || t),
      n
    },
    n.sortStable = _.split('').sort(S).join('') === _,
    n.detectDuplicates = !!f,
    d(),
    n.sortDetached = le(function (e) {
      return 1 & e.compareDocumentPosition(h.createElement('fieldset'))
    }),
    le(function (e) {
      return e.innerHTML = '<a href=\'#\'></a>',
      '#' === e.firstChild.getAttribute('href')
    }) || ce('type|href|height|width', function (e, t, n) {
      if (!n) return e.getAttribute(t, 'type' === t.toLowerCase() ? 1 : 2)
    }),
    n.attributes && le(function (e) {
      return e.innerHTML = '<input/>',
      e.firstChild.setAttribute('value', ''),
      '' === e.firstChild.getAttribute('value')
    }) || ce('value', function (e, t, n) {
      if (!n && 'input' === e.nodeName.toLowerCase()) return e.defaultValue
    }),
    le(function (e) {
      return null == e.getAttribute('disabled')
    }) || ce($, function (e, t, n) {
      var i;
      if (!n) return !0 === e[t] ? t.toLowerCase()  : (i = e.getAttributeNode(t)) && i.specified ? i.value : null
    }),
    oe
  }(e);
  _.find = C,
  _.expr = C.selectors,
  _.expr[':'] = _.expr.pseudos,
  _.uniqueSort = _.unique = C.uniqueSort,
  _.text = C.getText,
  _.isXMLDoc = C.isXML,
  _.contains = C.contains,
  _.escapeSelector = C.escape;
  var T = function (e, t, n) {
    for (var i = [
    ], r = void 0 !== n; (e = e[t]) && 9 !== e.nodeType; ) if (1 === e.nodeType) {
      if (r && _(e).is(n)) break;
      i.push(e)
    }
    return i
  },
  x = function (e, t) {
    for (var n = [
    ]; e; e = e.nextSibling) 1 === e.nodeType && e !== t && n.push(e);
    return n
  },
  A = _.expr.match.needsContext;
  function S(e, t) {
    return e.nodeName && e.nodeName.toLowerCase() === t.toLowerCase()
  }
  var I = /^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;
  function D(e, t, n) {
    return m(t) ? _.grep(e, function (e, i) {
      return !!t.call(e, i, e) !== n
    })  : t.nodeType ? _.grep(e, function (e) {
      return e === t !== n
    })  : 'string' != typeof t ? _.grep(e, function (e) {
      return l.call(t, e) > - 1 !== n
    })  : _.filter(t, e, n)
  }
  _.filter = function (e, t, n) {
    var i = t[0];
    return n && (e = ':not(' + e + ')'),
    1 === t.length && 1 === i.nodeType ? _.find.matchesSelector(i, e) ? [
      i
    ] : [
    ] : _.find.matches(e, _.grep(t, function (e) {
      return 1 === e.nodeType
    }))
  },
  _.fn.extend({
    find: function (e) {
      var t,
      n,
      i = this.length,
      r = this;
      if ('string' != typeof e) return this.pushStack(_(e).filter(function () {
        for (t = 0; t < i; t++) if (_.contains(r[t], this)) return !0
      }));
      for (n = this.pushStack([]), t = 0; t < i; t++) _.find(e, r[t], n);
      return i > 1 ? _.uniqueSort(n)  : n
    },
    filter: function (e) {
      return this.pushStack(D(this, e || [
      ], !1))
    },
    not: function (e) {
      return this.pushStack(D(this, e || [
      ], !0))
    },
    is: function (e) {
      return !!D(this, 'string' == typeof e && A.test(e) ? _(e)  : e || [
      ], !1).length
    }
  });
  var k,
  N = /^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;
  (_.fn.init = function (e, t, n) {
    var r,
    o;
    if (!e) return this;
    if (n = n || k, 'string' == typeof e) {
      if (!(r = '<' === e[0] && '>' === e[e.length - 1] && e.length >= 3 ? [
        null,
        e,
        null
      ] : N.exec(e)) || !r[1] && t) return !t || t.jquery ? (t || n).find(e)  : this.constructor(t).find(e);
      if (r[1]) {
        if (_.merge(this, _.parseHTML(r[1], (t = t instanceof _ ? t[0] : t) && t.nodeType ? t.ownerDocument || t : i, !0)), I.test(r[1]) && _.isPlainObject(t)) for (r in t) m(this[r]) ? this[r](t[r])  : this.attr(r, t[r]);
        return this
      }
      return (o = i.getElementById(r[2])) && (this[0] = o, this.length = 1),
      this
    }
    return e.nodeType ? (this[0] = e, this.length = 1, this)  : m(e) ? void 0 !== n.ready ? n.ready(e)  : e(_)  : _.makeArray(e, this)
  }).prototype = _.fn,
  k = _(i);
  var O = /^(?:parents|prev(?:Until|All))/,
  j = {
    children: !0,
    contents: !0,
    next: !0,
    prev: !0
  };
  function L(e, t) {
    for (; (e = e[t]) && 1 !== e.nodeType; );
    return e
  }
  _.fn.extend({
    has: function (e) {
      var t = _(e, this),
      n = t.length;
      return this.filter(function () {
        for (var e = 0; e < n; e++) if (_.contains(this, t[e])) return !0
      })
    },
    closest: function (e, t) {
      var n,
      i = 0,
      r = this.length,
      o = [
      ],
      s = 'string' != typeof e && _(e);
      if (!A.test(e)) for (; i < r; i++) for (n = this[i]; n && n !== t; n = n.parentNode) if (n.nodeType < 11 && (s ? s.index(n) > - 1 : 1 === n.nodeType && _.find.matchesSelector(n, e))) {
        o.push(n);
        break
      }
      return this.pushStack(o.length > 1 ? _.uniqueSort(o)  : o)
    },
    index: function (e) {
      return e ? 'string' == typeof e ? l.call(_(e), this[0])  : l.call(this, e.jquery ? e[0] : e)  : this[0] && this[0].parentNode ? this.first().prevAll().length : - 1
    },
    add: function (e, t) {
      return this.pushStack(_.uniqueSort(_.merge(this.get(), _(e, t))))
    },
    addBack: function (e) {
      return this.add(null == e ? this.prevObject : this.prevObject.filter(e))
    }
  }),
  _.each({
    parent: function (e) {
      var t = e.parentNode;
      return t && 11 !== t.nodeType ? t : null
    },
    parents: function (e) {
      return T(e, 'parentNode')
    },
    parentsUntil: function (e, t, n) {
      return T(e, 'parentNode', n)
    },
    next: function (e) {
      return L(e, 'nextSibling')
    },
    prev: function (e) {
      return L(e, 'previousSibling')
    },
    nextAll: function (e) {
      return T(e, 'nextSibling')
    },
    prevAll: function (e) {
      return T(e, 'previousSibling')
    },
    nextUntil: function (e, t, n) {
      return T(e, 'nextSibling', n)
    },
    prevUntil: function (e, t, n) {
      return T(e, 'previousSibling', n)
    },
    siblings: function (e) {
      return x((e.parentNode || {
      }).firstChild, e)
    },
    children: function (e) {
      return x(e.firstChild)
    },
    contents: function (e) {
      return S(e, 'iframe') ? e.contentDocument : (S(e, 'template') && (e = e.content || e), _.merge([], e.childNodes))
    }
  }, function (e, t) {
    _.fn[e] = function (n, i) {
      var r = _.map(this, t, n);
      return 'Until' !== e.slice( - 5) && (i = n),
      i && 'string' == typeof i && (r = _.filter(i, r)),
      this.length > 1 && (j[e] || _.uniqueSort(r), O.test(e) && r.reverse()),
      this.pushStack(r)
    }
  });
  var $ = /[^\x20\t\r\n\f]+/g;
  function P(e) {
    return e
  }
  function M(e) {
    throw e
  }
  function H(e, t, n, i) {
    var r;
    try {
      e && m(r = e.promise) ? r.call(e).done(t).fail(n)  : e && m(r = e.then) ? r.call(e, t, n)  : t.apply(void 0, [
        e
      ].slice(i))
    } catch (e) {
      n.apply(void 0, [
        e
      ])
    }
  }
  _.Callbacks = function (e) {
    e = 'string' == typeof e ? function (e) {
      var t = {
      };
      return _.each(e.match($) || [
      ], function (e, n) {
        t[n] = !0
      }),
      t
    }(e)  : _.extend({
    }, e);
    var t,
    n,
    i,
    r,
    o = [
    ],
    s = [
    ],
    a = - 1,
    l = function () {
      for (r = r || e.once, i = t = !0; s.length; a = - 1) for (n = s.shift(); ++a < o.length; ) !1 === o[a].apply(n[0], n[1]) && e.stopOnFalse && (a = o.length, n = !1);
      e.memory || (n = !1),
      t = !1,
      r && (o = n ? [
      ] : '')
    },
    c = {
      add: function () {
        return o && (n && !t && (a = o.length - 1, s.push(n)), function t(n) {
          _.each(n, function (n, i) {
            m(i) ? e.unique && c.has(i) || o.push(i)  : i && i.length && 'string' !== b(i) && t(i)
          })
        }(arguments), n && !t && l()),
        this
      },
      remove: function () {
        return _.each(arguments, function (e, t) {
          for (var n; (n = _.inArray(t, o, n)) > - 1; ) o.splice(n, 1),
          n <= a && a--
        }),
        this
      },
      has: function (e) {
        return e ? _.inArray(e, o) > - 1 : o.length > 0
      },
      empty: function () {
        return o && (o = [
        ]),
        this
      },
      disable: function () {
        return r = s = [
        ],
        o = n = '',
        this
      },
      disabled: function () {
        return !o
      },
      lock: function () {
        return r = s = [
        ],
        n || t || (o = n = ''),
        this
      },
      locked: function () {
        return !!r
      },
      fireWith: function (e, n) {
        return r || (n = [
          e,
          (n = n || [
          ]).slice ? n.slice()  : n
        ], s.push(n), t || l()),
        this
      },
      fire: function () {
        return c.fireWith(this, arguments),
        this
      },
      fired: function () {
        return !!i
      }
    };
    return c
  },
  _.extend({
    Deferred: function (t) {
      var n = [
        ['notify',
        'progress',
        _.Callbacks('memory'),
        _.Callbacks('memory'),
        2],
        [
          'resolve',
          'done',
          _.Callbacks('once memory'),
          _.Callbacks('once memory'),
          0,
          'resolved'
        ],
        [
          'reject',
          'fail',
          _.Callbacks('once memory'),
          _.Callbacks('once memory'),
          1,
          'rejected'
        ]
      ],
      i = 'pending',
      r = {
        state: function () {
          return i
        },
        always: function () {
          return o.done(arguments).fail(arguments),
          this
        },
        catch : function (e) {
          return r.then(null, e)
        },
        pipe: function () {
          var e = arguments;
          return _.Deferred(function (t) {
            _.each(n, function (n, i) {
              var r = m(e[i[4]]) && e[i[4]];
              o[i[1]](function () {
                var e = r && r.apply(this, arguments);
                e && m(e.promise) ? e.promise().progress(t.notify).done(t.resolve).fail(t.reject)  : t[i[0] + 'With'](this, r ? [
                  e
                ] : arguments)
              })
            }),
            e = null
          }).promise()
        },
        then: function (t, i, r) {
          var o = 0;
          function s(t, n, i, r) {
            return function () {
              var a = this,
              l = arguments,
              c = function () {
                var e,
                c;
                if (!(t < o)) {
                  if ((e = i.apply(a, l)) === n.promise()) throw new TypeError('Thenable self-resolution');
                  m(c = e && ('object' == typeof e || 'function' == typeof e) && e.then) ? r ? c.call(e, s(o, n, P, r), s(o, n, M, r))  : c.call(e, s(++o, n, P, r), s(o, n, M, r), s(o, n, P, n.notifyWith))  : (i !== P && (a = void 0, l = [
                    e
                  ]), (r || n.resolveWith) (a, l))
                }
              },
              u = r ? c : function () {
                try {
                  c()
                } catch (e) {
                  _.Deferred.exceptionHook && _.Deferred.exceptionHook(e, u.stackTrace),
                  t + 1 >= o && (i !== M && (a = void 0, l = [
                    e
                  ]), n.rejectWith(a, l))
                }
              };
              t ? u()  : (_.Deferred.getStackHook && (u.stackTrace = _.Deferred.getStackHook()), e.setTimeout(u))
            }
          }
          return _.Deferred(function (e) {
            n[0][3].add(s(0, e, m(r) ? r : P, e.notifyWith)),
            n[1][3].add(s(0, e, m(t) ? t : P)),
            n[2][3].add(s(0, e, m(i) ? i : M))
          }).promise()
        },
        promise: function (e) {
          return null != e ? _.extend(e, r)  : r
        }
      },
      o = {
      };
      return _.each(n, function (e, t) {
        var s = t[2],
        a = t[5];
        r[t[1]] = s.add,
        a && s.add(function () {
          i = a
        }, n[3 - e][2].disable, n[3 - e][3].disable, n[0][2].lock, n[0][3].lock),
        s.add(t[3].fire),
        o[t[0]] = function () {
          return o[t[0] + 'With'](this === o ? void 0 : this, arguments),
          this
        },
        o[t[0] + 'With'] = s.fireWith
      }),
      r.promise(o),
      t && t.call(o, o),
      o
    },
    when: function (e) {
      var t = arguments.length,
      n = t,
      i = Array(n),
      r = o.call(arguments),
      s = _.Deferred(),
      a = function (e) {
        return function (n) {
          i[e] = this,
          r[e] = arguments.length > 1 ? o.call(arguments)  : n,
          --t || s.resolveWith(i, r)
        }
      };
      if (t <= 1 && (H(e, s.done(a(n)).resolve, s.reject, !t), 'pending' === s.state() || m(r[n] && r[n].then))) return s.then();
      for (; n--; ) H(r[n], a(n), s.reject);
      return s.promise()
    }
  });
  var F = /^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;
  _.Deferred.exceptionHook = function (t, n) {
    e.console && e.console.warn && t && F.test(t.name) && e.console.warn('jQuery.Deferred exception: ' + t.message, t.stack, n)
  },
  _.readyException = function (t) {
    e.setTimeout(function () {
      throw t
    })
  };
  var R = _.Deferred();
  function W() {
    i.removeEventListener('DOMContentLoaded', W),
    e.removeEventListener('load', W),
    _.ready()
  }
  _.fn.ready = function (e) {
    return R.then(e).catch (function (e) {
      _.readyException(e)
    }),
    this
  },
  _.extend({
    isReady: !1,
    readyWait: 1,
    ready: function (e) {
      (!0 === e ? --_.readyWait : _.isReady) || (_.isReady = !0, !0 !== e && --_.readyWait > 0 || R.resolveWith(i, [
        _
      ]))
    }
  }),
  _.ready.then = R.then,
  'complete' === i.readyState || 'loading' !== i.readyState && !i.documentElement.doScroll ? e.setTimeout(_.ready)  : (i.addEventListener('DOMContentLoaded', W), e.addEventListener('load', W));
  var q = function (e, t, n, i, r, o, s) {
    var a = 0,
    l = e.length,
    c = null == n;
    if ('object' === b(n)) for (a in r = !0, n) q(e, t, a, n[a], !0, o, s);
     else if (void 0 !== i && (r = !0, m(i) || (s = !0), c && (s ? (t.call(e, i), t = null)  : (c = t, t = function (e, t, n) {
      return c.call(_(e), n)
    })), t)) for (; a < l; a++) t(e[a], n, s ? i : i.call(e[a], a, t(e[a], n)));
    return r ? e : c ? t.call(e)  : l ? t(e[0], n)  : o
  },
  B = /^-ms-/,
  Q = /-([a-z])/g;
  function U(e, t) {
    return t.toUpperCase()
  }
  function G(e) {
    return e.replace(B, 'ms-').replace(Q, U)
  }
  var V = function (e) {
    return 1 === e.nodeType || 9 === e.nodeType || ! + e.nodeType
  };
  function K() {
    this.expando = _.expando + K.uid++
  }
  K.uid = 1,
  K.prototype = {
    cache: function (e) {
      var t = e[this.expando];
      return t || (t = {
      }, V(e) && (e.nodeType ? e[this.expando] = t : Object.defineProperty(e, this.expando, {
        value: t,
        configurable: !0
      }))),
      t
    },
    set: function (e, t, n) {
      var i,
      r = this.cache(e);
      if ('string' == typeof t) r[G(t)] = n;
       else for (i in t) r[G(i)] = t[i];
      return r
    },
    get: function (e, t) {
      return void 0 === t ? this.cache(e)  : e[this.expando] && e[this.expando][G(t)]
    },
    access: function (e, t, n) {
      return void 0 === t || t && 'string' == typeof t && void 0 === n ? this.get(e, t)  : (this.set(e, t, n), void 0 !== n ? n : t)
    },
    remove: function (e, t) {
      var n,
      i = e[this.expando];
      if (void 0 !== i) {
        if (void 0 !== t) {
          n = (t = Array.isArray(t) ? t.map(G)  : (t = G(t)) in i ? [
            t
          ] : t.match($) || [
          ]).length;
          for (; n--; ) delete i[t[n]]
        }(void 0 === t || _.isEmptyObject(i)) && (e.nodeType ? e[this.expando] = void 0 : delete e[this.expando])
      }
    },
    hasData: function (e) {
      var t = e[this.expando];
      return void 0 !== t && !_.isEmptyObject(t)
    }
  };
  var Y = new K,
  z = new K,
  X = /^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,
  J = /[A-Z]/g;
  function Z(e, t, n) {
    var i;
    if (void 0 === n && 1 === e.nodeType) if (i = 'data-' + t.replace(J, '-$&').toLowerCase(), 'string' == typeof (n = e.getAttribute(i))) {
      try {
        n = function (e) {
          return 'true' === e || 'false' !== e && ('null' === e ? null : e === + e + '' ? + e : X.test(e) ? JSON.parse(e)  : e)
        }(n)
      } catch (e) {
      }
      z.set(e, t, n)
    } else n = void 0;
    return n
  }
  _.extend({
    hasData: function (e) {
      return z.hasData(e) || Y.hasData(e)
    },
    data: function (e, t, n) {
      return z.access(e, t, n)
    },
    removeData: function (e, t) {
      z.remove(e, t)
    },
    _data: function (e, t, n) {
      return Y.access(e, t, n)
    },
    _removeData: function (e, t) {
      Y.remove(e, t)
    }
  }),
  _.fn.extend({
    data: function (e, t) {
      var n,
      i,
      r,
      o = this[0],
      s = o && o.attributes;
      if (void 0 === e) {
        if (this.length && (r = z.get(o), 1 === o.nodeType && !Y.get(o, 'hasDataAttrs'))) {
          for (n = s.length; n--; ) s[n] && 0 === (i = s[n].name).indexOf('data-') && (i = G(i.slice(5)), Z(o, i, r[i]));
          Y.set(o, 'hasDataAttrs', !0)
        }
        return r
      }
      return 'object' == typeof e ? this.each(function () {
        z.set(this, e)
      })  : q(this, function (t) {
        var n;
        if (o && void 0 === t) return void 0 !== (n = z.get(o, e)) ? n : void 0 !== (n = Z(o, e)) ? n : void 0;
        this.each(function () {
          z.set(this, e, t)
        })
      }, null, t, arguments.length > 1, null, !0)
    },
    removeData: function (e) {
      return this.each(function () {
        z.remove(this, e)
      })
    }
  }),
  _.extend({
    queue: function (e, t, n) {
      var i;
      if (e) return i = Y.get(e, t = (t || 'fx') + 'queue'),
      n && (!i || Array.isArray(n) ? i = Y.access(e, t, _.makeArray(n))  : i.push(n)),
      i || [
      ]
    },
    dequeue: function (e, t) {
      var n = _.queue(e, t = t || 'fx'),
      i = n.length,
      r = n.shift(),
      o = _._queueHooks(e, t);
      'inprogress' === r && (r = n.shift(), i--),
      r && ('fx' === t && n.unshift('inprogress'), delete o.stop, r.call(e, function () {
        _.dequeue(e, t)
      }, o)),
      !i && o && o.empty.fire()
    },
    _queueHooks: function (e, t) {
      var n = t + 'queueHooks';
      return Y.get(e, n) || Y.access(e, n, {
        empty: _.Callbacks('once memory').add(function () {
          Y.remove(e, [
            t + 'queue',
            n
          ])
        })
      })
    }
  }),
  _.fn.extend({
    queue: function (e, t) {
      var n = 2;
      return 'string' != typeof e && (t = e, e = 'fx', n--),
      arguments.length < n ? _.queue(this[0], e)  : void 0 === t ? this : this.each(function () {
        var n = _.queue(this, e, t);
        _._queueHooks(this, e),
        'fx' === e && 'inprogress' !== n[0] && _.dequeue(this, e)
      })
    },
    dequeue: function (e) {
      return this.each(function () {
        _.dequeue(this, e)
      })
    },
    clearQueue: function (e) {
      return this.queue(e || 'fx', [
      ])
    },
    promise: function (e, t) {
      var n,
      i = 1,
      r = _.Deferred(),
      o = this,
      s = this.length,
      a = function () {
        --i || r.resolveWith(o, [
          o
        ])
      };
      for ('string' != typeof e && (t = e, e = void 0), e = e || 'fx'; s--; ) (n = Y.get(o[s], e + 'queueHooks')) && n.empty && (i++, n.empty.add(a));
      return a(),
      r.promise(t)
    }
  });
  var ee = /[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,
  te = new RegExp('^(?:([+-])=|)(' + ee + ')([a-z%]*)$', 'i'),
  ne = [
    'Top',
    'Right',
    'Bottom',
    'Left'
  ],
  ie = function (e, t) {
    return 'none' === (e = t || e).style.display || '' === e.style.display && _.contains(e.ownerDocument, e) && 'none' === _.css(e, 'display')
  },
  re = function (e, t, n, i) {
    var r,
    o,
    s = {
    };
    for (o in t) s[o] = e.style[o],
    e.style[o] = t[o];
    for (o in r = n.apply(e, i || [
    ]), t) e.style[o] = s[o];
    return r
  };
  function oe(e, t, n, i) {
    var r,
    o,
    s = 20,
    a = i ? function () {
      return i.cur()
    }
     : function () {
      return _.css(e, t, '')
    },
    l = a(),
    c = n && n[3] || (_.cssNumber[t] ? '' : 'px'),
    u = (_.cssNumber[t] || 'px' !== c && + l) && te.exec(_.css(e, t));
    if (u && u[3] !== c) {
      for (l /= 2, c = c || u[3], u = + l || 1; s--; ) _.style(e, t, u + c),
      (1 - o) * (1 - (o = a() / l || 0.5)) <= 0 && (s = 0),
      u /= o;
      _.style(e, t, (u *= 2) + c),
      n = n || [
      ]
    }
    return n && (u = + u || + l || 0, r = n[1] ? u + (n[1] + 1) * n[2] : + n[2], i && (i.unit = c, i.start = u, i.end = r)),
    r
  }
  var se = {
  };
  function ae(e) {
    var t,
    n = e.ownerDocument,
    i = e.nodeName,
    r = se[i];
    return r || (t = n.body.appendChild(n.createElement(i)), r = _.css(t, 'display'), t.parentNode.removeChild(t), 'none' === r && (r = 'block'), se[i] = r, r)
  }
  function le(e, t) {
    for (var n, i, r = [
    ], o = 0, s = e.length; o < s; o++) (i = e[o]).style && (n = i.style.display, t ? ('none' === n && (r[o] = Y.get(i, 'display') || null, r[o] || (i.style.display = '')), '' === i.style.display && ie(i) && (r[o] = ae(i)))  : 'none' !== n && (r[o] = 'none', Y.set(i, 'display', n)));
    for (o = 0; o < s; o++) null != r[o] && (e[o].style.display = r[o]);
    return e
  }
  _.fn.extend({
    show: function () {
      return le(this, !0)
    },
    hide: function () {
      return le(this)
    },
    toggle: function (e) {
      return 'boolean' == typeof e ? e ? this.show()  : this.hide()  : this.each(function () {
        ie(this) ? _(this).show()  : _(this).hide()
      })
    }
  });
  var ce = /^(?:checkbox|radio)$/i,
  ue = /<([a-z][^\/\0>\x20\t\r\n\f]+)/i,
  fe = /^$|^module$|\/(?:java|ecma)script/i,
  de = {
    option: [
      1,
      '<select multiple=\'multiple\'>',
      '</select>'
    ],
    thead: [
      1,
      '<table>',
      '</table>'
    ],
    col: [
      2,
      '<table><colgroup>',
      '</colgroup></table>'
    ],
    tr: [
      2,
      '<table><tbody>',
      '</tbody></table>'
    ],
    td: [
      3,
      '<table><tbody><tr>',
      '</tr></tbody></table>'
    ],
    _default: [
      0,
      '',
      ''
    ]
  };
  function he(e, t) {
    var n;
    return n = void 0 !== e.getElementsByTagName ? e.getElementsByTagName(t || '*')  : void 0 !== e.querySelectorAll ? e.querySelectorAll(t || '*')  : [
    ],
    void 0 === t || t && S(e, t) ? _.merge([e], n)  : n
  }
  function pe(e, t) {
    for (var n = 0, i = e.length; n < i; n++) Y.set(e[n], 'globalEval', !t || Y.get(t[n], 'globalEval'))
  }
  de.optgroup = de.option,
  de.tbody = de.tfoot = de.colgroup = de.caption = de.thead,
  de.th = de.td;
  var me,
  ge,
  ve = /<|&#?\w+;/;
  function ye(e, t, n, i, r) {
    for (var o, s, a, l, c, u, f = t.createDocumentFragment(), d = [
    ], h = 0, p = e.length; h < p; h++) if ((o = e[h]) || 0 === o) if ('object' === b(o)) _.merge(d, o.nodeType ? [
      o
    ] : o);
     else if (ve.test(o)) {
      for (s = s || f.appendChild(t.createElement('div')), a = (ue.exec(o) || [
        '',
        ''
      ]) [1].toLowerCase(), s.innerHTML = (l = de[a] || de._default) [1] + _.htmlPrefilter(o) + l[2], u = l[0]; u--; ) s = s.lastChild;
      _.merge(d, s.childNodes),
      (s = f.firstChild).textContent = ''
    } else d.push(t.createTextNode(o));
    for (f.textContent = '', h = 0; o = d[h++]; ) if (i && _.inArray(o, i) > - 1) r && r.push(o);
     else if (c = _.contains(o.ownerDocument, o), s = he(f.appendChild(o), 'script'), c && pe(s), n) for (u = 0; o = s[u++]; ) fe.test(o.type || '') && n.push(o);
    return f
  }
  me = i.createDocumentFragment().appendChild(i.createElement('div')),
  (ge = i.createElement('input')).setAttribute('type', 'radio'),
  ge.setAttribute('checked', 'checked'),
  ge.setAttribute('name', 't'),
  me.appendChild(ge),
  p.checkClone = me.cloneNode(!0).cloneNode(!0).lastChild.checked,
  me.innerHTML = '<textarea>x</textarea>',
  p.noCloneChecked = !!me.cloneNode(!0).lastChild.defaultValue;
  var be = i.documentElement,
  _e = /^key/,
  we = /^(?:mouse|pointer|contextmenu|drag|drop)|click/,
  Ee = /^([^.]*)(?:\.(.+)|)/;
  function Ce() {
    return !0
  }
  function Te() {
    return !1
  }
  function xe() {
    try {
      return i.activeElement
    } catch (e) {
    }
  }
  function Ae(e, t, n, i, r, o) {
    var s,
    a;
    if ('object' == typeof t) {
      for (a in 'string' != typeof n && (i = i || n, n = void 0), t) Ae(e, a, n, i, t[a], o);
      return e
    }
    if (null == i && null == r ? (r = n, i = n = void 0)  : null == r && ('string' == typeof n ? (r = i, i = void 0)  : (r = i, i = n, n = void 0)), !1 === r) r = Te;
     else if (!r) return e;
    return 1 === o && (s = r, (r = function (e) {
      return _().off(e),
      s.apply(this, arguments)
    }).guid = s.guid || (s.guid = _.guid++)),
    e.each(function () {
      _.event.add(this, t, r, i, n)
    })
  }
  _.event = {
    global: {
    },
    add: function (e, t, n, i, r) {
      var o,
      s,
      a,
      l,
      c,
      u,
      f,
      d,
      h,
      p,
      m,
      g = Y.get(e);
      if (g) for (n.handler && (n = (o = n).handler, r = o.selector), r && _.find.matchesSelector(be, r), n.guid || (n.guid = _.guid++), (l = g.events) || (l = g.events = {
      }), (s = g.handle) || (s = g.handle = function (t) {
        return void 0 !== _ && _.event.triggered !== t.type ? _.event.dispatch.apply(e, arguments)  : void 0
      }), c = (t = (t || '').match($) || [
        ''
      ]).length; c--; ) h = m = (a = Ee.exec(t[c]) || [
      ]) [1],
      p = (a[2] || '').split('.').sort(),
      h && (f = _.event.special[h] || {
      }, f = _.event.special[h = (r ? f.delegateType : f.bindType) || h] || {
      }, u = _.extend({
        type: h,
        origType: m,
        data: i,
        handler: n,
        guid: n.guid,
        selector: r,
        needsContext: r && _.expr.match.needsContext.test(r),
        namespace: p.join('.')
      }, o), (d = l[h]) || ((d = l[h] = [
      ]).delegateCount = 0, f.setup && !1 !== f.setup.call(e, i, p, s) || e.addEventListener && e.addEventListener(h, s)), f.add && (f.add.call(e, u), u.handler.guid || (u.handler.guid = n.guid)), r ? d.splice(d.delegateCount++, 0, u)  : d.push(u), _.event.global[h] = !0)
    },
    remove: function (e, t, n, i, r) {
      var o,
      s,
      a,
      l,
      c,
      u,
      f,
      d,
      h,
      p,
      m,
      g = Y.hasData(e) && Y.get(e);
      if (g && (l = g.events)) {
        for (c = (t = (t || '').match($) || [
          ''
        ]).length; c--; ) if (h = m = (a = Ee.exec(t[c]) || [
        ]) [1], p = (a[2] || '').split('.').sort(), h) {
          for (f = _.event.special[h] || {
          }, d = l[h = (i ? f.delegateType : f.bindType) || h] || [
          ], a = a[2] && new RegExp('(^|\\.)' + p.join('\\.(?:.*\\.|)') + '(\\.|$)'), s = o = d.length; o--; ) u = d[o],
          !r && m !== u.origType || n && n.guid !== u.guid || a && !a.test(u.namespace) || i && i !== u.selector && ('**' !== i || !u.selector) || (d.splice(o, 1), u.selector && d.delegateCount--, f.remove && f.remove.call(e, u));
          s && !d.length && (f.teardown && !1 !== f.teardown.call(e, p, g.handle) || _.removeEvent(e, h, g.handle), delete l[h])
        } else for (h in l) _.event.remove(e, h + t[c], n, i, !0);
        _.isEmptyObject(l) && Y.remove(e, 'handle events')
      }
    },
    dispatch: function (e) {
      var t,
      n,
      i,
      r,
      o,
      s,
      a = _.event.fix(e),
      l = new Array(arguments.length),
      c = (Y.get(this, 'events') || {
      }) [a.type] || [
      ],
      u = _.event.special[a.type] || {
      };
      for (l[0] = a, t = 1; t < arguments.length; t++) l[t] = arguments[t];
      if (a.delegateTarget = this, !u.preDispatch || !1 !== u.preDispatch.call(this, a)) {
        for (s = _.event.handlers.call(this, a, c), t = 0; (r = s[t++]) && !a.isPropagationStopped(); ) for (a.currentTarget = r.elem, n = 0; (o = r.handlers[n++]) && !a.isImmediatePropagationStopped(); ) a.rnamespace && !a.rnamespace.test(o.namespace) || (a.handleObj = o, a.data = o.data, void 0 !== (i = ((_.event.special[o.origType] || {
        }).handle || o.handler).apply(r.elem, l)) && !1 === (a.result = i) && (a.preventDefault(), a.stopPropagation()));
        return u.postDispatch && u.postDispatch.call(this, a),
        a.result
      }
    },
    handlers: function (e, t) {
      var n,
      i,
      r,
      o,
      s,
      a = [
      ],
      l = t.delegateCount,
      c = e.target;
      if (l && c.nodeType && !('click' === e.type && e.button >= 1)) for (; c !== this; c = c.parentNode || this) if (1 === c.nodeType && ('click' !== e.type || !0 !== c.disabled)) {
        for (o = [
        ], s = {
        }, n = 0; n < l; n++) void 0 === s[r = (i = t[n]).selector + ' '] && (s[r] = i.needsContext ? _(r, this).index(c) > - 1 : _.find(r, this, null, [
          c
        ]).length),
        s[r] && o.push(i);
        o.length && a.push({
          elem: c,
          handlers: o
        })
      }
      return c = this,
      l < t.length && a.push({
        elem: c,
        handlers: t.slice(l)
      }),
      a
    },
    addProp: function (e, t) {
      Object.defineProperty(_.Event.prototype, e, {
        enumerable: !0,
        configurable: !0,
        get: m(t) ? function () {
          if (this.originalEvent) return t(this.originalEvent)
        }
         : function () {
          if (this.originalEvent) return this.originalEvent[e]
        },
        set: function (t) {
          Object.defineProperty(this, e, {
            enumerable: !0,
            configurable: !0,
            writable: !0,
            value: t
          })
        }
      })
    },
    fix: function (e) {
      return e[_.expando] ? e : new _.Event(e)
    },
    special: {
      load: {
        noBubble: !0
      },
      focus: {
        trigger: function () {
          if (this !== xe() && this.focus) return this.focus(),
          !1
        },
        delegateType: 'focusin'
      },
      blur: {
        trigger: function () {
          if (this === xe() && this.blur) return this.blur(),
          !1
        },
        delegateType: 'focusout'
      },
      click: {
        trigger: function () {
          if ('checkbox' === this.type && this.click && S(this, 'input')) return this.click(),
          !1
        },
        _default: function (e) {
          return S(e.target, 'a')
        }
      },
      beforeunload: {
        postDispatch: function (e) {
          void 0 !== e.result && e.originalEvent && (e.originalEvent.returnValue = e.result)
        }
      }
    }
  },
  _.removeEvent = function (e, t, n) {
    e.removeEventListener && e.removeEventListener(t, n)
  },
  _.Event = function (e, t) {
    if (!(this instanceof _.Event)) return new _.Event(e, t);
    e && e.type ? (this.originalEvent = e, this.type = e.type, this.isDefaultPrevented = e.defaultPrevented || void 0 === e.defaultPrevented && !1 === e.returnValue ? Ce : Te, this.target = e.target && 3 === e.target.nodeType ? e.target.parentNode : e.target, this.currentTarget = e.currentTarget, this.relatedTarget = e.relatedTarget)  : this.type = e,
    t && _.extend(this, t),
    this.timeStamp = e && e.timeStamp || Date.now(),
    this[_.expando] = !0
  },
  _.Event.prototype = {
    constructor: _.Event,
    isDefaultPrevented: Te,
    isPropagationStopped: Te,
    isImmediatePropagationStopped: Te,
    isSimulated: !1,
    preventDefault: function () {
      var e = this.originalEvent;
      this.isDefaultPrevented = Ce,
      e && !this.isSimulated && e.preventDefault()
    },
    stopPropagation: function () {
      var e = this.originalEvent;
      this.isPropagationStopped = Ce,
      e && !this.isSimulated && e.stopPropagation()
    },
    stopImmediatePropagation: function () {
      var e = this.originalEvent;
      this.isImmediatePropagationStopped = Ce,
      e && !this.isSimulated && e.stopImmediatePropagation(),
      this.stopPropagation()
    }
  },
  _.each({
    altKey: !0,
    bubbles: !0,
    cancelable: !0,
    changedTouches: !0,
    ctrlKey: !0,
    detail: !0,
    eventPhase: !0,
    metaKey: !0,
    pageX: !0,
    pageY: !0,
    shiftKey: !0,
    view: !0,
    char: !0,
    charCode: !0,
    key: !0,
    keyCode: !0,
    button: !0,
    buttons: !0,
    clientX: !0,
    clientY: !0,
    offsetX: !0,
    offsetY: !0,
    pointerId: !0,
    pointerType: !0,
    screenX: !0,
    screenY: !0,
    targetTouches: !0,
    toElement: !0,
    touches: !0,
    which: function (e) {
      var t = e.button;
      return null == e.which && _e.test(e.type) ? null != e.charCode ? e.charCode : e.keyCode : !e.which && void 0 !== t && we.test(e.type) ? 1 & t ? 1 : 2 & t ? 3 : 4 & t ? 2 : 0 : e.which
    }
  }, _.event.addProp),
  _.each({
    mouseenter: 'mouseover',
    mouseleave: 'mouseout',
    pointerenter: 'pointerover',
    pointerleave: 'pointerout'
  }, function (e, t) {
    _.event.special[e] = {
      delegateType: t,
      bindType: t,
      handle: function (e) {
        var n,
        i = e.relatedTarget,
        r = e.handleObj;
        return i && (i === this || _.contains(this, i)) || (e.type = r.origType, n = r.handler.apply(this, arguments), e.type = t),
        n
      }
    }
  }),
  _.fn.extend({
    on: function (e, t, n, i) {
      return Ae(this, e, t, n, i)
    },
    one: function (e, t, n, i) {
      return Ae(this, e, t, n, i, 1)
    },
    off: function (e, t, n) {
      var i,
      r;
      if (e && e.preventDefault && e.handleObj) return i = e.handleObj,
      _(e.delegateTarget).off(i.namespace ? i.origType + '.' + i.namespace : i.origType, i.selector, i.handler),
      this;
      if ('object' == typeof e) {
        for (r in e) this.off(r, t, e[r]);
        return this
      }
      return !1 !== t && 'function' != typeof t || (n = t, t = void 0),
      !1 === n && (n = Te),
      this.each(function () {
        _.event.remove(this, e, n, t)
      })
    }
  });
  var Se = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([a-z][^\/\0>\x20\t\r\n\f]*)[^>]*)\/>/gi,
  Ie = /<script|<style|<link/i,
  De = /checked\s*(?:[^=]|=\s*.checked.)/i,
  ke = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;
  function Ne(e, t) {
    return S(e, 'table') && S(11 !== t.nodeType ? t : t.firstChild, 'tr') && _(e).children('tbody') [0] || e
  }
  function Oe(e) {
    return e.type = (null !== e.getAttribute('type')) + '/' + e.type,
    e
  }
  function je(e) {
    return 'true/' === (e.type || '').slice(0, 5) ? e.type = e.type.slice(5)  : e.removeAttribute('type'),
    e
  }
  function Le(e, t) {
    var n,
    i,
    r,
    o,
    s,
    a,
    l,
    c;
    if (1 === t.nodeType) {
      if (Y.hasData(e) && (o = Y.access(e), s = Y.set(t, o), c = o.events)) for (r in delete s.handle, s.events = {
      }, c) for (n = 0, i = c[r].length; n < i; n++) _.event.add(t, r, c[r][n]);
      z.hasData(e) && (a = z.access(e), l = _.extend({
      }, a), z.set(t, l))
    }
  }
  function $e(e, t, n, i) {
    t = s.apply([], t);
    var r,
    o,
    a,
    l,
    c,
    u,
    f = 0,
    d = e.length,
    h = d - 1,
    g = t[0],
    v = m(g);
    if (v || d > 1 && 'string' == typeof g && !p.checkClone && De.test(g)) return e.each(function (r) {
      var o = e.eq(r);
      v && (t[0] = g.call(this, r, o.html())),
      $e(o, t, n, i)
    });
    if (d && (o = (r = ye(t, e[0].ownerDocument, !1, e, i)).firstChild, 1 === r.childNodes.length && (r = o), o || i)) {
      for (l = (a = _.map(he(r, 'script'), Oe)).length; f < d; f++) c = r,
      f !== h && (c = _.clone(c, !0, !0), l && _.merge(a, he(c, 'script'))),
      n.call(e[f], c, f);
      if (l) for (u = a[a.length - 1].ownerDocument, _.map(a, je), f = 0; f < l; f++) fe.test((c = a[f]).type || '') && !Y.access(c, 'globalEval') && _.contains(u, c) && (c.src && 'module' !== (c.type || '').toLowerCase() ? _._evalUrl && _._evalUrl(c.src)  : y(c.textContent.replace(ke, ''), u, c))
    }
    return e
  }
  function Pe(e, t, n) {
    for (var i, r = t ? _.filter(t, e)  : e, o = 0; null != (i = r[o]); o++) n || 1 !== i.nodeType || _.cleanData(he(i)),
    i.parentNode && (n && _.contains(i.ownerDocument, i) && pe(he(i, 'script')), i.parentNode.removeChild(i));
    return e
  }
  _.extend({
    htmlPrefilter: function (e) {
      return e.replace(Se, '<$1></$2>')
    },
    clone: function (e, t, n) {
      var i,
      r,
      o,
      s,
      a,
      l,
      c,
      u = e.cloneNode(!0),
      f = _.contains(e.ownerDocument, e);
      if (!(p.noCloneChecked || 1 !== e.nodeType && 11 !== e.nodeType || _.isXMLDoc(e))) for (s = he(u), i = 0, r = (o = he(e)).length; i < r; i++) a = o[i],
      'input' === (c = (l = s[i]).nodeName.toLowerCase()) && ce.test(a.type) ? l.checked = a.checked : 'input' !== c && 'textarea' !== c || (l.defaultValue = a.defaultValue);
      if (t) if (n) for (o = o || he(e), s = s || he(u), i = 0, r = o.length; i < r; i++) Le(o[i], s[i]);
       else Le(e, u);
      return (s = he(u, 'script')).length > 0 && pe(s, !f && he(e, 'script')),
      u
    },
    cleanData: function (e) {
      for (var t, n, i, r = _.event.special, o = 0; void 0 !== (n = e[o]); o++) if (V(n)) {
        if (t = n[Y.expando]) {
          if (t.events) for (i in t.events) r[i] ? _.event.remove(n, i)  : _.removeEvent(n, i, t.handle);
          n[Y.expando] = void 0
        }
        n[z.expando] && (n[z.expando] = void 0)
      }
    }
  }),
  _.fn.extend({
    detach: function (e) {
      return Pe(this, e, !0)
    },
    remove: function (e) {
      return Pe(this, e)
    },
    text: function (e) {
      return q(this, function (e) {
        return void 0 === e ? _.text(this)  : this.empty().each(function () {
          1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || (this.textContent = e)
        })
      }, null, e, arguments.length)
    },
    append: function () {
      return $e(this, arguments, function (e) {
        1 !== this.nodeType && 11 !== this.nodeType && 9 !== this.nodeType || Ne(this, e).appendChild(e)
      })
    },
    prepend: function () {
      return $e(this, arguments, function (e) {
        if (1 === this.nodeType || 11 === this.nodeType || 9 === this.nodeType) {
          var t = Ne(this, e);
          t.insertBefore(e, t.firstChild)
        }
      })
    },
    before: function () {
      return $e(this, arguments, function (e) {
        this.parentNode && this.parentNode.insertBefore(e, this)
      })
    },
    after: function () {
      return $e(this, arguments, function (e) {
        this.parentNode && this.parentNode.insertBefore(e, this.nextSibling)
      })
    },
    empty: function () {
      for (var e, t = 0; null != (e = this[t]); t++) 1 === e.nodeType && (_.cleanData(he(e, !1)), e.textContent = '');
      return this
    },
    clone: function (e, t) {
      return e = null != e && e,
      t = null == t ? e : t,
      this.map(function () {
        return _.clone(this, e, t)
      })
    },
    html: function (e) {
      return q(this, function (e) {
        var t = this[0] || {
        },
        n = 0,
        i = this.length;
        if (void 0 === e && 1 === t.nodeType) return t.innerHTML;
        if ('string' == typeof e && !Ie.test(e) && !de[(ue.exec(e) || [
          '',
          ''
        ]) [1].toLowerCase()]) {
          e = _.htmlPrefilter(e);
          try {
            for (; n < i; n++) 1 === (t = this[n] || {
            }).nodeType && (_.cleanData(he(t, !1)), t.innerHTML = e);
            t = 0
          } catch (e) {
          }
        }
        t && this.empty().append(e)
      }, null, e, arguments.length)
    },
    replaceWith: function () {
      var e = [
      ];
      return $e(this, arguments, function (t) {
        var n = this.parentNode;
        _.inArray(this, e) < 0 && (_.cleanData(he(this)), n && n.replaceChild(t, this))
      }, e)
    }
  }),
  _.each({
    appendTo: 'append',
    prependTo: 'prepend',
    insertBefore: 'before',
    insertAfter: 'after',
    replaceAll: 'replaceWith'
  }, function (e, t) {
    _.fn[e] = function (e) {
      for (var n, i = [
      ], r = _(e), o = r.length - 1, s = 0; s <= o; s++) n = s === o ? this : this.clone(!0),
      _(r[s]) [t](n),
      a.apply(i, n.get());
      return this.pushStack(i)
    }
  });
  var Me = new RegExp('^(' + ee + ')(?!px)[a-z%]+$', 'i'),
  He = function (t) {
    var n = t.ownerDocument.defaultView;
    return n && n.opener || (n = e),
    n.getComputedStyle(t)
  },
  Fe = new RegExp(ne.join('|'), 'i');
  function Re(e, t, n) {
    var i,
    r,
    o,
    s,
    a = e.style;
    return (n = n || He(e)) && ('' !== (s = n.getPropertyValue(t) || n[t]) || _.contains(e.ownerDocument, e) || (s = _.style(e, t)), !p.pixelBoxStyles() && Me.test(s) && Fe.test(t) && (i = a.width, r = a.minWidth, o = a.maxWidth, a.minWidth = a.maxWidth = a.width = s, s = n.width, a.width = i, a.minWidth = r, a.maxWidth = o)),
    void 0 !== s ? s + '' : s
  }
  function We(e, t) {
    return {
      get: function () {
        if (!e()) return (this.get = t).apply(this, arguments);
        delete this.get
      }
    }
  }
  !function () {
    function t() {
      if (u) {
        c.style.cssText = 'position:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0',
        u.style.cssText = 'position:relative;display:block;box-sizing:border-box;overflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%',
        be.appendChild(c).appendChild(u);
        var t = e.getComputedStyle(u);
        r = '1%' !== t.top,
        l = 12 === n(t.marginLeft),
        u.style.right = '60%',
        a = 36 === n(t.right),
        o = 36 === n(t.width),
        u.style.position = 'absolute',
        s = 36 === u.offsetWidth || 'absolute',
        be.removeChild(c),
        u = null
      }
    }
    function n(e) {
      return Math.round(parseFloat(e))
    }
    var r,
    o,
    s,
    a,
    l,
    c = i.createElement('div'),
    u = i.createElement('div');
    u.style && (u.style.backgroundClip = 'content-box', u.cloneNode(!0).style.backgroundClip = '', p.clearCloneStyle = 'content-box' === u.style.backgroundClip, _.extend(p, {
      boxSizingReliable: function () {
        return t(),
        o
      },
      pixelBoxStyles: function () {
        return t(),
        a
      },
      pixelPosition: function () {
        return t(),
        r
      },
      reliableMarginLeft: function () {
        return t(),
        l
      },
      scrollboxSize: function () {
        return t(),
        s
      }
    }))
  }();
  var qe = /^(none|table(?!-c[ea]).+)/,
  Be = /^--/,
  Qe = {
    position: 'absolute',
    visibility: 'hidden',
    display: 'block'
  },
  Ue = {
    letterSpacing: '0',
    fontWeight: '400'
  },
  Ge = [
    'Webkit',
    'Moz',
    'ms'
  ],
  Ve = i.createElement('div').style;
  function Ke(e) {
    var t = _.cssProps[e];
    return t || (t = _.cssProps[e] = function (e) {
      if (e in Ve) return e;
      for (var t = e[0].toUpperCase() + e.slice(1), n = Ge.length; n--; ) if ((e = Ge[n] + t) in Ve) return e
    }(e) || e),
    t
  }
  function Ye(e, t, n) {
    var i = te.exec(t);
    return i ? Math.max(0, i[2] - (n || 0)) + (i[3] || 'px')  : t
  }
  function ze(e, t, n, i, r, o) {
    var s = 'width' === t ? 1 : 0,
    a = 0,
    l = 0;
    if (n === (i ? 'border' : 'content')) return 0;
    for (; s < 4; s += 2) 'margin' === n && (l += _.css(e, n + ne[s], !0, r)),
    i ? ('content' === n && (l -= _.css(e, 'padding' + ne[s], !0, r)), 'margin' !== n && (l -= _.css(e, 'border' + ne[s] + 'Width', !0, r)))  : (l += _.css(e, 'padding' + ne[s], !0, r), 'padding' !== n ? l += _.css(e, 'border' + ne[s] + 'Width', !0, r)  : a += _.css(e, 'border' + ne[s] + 'Width', !0, r));
    return !i && o >= 0 && (l += Math.max(0, Math.ceil(e['offset' + t[0].toUpperCase() + t.slice(1)] - o - l - a - 0.5))),
    l
  }
  function Xe(e, t, n) {
    var i = He(e),
    r = Re(e, t, i),
    o = 'border-box' === _.css(e, 'boxSizing', !1, i),
    s = o;
    if (Me.test(r)) {
      if (!n) return r;
      r = 'auto'
    }
    return s = s && (p.boxSizingReliable() || r === e.style[t]),
    ('auto' === r || !parseFloat(r) && 'inline' === _.css(e, 'display', !1, i)) && (r = e['offset' + t[0].toUpperCase() + t.slice(1)], s = !0),
    (r = parseFloat(r) || 0) + ze(e, t, n || (o ? 'border' : 'content'), s, i, r) + 'px'
  }
  function Je(e, t, n, i, r) {
    return new Je.prototype.init(e, t, n, i, r)
  }
  _.extend({
    cssHooks: {
      opacity: {
        get: function (e, t) {
          if (t) {
            var n = Re(e, 'opacity');
            return '' === n ? '1' : n
          }
        }
      }
    },
    cssNumber: {
      animationIterationCount: !0,
      columnCount: !0,
      fillOpacity: !0,
      flexGrow: !0,
      flexShrink: !0,
      fontWeight: !0,
      lineHeight: !0,
      opacity: !0,
      order: !0,
      orphans: !0,
      widows: !0,
      zIndex: !0,
      zoom: !0
    },
    cssProps: {
    },
    style: function (e, t, n, i) {
      if (e && 3 !== e.nodeType && 8 !== e.nodeType && e.style) {
        var r,
        o,
        s,
        a = G(t),
        l = Be.test(t),
        c = e.style;
        if (l || (t = Ke(a)), s = _.cssHooks[t] || _.cssHooks[a], void 0 === n) return s && 'get' in s && void 0 !== (r = s.get(e, !1, i)) ? r : c[t];
        'string' == (o = typeof n) && (r = te.exec(n)) && r[1] && (n = oe(e, t, r), o = 'number'),
        null != n && n == n && ('number' === o && (n += r && r[3] || (_.cssNumber[a] ? '' : 'px')), p.clearCloneStyle || '' !== n || 0 !== t.indexOf('background') || (c[t] = 'inherit'), s && 'set' in s && void 0 === (n = s.set(e, n, i)) || (l ? c.setProperty(t, n)  : c[t] = n))
      }
    },
    css: function (e, t, n, i) {
      var r,
      o,
      s,
      a = G(t);
      return Be.test(t) || (t = Ke(a)),
      (s = _.cssHooks[t] || _.cssHooks[a]) && 'get' in s && (r = s.get(e, !0, n)),
      void 0 === r && (r = Re(e, t, i)),
      'normal' === r && t in Ue && (r = Ue[t]),
      '' === n || n ? (o = parseFloat(r), !0 === n || isFinite(o) ? o || 0 : r)  : r
    }
  }),
  _.each(['height',
  'width'], function (e, t) {
    _.cssHooks[t] = {
      get: function (e, n, i) {
        if (n) return !qe.test(_.css(e, 'display')) || e.getClientRects().length && e.getBoundingClientRect().width ? Xe(e, t, i)  : re(e, Qe, function () {
          return Xe(e, t, i)
        })
      },
      set: function (e, n, i) {
        var r,
        o = He(e),
        s = 'border-box' === _.css(e, 'boxSizing', !1, o),
        a = i && ze(e, t, i, s, o);
        return s && p.scrollboxSize() === o.position && (a -= Math.ceil(e['offset' + t[0].toUpperCase() + t.slice(1)] - parseFloat(o[t]) - ze(e, t, 'border', !1, o) - 0.5)),
        a && (r = te.exec(n)) && 'px' !== (r[3] || 'px') && (e.style[t] = n, n = _.css(e, t)),
        Ye(0, n, a)
      }
    }
  }),
  _.cssHooks.marginLeft = We(p.reliableMarginLeft, function (e, t) {
    if (t) return (parseFloat(Re(e, 'marginLeft')) || e.getBoundingClientRect().left - re(e, {
      marginLeft: 0
    }, function () {
      return e.getBoundingClientRect().left
    })) + 'px'
  }),
  _.each({
    margin: '',
    padding: '',
    border: 'Width'
  }, function (e, t) {
    _.cssHooks[e + t] = {
      expand: function (n) {
        for (var i = 0, r = {
        }, o = 'string' == typeof n ? n.split(' ')  : [
          n
        ]; i < 4; i++) r[e + ne[i] + t] = o[i] || o[i - 2] || o[0];
        return r
      }
    },
    'margin' !== e && (_.cssHooks[e + t].set = Ye)
  }),
  _.fn.extend({
    css: function (e, t) {
      return q(this, function (e, t, n) {
        var i,
        r,
        o = {
        },
        s = 0;
        if (Array.isArray(t)) {
          for (i = He(e), r = t.length; s < r; s++) o[t[s]] = _.css(e, t[s], !1, i);
          return o
        }
        return void 0 !== n ? _.style(e, t, n)  : _.css(e, t)
      }, e, t, arguments.length > 1)
    }
  }),
  _.Tween = Je,
  (Je.prototype = {
    constructor: Je,
    init: function (e, t, n, i, r, o) {
      this.elem = e,
      this.prop = n,
      this.easing = r || _.easing._default,
      this.options = t,
      this.start = this.now = this.cur(),
      this.end = i,
      this.unit = o || (_.cssNumber[n] ? '' : 'px')
    },
    cur: function () {
      var e = Je.propHooks[this.prop];
      return e && e.get ? e.get(this)  : Je.propHooks._default.get(this)
    },
    run: function (e) {
      var t,
      n = Je.propHooks[this.prop];
      return this.pos = t = this.options.duration ? _.easing[this.easing](e, this.options.duration * e, 0, 1, this.options.duration)  : e,
      this.now = (this.end - this.start) * t + this.start,
      this.options.step && this.options.step.call(this.elem, this.now, this),
      n && n.set ? n.set(this)  : Je.propHooks._default.set(this),
      this
    }
  }).init.prototype = Je.prototype,
  (Je.propHooks = {
    _default: {
      get: function (e) {
        var t;
        return 1 !== e.elem.nodeType || null != e.elem[e.prop] && null == e.elem.style[e.prop] ? e.elem[e.prop] : (t = _.css(e.elem, e.prop, '')) && 'auto' !== t ? t : 0
      },
      set: function (e) {
        _.fx.step[e.prop] ? _.fx.step[e.prop](e)  : 1 !== e.elem.nodeType || null == e.elem.style[_.cssProps[e.prop]] && !_.cssHooks[e.prop] ? e.elem[e.prop] = e.now : _.style(e.elem, e.prop, e.now + e.unit)
      }
    }
  }).scrollTop = Je.propHooks.scrollLeft = {
    set: function (e) {
      e.elem.nodeType && e.elem.parentNode && (e.elem[e.prop] = e.now)
    }
  },
  _.easing = {
    linear: function (e) {
      return e
    },
    swing: function (e) {
      return 0.5 - Math.cos(e * Math.PI) / 2
    },
    _default: 'swing'
  },
  _.fx = Je.prototype.init,
  _.fx.step = {
  };
  var Ze,
  et,
  tt = /^(?:toggle|show|hide)$/,
  nt = /queueHooks$/;
  function it() {
    et && (!1 === i.hidden && e.requestAnimationFrame ? e.requestAnimationFrame(it)  : e.setTimeout(it, _.fx.interval), _.fx.tick())
  }
  function rt() {
    return e.setTimeout(function () {
      Ze = void 0
    }),
    Ze = Date.now()
  }
  function ot(e, t) {
    var n,
    i = 0,
    r = {
      height: e
    };
    for (t = t ? 1 : 0; i < 4; i += 2 - t) r['margin' + (n = ne[i])] = r['padding' + n] = e;
    return t && (r.opacity = r.width = e),
    r
  }
  function st(e, t, n) {
    for (var i, r = (at.tweeners[t] || [
    ]).concat(at.tweeners['*']), o = 0, s = r.length; o < s; o++) if (i = r[o].call(n, t, e)) return i
  }
  function at(e, t, n) {
    var i,
    r,
    o = 0,
    s = at.prefilters.length,
    a = _.Deferred().always(function () {
      delete l.elem
    }),
    l = function () {
      if (r) return !1;
      for (var t = Ze || rt(), n = Math.max(0, c.startTime + c.duration - t), i = 1 - (n / c.duration || 0), o = 0, s = c.tweens.length; o < s; o++) c.tweens[o].run(i);
      return a.notifyWith(e, [
        c,
        i,
        n
      ]),
      i < 1 && s ? n : (s || a.notifyWith(e, [
        c,
        1,
        0
      ]), a.resolveWith(e, [
        c
      ]), !1)
    },
    c = a.promise({
      elem: e,
      props: _.extend({
      }, t),
      opts: _.extend(!0, {
        specialEasing: {
        },
        easing: _.easing._default
      }, n),
      originalProperties: t,
      originalOptions: n,
      startTime: Ze || rt(),
      duration: n.duration,
      tweens: [
      ],
      createTween: function (t, n) {
        var i = _.Tween(e, c.opts, t, n, c.opts.specialEasing[t] || c.opts.easing);
        return c.tweens.push(i),
        i
      },
      stop: function (t) {
        var n = 0,
        i = t ? c.tweens.length : 0;
        if (r) return this;
        for (r = !0; n < i; n++) c.tweens[n].run(1);
        return t ? (a.notifyWith(e, [
          c,
          1,
          0
        ]), a.resolveWith(e, [
          c,
          t
        ]))  : a.rejectWith(e, [
          c,
          t
        ]),
        this
      }
    }),
    u = c.props;
    for (function (e, t) {
      var n,
      i,
      r,
      o,
      s;
      for (n in e) if (r = t[i = G(n)], o = e[n], Array.isArray(o) && (r = o[1], o = e[n] = o[0]), n !== i && (e[i] = o, delete e[n]), (s = _.cssHooks[i]) && 'expand' in s) for (n in o = s.expand(o), delete e[i], o) n in e || (e[n] = o[n], t[n] = r);
       else t[i] = r
    }(u, c.opts.specialEasing); o < s; o++) if (i = at.prefilters[o].call(c, e, u, c.opts)) return m(i.stop) && (_._queueHooks(c.elem, c.opts.queue).stop = i.stop.bind(i)),
    i;
    return _.map(u, st, c),
    m(c.opts.start) && c.opts.start.call(e, c),
    c.progress(c.opts.progress).done(c.opts.done, c.opts.complete).fail(c.opts.fail).always(c.opts.always),
    _.fx.timer(_.extend(l, {
      elem: e,
      anim: c,
      queue: c.opts.queue
    })),
    c
  }
  _.Animation = _.extend(at, {
    tweeners: {
      '*': [
        function (e, t) {
          var n = this.createTween(e, t);
          return oe(n.elem, e, te.exec(t), n),
          n
        }
      ]
    },
    tweener: function (e, t) {
      m(e) ? (t = e, e = [
        '*'
      ])  : e = e.match($);
      for (var n, i = 0, r = e.length; i < r; i++) (at.tweeners[n = e[i]] = at.tweeners[n] || [
      ]).unshift(t)
    },
    prefilters: [
      function (e, t, n) {
        var i,
        r,
        o,
        s,
        a,
        l,
        c,
        u,
        f = 'width' in t || 'height' in t,
        d = this,
        h = {
        },
        p = e.style,
        m = e.nodeType && ie(e),
        g = Y.get(e, 'fxshow');
        for (i in n.queue || (null == (s = _._queueHooks(e, 'fx')).unqueued && (s.unqueued = 0, a = s.empty.fire, s.empty.fire = function () {
          s.unqueued || a()
        }), s.unqueued++, d.always(function () {
          d.always(function () {
            s.unqueued--,
            _.queue(e, 'fx').length || s.empty.fire()
          })
        })), t) if (tt.test(r = t[i])) {
          if (delete t[i], o = o || 'toggle' === r, r === (m ? 'hide' : 'show')) {
            if ('show' !== r || !g || void 0 === g[i]) continue;
            m = !0
          }
          h[i] = g && g[i] || _.style(e, i)
        }
        if ((l = !_.isEmptyObject(t)) || !_.isEmptyObject(h)) for (i in f && 1 === e.nodeType && (n.overflow = [
          p.overflow,
          p.overflowX,
          p.overflowY
        ], null == (c = g && g.display) && (c = Y.get(e, 'display')), 'none' === (u = _.css(e, 'display')) && (c ? u = c : (le([e], !0), c = e.style.display || c, u = _.css(e, 'display'), le([e]))), ('inline' === u || 'inline-block' === u && null != c) && 'none' === _.css(e, 'float') && (l || (d.done(function () {
          p.display = c
        }), null == c && (c = 'none' === (u = p.display) ? '' : u)), p.display = 'inline-block')), n.overflow && (p.overflow = 'hidden', d.always(function () {
          p.overflow = n.overflow[0],
          p.overflowX = n.overflow[1],
          p.overflowY = n.overflow[2]
        })), l = !1, h) l || (g ? 'hidden' in g && (m = g.hidden)  : g = Y.access(e, 'fxshow', {
          display: c
        }), o && (g.hidden = !m), m && le([e], !0), d.done(function () {
          for (i in m || le([e]), Y.remove(e, 'fxshow'), h) _.style(e, i, h[i])
        })),
        l = st(m ? g[i] : 0, i, d),
        i in g || (g[i] = l.start, m && (l.end = l.start, l.start = 0))
      }
    ],
    prefilter: function (e, t) {
      t ? at.prefilters.unshift(e)  : at.prefilters.push(e)
    }
  }),
  _.speed = function (e, t, n) {
    var i = e && 'object' == typeof e ? _.extend({
    }, e)  : {
      complete: n || !n && t || m(e) && e,
      duration: e,
      easing: n && t || t && !m(t) && t
    };
    return _.fx.off ? i.duration = 0 : 'number' != typeof i.duration && (i.duration = i.duration in _.fx.speeds ? _.fx.speeds[i.duration] : _.fx.speeds._default),
    null != i.queue && !0 !== i.queue || (i.queue = 'fx'),
    i.old = i.complete,
    i.complete = function () {
      m(i.old) && i.old.call(this),
      i.queue && _.dequeue(this, i.queue)
    },
    i
  },
  _.fn.extend({
    fadeTo: function (e, t, n, i) {
      return this.filter(ie).css('opacity', 0).show().end().animate({
        opacity: t
      }, e, n, i)
    },
    animate: function (e, t, n, i) {
      var r = _.isEmptyObject(e),
      o = _.speed(t, n, i),
      s = function () {
        var t = at(this, _.extend({
        }, e), o);
        (r || Y.get(this, 'finish')) && t.stop(!0)
      };
      return s.finish = s,
      r || !1 === o.queue ? this.each(s)  : this.queue(o.queue, s)
    },
    stop: function (e, t, n) {
      var i = function (e) {
        var t = e.stop;
        delete e.stop,
        t(n)
      };
      return 'string' != typeof e && (n = t, t = e, e = void 0),
      t && !1 !== e && this.queue(e || 'fx', [
      ]),
      this.each(function () {
        var t = !0,
        r = null != e && e + 'queueHooks',
        o = _.timers,
        s = Y.get(this);
        if (r) s[r] && s[r].stop && i(s[r]);
         else for (r in s) s[r] && s[r].stop && nt.test(r) && i(s[r]);
        for (r = o.length; r--; ) o[r].elem !== this || null != e && o[r].queue !== e || (o[r].anim.stop(n), t = !1, o.splice(r, 1));
        !t && n || _.dequeue(this, e)
      })
    },
    finish: function (e) {
      return !1 !== e && (e = e || 'fx'),
      this.each(function () {
        var t,
        n = Y.get(this),
        i = n[e + 'queue'],
        r = n[e + 'queueHooks'],
        o = _.timers,
        s = i ? i.length : 0;
        for (n.finish = !0, _.queue(this, e, [
        ]), r && r.stop && r.stop.call(this, !0), t = o.length; t--; ) o[t].elem === this && o[t].queue === e && (o[t].anim.stop(!0), o.splice(t, 1));
        for (t = 0; t < s; t++) i[t] && i[t].finish && i[t].finish.call(this);
        delete n.finish
      })
    }
  }),
  _.each(['toggle',
  'show',
  'hide'], function (e, t) {
    var n = _.fn[t];
    _.fn[t] = function (e, i, r) {
      return null == e || 'boolean' == typeof e ? n.apply(this, arguments)  : this.animate(ot(t, !0), e, i, r)
    }
  }),
  _.each({
    slideDown: ot('show'),
    slideUp: ot('hide'),
    slideToggle: ot('toggle'),
    fadeIn: {
      opacity: 'show'
    },
    fadeOut: {
      opacity: 'hide'
    },
    fadeToggle: {
      opacity: 'toggle'
    }
  }, function (e, t) {
    _.fn[e] = function (e, n, i) {
      return this.animate(t, e, n, i)
    }
  }),
  _.timers = [
  ],
  _.fx.tick = function () {
    var e,
    t = 0,
    n = _.timers;
    for (Ze = Date.now(); t < n.length; t++) (e = n[t]) () || n[t] !== e || n.splice(t--, 1);
    n.length || _.fx.stop(),
    Ze = void 0
  },
  _.fx.timer = function (e) {
    _.timers.push(e),
    _.fx.start()
  },
  _.fx.interval = 13,
  _.fx.start = function () {
    et || (et = !0, it())
  },
  _.fx.stop = function () {
    et = null
  },
  _.fx.speeds = {
    slow: 600,
    fast: 200,
    _default: 400
  },
  _.fn.delay = function (t, n) {
    return t = _.fx && _.fx.speeds[t] || t,
    this.queue(n = n || 'fx', function (n, i) {
      var r = e.setTimeout(n, t);
      i.stop = function () {
        e.clearTimeout(r)
      }
    })
  },
  function () {
    var e = i.createElement('input'),
    t = i.createElement('select').appendChild(i.createElement('option'));
    e.type = 'checkbox',
    p.checkOn = '' !== e.value,
    p.optSelected = t.selected,
    (e = i.createElement('input')).value = 't',
    e.type = 'radio',
    p.radioValue = 't' === e.value
  }();
  var lt,
  ct = _.expr.attrHandle;
  _.fn.extend({
    attr: function (e, t) {
      return q(this, _.attr, e, t, arguments.length > 1)
    },
    removeAttr: function (e) {
      return this.each(function () {
        _.removeAttr(this, e)
      })
    }
  }),
  _.extend({
    attr: function (e, t, n) {
      var i,
      r,
      o = e.nodeType;
      if (3 !== o && 8 !== o && 2 !== o) return void 0 === e.getAttribute ? _.prop(e, t, n)  : (1 === o && _.isXMLDoc(e) || (r = _.attrHooks[t.toLowerCase()] || (_.expr.match.bool.test(t) ? lt : void 0)), void 0 !== n ? null === n ? void _.removeAttr(e, t)  : r && 'set' in r && void 0 !== (i = r.set(e, n, t)) ? i : (e.setAttribute(t, n + ''), n)  : r && 'get' in r && null !== (i = r.get(e, t)) ? i : null == (i = _.find.attr(e, t)) ? void 0 : i)
    },
    attrHooks: {
      type: {
        set: function (e, t) {
          if (!p.radioValue && 'radio' === t && S(e, 'input')) {
            var n = e.value;
            return e.setAttribute('type', t),
            n && (e.value = n),
            t
          }
        }
      }
    },
    removeAttr: function (e, t) {
      var n,
      i = 0,
      r = t && t.match($);
      if (r && 1 === e.nodeType) for (; n = r[i++]; ) e.removeAttribute(n)
    }
  }),
  lt = {
    set: function (e, t, n) {
      return !1 === t ? _.removeAttr(e, n)  : e.setAttribute(n, n),
      n
    }
  },
  _.each(_.expr.match.bool.source.match(/\w+/g), function (e, t) {
    var n = ct[t] || _.find.attr;
    ct[t] = function (e, t, i) {
      var r,
      o,
      s = t.toLowerCase();
      return i || (o = ct[s], ct[s] = r, r = null != n(e, t, i) ? s : null, ct[s] = o),
      r
    }
  });
  var ut = /^(?:input|select|textarea|button)$/i,
  ft = /^(?:a|area)$/i;
  function dt(e) {
    return (e.match($) || [
    ]).join(' ')
  }
  function ht(e) {
    return e.getAttribute && e.getAttribute('class') || ''
  }
  function pt(e) {
    return Array.isArray(e) ? e : 'string' == typeof e && e.match($) || [
    ]
  }
  _.fn.extend({
    prop: function (e, t) {
      return q(this, _.prop, e, t, arguments.length > 1)
    },
    removeProp: function (e) {
      return this.each(function () {
        delete this[_.propFix[e] || e]
      })
    }
  }),
  _.extend({
    prop: function (e, t, n) {
      var i,
      r,
      o = e.nodeType;
      if (3 !== o && 8 !== o && 2 !== o) return 1 === o && _.isXMLDoc(e) || (r = _.propHooks[t = _.propFix[t] || t]),
      void 0 !== n ? r && 'set' in r && void 0 !== (i = r.set(e, n, t)) ? i : e[t] = n : r && 'get' in r && null !== (i = r.get(e, t)) ? i : e[t]
    },
    propHooks: {
      tabIndex: {
        get: function (e) {
          var t = _.find.attr(e, 'tabindex');
          return t ? parseInt(t, 10)  : ut.test(e.nodeName) || ft.test(e.nodeName) && e.href ? 0 : - 1
        }
      }
    },
    propFix: {
      for : 'htmlFor',
      class : 'className'
    }
  }),
  p.optSelected || (_.propHooks.selected = {
    get: function (e) {
      return null
    },
    set: function (e) {
    }
  }),
  _.each(['tabIndex',
  'readOnly',
  'maxLength',
  'cellSpacing',
  'cellPadding',
  'rowSpan',
  'colSpan',
  'useMap',
  'frameBorder',
  'contentEditable'], function () {
    _.propFix[this.toLowerCase()] = this
  }),
  _.fn.extend({
    addClass: function (e) {
      var t,
      n,
      i,
      r,
      o,
      s,
      a,
      l = 0;
      if (m(e)) return this.each(function (t) {
        _(this).addClass(e.call(this, t, ht(this)))
      });
      if ((t = pt(e)).length) for (; n = this[l++]; ) if (r = ht(n), i = 1 === n.nodeType && ' ' + dt(r) + ' ') {
        for (s = 0; o = t[s++]; ) i.indexOf(' ' + o + ' ') < 0 && (i += o + ' ');
        r !== (a = dt(i)) && n.setAttribute('class', a)
      }
      return this
    },
    removeClass: function (e) {
      var t,
      n,
      i,
      r,
      o,
      s,
      a,
      l = 0;
      if (m(e)) return this.each(function (t) {
        _(this).removeClass(e.call(this, t, ht(this)))
      });
      if (!arguments.length) return this.attr('class', '');
      if ((t = pt(e)).length) for (; n = this[l++]; ) if (r = ht(n), i = 1 === n.nodeType && ' ' + dt(r) + ' ') {
        for (s = 0; o = t[s++]; ) for (; i.indexOf(' ' + o + ' ') > - 1; ) i = i.replace(' ' + o + ' ', ' ');
        r !== (a = dt(i)) && n.setAttribute('class', a)
      }
      return this
    },
    toggleClass: function (e, t) {
      var n = typeof e,
      i = 'string' === n || Array.isArray(e);
      return 'boolean' == typeof t && i ? t ? this.addClass(e)  : this.removeClass(e)  : m(e) ? this.each(function (n) {
        _(this).toggleClass(e.call(this, n, ht(this), t), t)
      })  : this.each(function () {
        var t,
        r,
        o,
        s;
        if (i) for (r = 0, o = _(this), s = pt(e); t = s[r++]; ) o.hasClass(t) ? o.removeClass(t)  : o.addClass(t);
         else void 0 !== e && 'boolean' !== n || ((t = ht(this)) && Y.set(this, '__className__', t), this.setAttribute && this.setAttribute('class', t || !1 === e ? '' : Y.get(this, '__className__') || ''))
      })
    },
    hasClass: function (e) {
      var t,
      n,
      i = 0;
      for (t = ' ' + e + ' '; n = this[i++]; ) if (1 === n.nodeType && (' ' + dt(ht(n)) + ' ').indexOf(t) > - 1) return !0;
      return !1
    }
  });
  var mt = /\r/g;
  _.fn.extend({
    val: function (e) {
      var t,
      n,
      i,
      r = this[0];
      return arguments.length ? (i = m(e), this.each(function (n) {
        var r;
        1 === this.nodeType && (null == (r = i ? e.call(this, n, _(this).val())  : e) ? r = '' : 'number' == typeof r ? r += '' : Array.isArray(r) && (r = _.map(r, function (e) {
          return null == e ? '' : e + ''
        })), (t = _.valHooks[this.type] || _.valHooks[this.nodeName.toLowerCase()]) && 'set' in t && void 0 !== t.set(this, r, 'value') || (this.value = r))
      }))  : r ? (t = _.valHooks[r.type] || _.valHooks[r.nodeName.toLowerCase()]) && 'get' in t && void 0 !== (n = t.get(r, 'value')) ? n : 'string' == typeof (n = r.value) ? n.replace(mt, '')  : null == n ? '' : n : void 0
    }
  }),
  _.extend({
    valHooks: {
      option: {
        get: function (e) {
          var t = _.find.attr(e, 'value');
          return null != t ? t : dt(_.text(e))
        }
      },
      select: {
        get: function (e) {
          var t,
          n,
          i,
          r = e.options,
          o = e.selectedIndex,
          s = 'select-one' === e.type,
          a = s ? null : [
          ],
          l = s ? o + 1 : r.length;
          for (i = o < 0 ? l : s ? o : 0; i < l; i++) if (((n = r[i]).selected || i === o) && !n.disabled && (!n.parentNode.disabled || !S(n.parentNode, 'optgroup'))) {
            if (t = _(n).val(), s) return t;
            a.push(t)
          }
          return a
        },
        set: function (e, t) {
          for (var n, i, r = e.options, o = _.makeArray(t), s = r.length; s--; ) ((i = r[s]).selected = _.inArray(_.valHooks.option.get(i), o) > - 1) && (n = !0);
          return n || (e.selectedIndex = - 1),
          o
        }
      }
    }
  }),
  _.each(['radio',
  'checkbox'], function () {
    _.valHooks[this] = {
      set: function (e, t) {
        if (Array.isArray(t)) return e.checked = _.inArray(_(e).val(), t) > - 1
      }
    },
    p.checkOn || (_.valHooks[this].get = function (e) {
      return null === e.getAttribute('value') ? 'on' : e.value
    })
  }),
  p.focusin = 'onfocusin' in e;
  var gt = /^(?:focusinfocus|focusoutblur)$/,
  vt = function (e) {
    e.stopPropagation()
  };
  _.extend(_.event, {
    trigger: function (t, n, r, o) {
      var s,
      a,
      l,
      c,
      u,
      d,
      h,
      p,
      v = [
        r || i
      ],
      y = f.call(t, 'type') ? t.type : t,
      b = f.call(t, 'namespace') ? t.namespace.split('.')  : [
      ];
      if (a = p = l = r = r || i, 3 !== r.nodeType && 8 !== r.nodeType && !gt.test(y + _.event.triggered) && (y.indexOf('.') > - 1 && (y = (b = y.split('.')).shift(), b.sort()), u = y.indexOf(':') < 0 && 'on' + y, (t = t[_.expando] ? t : new _.Event(y, 'object' == typeof t && t)).isTrigger = o ? 2 : 3, t.namespace = b.join('.'), t.rnamespace = t.namespace ? new RegExp('(^|\\.)' + b.join('\\.(?:.*\\.|)') + '(\\.|$)')  : null, t.result = void 0, t.target || (t.target = r), n = null == n ? [
        t
      ] : _.makeArray(n, [
        t
      ]), h = _.event.special[y] || {
      }, o || !h.trigger || !1 !== h.trigger.apply(r, n))) {
        if (!o && !h.noBubble && !g(r)) {
          for (gt.test((c = h.delegateType || y) + y) || (a = a.parentNode); a; a = a.parentNode) v.push(a),
          l = a;
          l === (r.ownerDocument || i) && v.push(l.defaultView || l.parentWindow || e)
        }
        for (s = 0; (a = v[s++]) && !t.isPropagationStopped(); ) p = a,
        t.type = s > 1 ? c : h.bindType || y,
        (d = (Y.get(a, 'events') || {
        }) [t.type] && Y.get(a, 'handle')) && d.apply(a, n),
        (d = u && a[u]) && d.apply && V(a) && (t.result = d.apply(a, n), !1 === t.result && t.preventDefault());
        return t.type = y,
        o || t.isDefaultPrevented() || h._default && !1 !== h._default.apply(v.pop(), n) || !V(r) || u && m(r[y]) && !g(r) && ((l = r[u]) && (r[u] = null), _.event.triggered = y, t.isPropagationStopped() && p.addEventListener(y, vt), r[y](), t.isPropagationStopped() && p.removeEventListener(y, vt), _.event.triggered = void 0, l && (r[u] = l)),
        t.result
      }
    },
    simulate: function (e, t, n) {
      var i = _.extend(new _.Event, n, {
        type: e,
        isSimulated: !0
      });
      _.event.trigger(i, null, t)
    }
  }),
  _.fn.extend({
    trigger: function (e, t) {
      return this.each(function () {
        _.event.trigger(e, t, this)
      })
    },
    triggerHandler: function (e, t) {
      var n = this[0];
      if (n) return _.event.trigger(e, t, n, !0)
    }
  }),
  p.focusin || _.each({
    focus: 'focusin',
    blur: 'focusout'
  }, function (e, t) {
    var n = function (e) {
      _.event.simulate(t, e.target, _.event.fix(e))
    };
    _.event.special[t] = {
      setup: function () {
        var i = this.ownerDocument || this,
        r = Y.access(i, t);
        r || i.addEventListener(e, n, !0),
        Y.access(i, t, (r || 0) + 1)
      },
      teardown: function () {
        var i = this.ownerDocument || this,
        r = Y.access(i, t) - 1;
        r ? Y.access(i, t, r)  : (i.removeEventListener(e, n, !0), Y.remove(i, t))
      }
    }
  });
  var yt = e.location,
  bt = Date.now(),
  _t = /\?/;
  _.parseXML = function (t) {
    var n;
    if (!t || 'string' != typeof t) return null;
    try {
      n = (new e.DOMParser).parseFromString(t, 'text/xml')
    } catch (e) {
      n = void 0
    }
    return n && !n.getElementsByTagName('parsererror').length || _.error('Invalid XML: ' + t),
    n
  };
  var wt = /\[\]$/,
  Et = /\r?\n/g,
  Ct = /^(?:submit|button|image|reset|file)$/i,
  Tt = /^(?:input|select|textarea|keygen)/i;
  function xt(e, t, n, i) {
    var r;
    if (Array.isArray(t)) _.each(t, function (t, r) {
      n || wt.test(e) ? i(e, r)  : xt(e + '[' + ('object' == typeof r && null != r ? t : '') + ']', r, n, i)
    });
     else if (n || 'object' !== b(t)) i(e, t);
     else for (r in t) xt(e + '[' + r + ']', t[r], n, i)
  }
  _.param = function (e, t) {
    var n,
    i = [
    ],
    r = function (e, t) {
      var n = m(t) ? t()  : t;
      i[i.length] = encodeURIComponent(e) + '=' + encodeURIComponent(null == n ? '' : n)
    };
    if (Array.isArray(e) || e.jquery && !_.isPlainObject(e)) _.each(e, function () {
      r(this.name, this.value)
    });
     else for (n in e) xt(n, e[n], t, r);
    return i.join('&')
  },
  _.fn.extend({
    serialize: function () {
      return _.param(this.serializeArray())
    },
    serializeArray: function () {
      return this.map(function () {
        var e = _.prop(this, 'elements');
        return e ? _.makeArray(e)  : this
      }).filter(function () {
        var e = this.type;
        return this.name && !_(this).is(':disabled') && Tt.test(this.nodeName) && !Ct.test(e) && (this.checked || !ce.test(e))
      }).map(function (e, t) {
        var n = _(this).val();
        return null == n ? null : Array.isArray(n) ? _.map(n, function (e) {
          return {
            name: t.name,
            value: e.replace(Et, '\r\n')
          }
        })  : {
          name: t.name,
          value: n.replace(Et, '\r\n')
        }
      }).get()
    }
  });
  var At = /%20/g,
  St = /#.*$/,
  It = /([?&])_=[^&]*/,
  Dt = /^(.*?):[ \t]*([^\r\n]*)$/gm,
  kt = /^(?:GET|HEAD)$/,
  Nt = /^\/\//,
  Ot = {
  },
  jt = {
  },
  Lt = '*/'.concat('*'),
  $t = i.createElement('a');
  function Pt(e) {
    return function (t, n) {
      'string' != typeof t && (n = t, t = '*');
      var i,
      r = 0,
      o = t.toLowerCase().match($) || [
      ];
      if (m(n)) for (; i = o[r++]; ) '+' === i[0] ? (i = i.slice(1) || '*', (e[i] = e[i] || [
      ]).unshift(n))  : (e[i] = e[i] || [
      ]).push(n)
    }
  }
  function Mt(e, t, n, i) {
    var r = {
    },
    o = e === jt;
    function s(a) {
      var l;
      return r[a] = !0,
      _.each(e[a] || [
      ], function (e, a) {
        var c = a(t, n, i);
        return 'string' != typeof c || o || r[c] ? o ? !(l = c)  : void 0 : (t.dataTypes.unshift(c), s(c), !1)
      }),
      l
    }
    return s(t.dataTypes[0]) || !r['*'] && s('*')
  }
  function Ht(e, t) {
    var n,
    i,
    r = _.ajaxSettings.flatOptions || {
    };
    for (n in t) void 0 !== t[n] && ((r[n] ? e : i || (i = {
    })) [n] = t[n]);
    return i && _.extend(!0, e, i),
    e
  }
  $t.href = yt.href,
  _.extend({
    active: 0,
    lastModified: {
    },
    etag: {
    },
    ajaxSettings: {
      url: yt.href,
      type: 'GET',
      isLocal: /^(?:about|app|app-storage|.+-extension|file|res|widget):$/.test(yt.protocol),
      global: !0,
      processData: !0,
      async: !0,
      contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
      accepts: {
        '*': Lt,
        text: 'text/plain',
        html: 'text/html',
        xml: 'application/xml, text/xml',
        json: 'application/json, text/javascript'
      },
      contents: {
        xml: /\bxml\b/,
        html: /\bhtml/,
        json: /\bjson\b/
      },
      responseFields: {
        xml: 'responseXML',
        text: 'responseText',
        json: 'responseJSON'
      },
      converters: {
        '* text': String,
        'text html': !0,
        'text json': JSON.parse,
        'text xml': _.parseXML
      },
      flatOptions: {
        url: !0,
        context: !0
      }
    },
    ajaxSetup: function (e, t) {
      return t ? Ht(Ht(e, _.ajaxSettings), t)  : Ht(_.ajaxSettings, e)
    },
    ajaxPrefilter: Pt(Ot),
    ajaxTransport: Pt(jt),
    ajax: function (t, n) {
      'object' == typeof t && (n = t, t = void 0);
      var r,
      o,
      s,
      a,
      l,
      c,
      u,
      f,
      d,
      h,
      p = _.ajaxSetup({
      }, n = n || {
      }),
      m = p.context || p,
      g = p.context && (m.nodeType || m.jquery) ? _(m)  : _.event,
      v = _.Deferred(),
      y = _.Callbacks('once memory'),
      b = p.statusCode || {
      },
      w = {
      },
      E = {
      },
      C = 'canceled',
      T = {
        readyState: 0,
        getResponseHeader: function (e) {
          var t;
          if (u) {
            if (!a) for (a = {
            }; t = Dt.exec(s); ) a[t[1].toLowerCase()] = t[2];
            t = a[e.toLowerCase()]
          }
          return null == t ? null : t
        },
        getAllResponseHeaders: function () {
          return u ? s : null
        },
        setRequestHeader: function (e, t) {
          return null == u && (e = E[e.toLowerCase()] = E[e.toLowerCase()] || e, w[e] = t),
          this
        },
        overrideMimeType: function (e) {
          return null == u && (p.mimeType = e),
          this
        },
        statusCode: function (e) {
          var t;
          if (e) if (u) T.always(e[T.status]);
           else for (t in e) b[t] = [
            b[t],
            e[t]
          ];
          return this
        },
        abort: function (e) {
          var t = e || C;
          return r && r.abort(t),
          x(0, t),
          this
        }
      };
      if (v.promise(T), p.url = ((t || p.url || yt.href) + '').replace(Nt, yt.protocol + '//'), p.type = n.method || n.type || p.method || p.type, p.dataTypes = (p.dataType || '*').toLowerCase().match($) || [
        ''
      ], null == p.crossDomain) {
        c = i.createElement('a');
        try {
          c.href = p.url,
          c.href = c.href,
          p.crossDomain = $t.protocol + '//' + $t.host != c.protocol + '//' + c.host
        } catch (e) {
          p.crossDomain = !0
        }
      }
      if (p.data && p.processData && 'string' != typeof p.data && (p.data = _.param(p.data, p.traditional)), Mt(Ot, p, n, T), u) return T;
      for (d in (f = _.event && p.global) && 0 == _.active++ && _.event.trigger('ajaxStart'), p.type = p.type.toUpperCase(), p.hasContent = !kt.test(p.type), o = p.url.replace(St, ''), p.hasContent ? p.data && p.processData && 0 === (p.contentType || '').indexOf('application/x-www-form-urlencoded') && (p.data = p.data.replace(At, '+'))  : (h = p.url.slice(o.length), p.data && (p.processData || 'string' == typeof p.data) && (o += (_t.test(o) ? '&' : '?') + p.data, delete p.data), !1 === p.cache && (o = o.replace(It, '$1'), h = (_t.test(o) ? '&' : '?') + '_=' + bt++ + h), p.url = o + h), p.ifModified && (_.lastModified[o] && T.setRequestHeader('If-Modified-Since', _.lastModified[o]), _.etag[o] && T.setRequestHeader('If-None-Match', _.etag[o])), (p.data && p.hasContent && !1 !== p.contentType || n.contentType) && T.setRequestHeader('Content-Type', p.contentType), T.setRequestHeader('Accept', p.dataTypes[0] && p.accepts[p.dataTypes[0]] ? p.accepts[p.dataTypes[0]] + ('*' !== p.dataTypes[0] ? ', ' + Lt + '; q=0.01' : '')  : p.accepts['*']), p.headers) T.setRequestHeader(d, p.headers[d]);
      if (p.beforeSend && (!1 === p.beforeSend.call(m, T, p) || u)) return T.abort();
      if (C = 'abort', y.add(p.complete), T.done(p.success), T.fail(p.error), r = Mt(jt, p, n, T)) {
        if (T.readyState = 1, f && g.trigger('ajaxSend', [
          T,
          p
        ]), u) return T;
        p.async && p.timeout > 0 && (l = e.setTimeout(function () {
          T.abort('timeout')
        }, p.timeout));
        try {
          u = !1,
          r.send(w, x)
        } catch (e) {
          if (u) throw e;
          x( - 1, e)
        }
      } else x( - 1, 'No Transport');
      function x(t, n, i, a) {
        var c,
        d,
        h,
        w,
        E,
        C = n;
        u || (u = !0, l && e.clearTimeout(l), r = void 0, s = a || '', T.readyState = t > 0 ? 4 : 0, c = t >= 200 && t < 300 || 304 === t, i && (w = function (e, t, n) {
          for (var i, r, o, s, a = e.contents, l = e.dataTypes; '*' === l[0]; ) l.shift(),
          void 0 === i && (i = e.mimeType || t.getResponseHeader('Content-Type'));
          if (i) for (r in a) if (a[r] && a[r].test(i)) {
            l.unshift(r);
            break
          }
          if (l[0] in n) o = l[0];
           else {
            for (r in n) {
              if (!l[0] || e.converters[r + ' ' + l[0]]) {
                o = r;
                break
              }
              s || (s = r)
            }
            o = o || s
          }
          if (o) return o !== l[0] && l.unshift(o),
          n[o]
        }(p, T, i)), w = function (e, t, n, i) {
          var r,
          o,
          s,
          a,
          l,
          c = {
          },
          u = e.dataTypes.slice();
          if (u[1]) for (s in e.converters) c[s.toLowerCase()] = e.converters[s];
          for (o = u.shift(); o; ) if (e.responseFields[o] && (n[e.responseFields[o]] = t), !l && i && e.dataFilter && (t = e.dataFilter(t, e.dataType)), l = o, o = u.shift()) if ('*' === o) o = l;
           else if ('*' !== l && l !== o) {
            if (!(s = c[l + ' ' + o] || c['* ' + o])) for (r in c) if ((a = r.split(' ')) [1] === o && (s = c[l + ' ' + a[0]] || c['* ' + a[0]])) {
              !0 === s ? s = c[r] : !0 !== c[r] && (o = a[0], u.unshift(a[1]));
              break
            }
            if (!0 !== s) if (s && e.throws) t = s(t);
             else try {
              t = s(t)
            } catch (e) {
              return {
                state: 'parsererror',
                error: s ? e : 'No conversion from ' + l + ' to ' + o
              }
            }
          }
          return {
            state: 'success',
            data: t
          }
        }(p, w, T, c), c ? (p.ifModified && ((E = T.getResponseHeader('Last-Modified')) && (_.lastModified[o] = E), (E = T.getResponseHeader('etag')) && (_.etag[o] = E)), 204 === t || 'HEAD' === p.type ? C = 'nocontent' : 304 === t ? C = 'notmodified' : (C = w.state, d = w.data, c = !(h = w.error)))  : (h = C, !t && C || (C = 'error', t < 0 && (t = 0))), T.status = t, T.statusText = (n || C) + '', c ? v.resolveWith(m, [
          d,
          C,
          T
        ])  : v.rejectWith(m, [
          T,
          C,
          h
        ]), T.statusCode(b), b = void 0, f && g.trigger(c ? 'ajaxSuccess' : 'ajaxError', [
          T,
          p,
          c ? d : h
        ]), y.fireWith(m, [
          T,
          C
        ]), f && (g.trigger('ajaxComplete', [
          T,
          p
        ]), --_.active || _.event.trigger('ajaxStop')))
      }
      return T
    },
    getJSON: function (e, t, n) {
      return _.get(e, t, n, 'json')
    },
    getScript: function (e, t) {
      return _.get(e, void 0, t, 'script')
    }
  }),
  _.each(['get',
  'post'], function (e, t) {
    _[t] = function (e, n, i, r) {
      return m(n) && (r = r || i, i = n, n = void 0),
      _.ajax(_.extend({
        url: e,
        type: t,
        dataType: r,
        data: n,
        success: i
      }, _.isPlainObject(e) && e))
    }
  }),
  _._evalUrl = function (e) {
    return _.ajax({
      url: e,
      type: 'GET',
      dataType: 'script',
      cache: !0,
      async: !1,
      global: !1,
      throws: !0
    })
  },
  _.fn.extend({
    wrapAll: function (e) {
      var t;
      return this[0] && (m(e) && (e = e.call(this[0])), t = _(e, this[0].ownerDocument).eq(0).clone(!0), this[0].parentNode && t.insertBefore(this[0]), t.map(function () {
        for (var e = this; e.firstElementChild; ) e = e.firstElementChild;
        return e
      }).append(this)),
      this
    },
    wrapInner: function (e) {
      return m(e) ? this.each(function (t) {
        _(this).wrapInner(e.call(this, t))
      })  : this.each(function () {
        var t = _(this),
        n = t.contents();
        n.length ? n.wrapAll(e)  : t.append(e)
      })
    },
    wrap: function (e) {
      var t = m(e);
      return this.each(function (n) {
        _(this).wrapAll(t ? e.call(this, n)  : e)
      })
    },
    unwrap: function (e) {
      return this.parent(e).not('body').each(function () {
        _(this).replaceWith(this.childNodes)
      }),
      this
    }
  }),
  _.expr.pseudos.hidden = function (e) {
    return !_.expr.pseudos.visible(e)
  },
  _.expr.pseudos.visible = function (e) {
    return !!(e.offsetWidth || e.offsetHeight || e.getClientRects().length)
  },
  _.ajaxSettings.xhr = function () {
    try {
      return new e.XMLHttpRequest
    } catch (e) {
    }
  };
  var Ft = {
    0: 200,
    1223: 204
  },
  Rt = _.ajaxSettings.xhr();
  p.cors = !!Rt && 'withCredentials' in Rt,
  p.ajax = Rt = !!Rt,
  _.ajaxTransport(function (t) {
    var n,
    i;
    if (p.cors || Rt && !t.crossDomain) return {
      send: function (r, o) {
        var s,
        a = t.xhr();
        if (a.open(t.type, t.url, t.async, t.username, t.password), t.xhrFields) for (s in t.xhrFields) a[s] = t.xhrFields[s];
        for (s in t.mimeType && a.overrideMimeType && a.overrideMimeType(t.mimeType), t.crossDomain || r['X-Requested-With'] || (r['X-Requested-With'] = 'XMLHttpRequest'), r) a.setRequestHeader(s, r[s]);
        n = function (e) {
          return function () {
            n && (n = i = a.onload = a.onerror = a.onabort = a.ontimeout = a.onreadystatechange = null, 'abort' === e ? a.abort()  : 'error' === e ? 'number' != typeof a.status ? o(0, 'error')  : o(a.status, a.statusText)  : o(Ft[a.status] || a.status, a.statusText, 'text' !== (a.responseType || 'text') || 'string' != typeof a.responseText ? {
              binary: a.response
            }
             : {
              text: a.responseText
            }, a.getAllResponseHeaders()))
          }
        },
        a.onload = n(),
        i = a.onerror = a.ontimeout = n('error'),
        void 0 !== a.onabort ? a.onabort = i : a.onreadystatechange = function () {
          4 === a.readyState && e.setTimeout(function () {
            n && i()
          })
        },
        n = n('abort');
        try {
          a.send(t.hasContent && t.data || null)
        } catch (e) {
          if (n) throw e
        }
      },
      abort: function () {
        n && n()
      }
    }
  }),
  _.ajaxPrefilter(function (e) {
    e.crossDomain && (e.contents.script = !1)
  }),
  _.ajaxSetup({
    accepts: {
      script: 'text/javascript, application/javascript, application/ecmascript, application/x-ecmascript'
    },
    contents: {
      script: /\b(?:java|ecma)script\b/
    },
    converters: {
      'text script': function (e) {
        return _.globalEval(e),
        e
      }
    }
  }),
  _.ajaxPrefilter('script', function (e) {
    void 0 === e.cache && (e.cache = !1),
    e.crossDomain && (e.type = 'GET')
  }),
  _.ajaxTransport('script', function (e) {
    var t,
    n;
    if (e.crossDomain) return {
      send: function (r, o) {
        t = _('<script>').prop({
          charset: e.scriptCharset,
          src: e.url
        }).on('load error', n = function (e) {
          t.remove(),
          n = null,
          e && o('error' === e.type ? 404 : 200, e.type)
        }),
        i.head.appendChild(t[0])
      },
      abort: function () {
        n && n()
      }
    }
  });
  var Wt,
  qt = [
  ],
  Bt = /(=)\?(?=&|$)|\?\?/;
  _.ajaxSetup({
    jsonp: 'callback',
    jsonpCallback: function () {
      var e = qt.pop() || _.expando + '_' + bt++;
      return this[e] = !0,
      e
    }
  }),
  _.ajaxPrefilter('json jsonp', function (t, n, i) {
    var r,
    o,
    s,
    a = !1 !== t.jsonp && (Bt.test(t.url) ? 'url' : 'string' == typeof t.data && 0 === (t.contentType || '').indexOf('application/x-www-form-urlencoded') && Bt.test(t.data) && 'data');
    if (a || 'jsonp' === t.dataTypes[0]) return r = t.jsonpCallback = m(t.jsonpCallback) ? t.jsonpCallback()  : t.jsonpCallback,
    a ? t[a] = t[a].replace(Bt, '$1' + r)  : !1 !== t.jsonp && (t.url += (_t.test(t.url) ? '&' : '?') + t.jsonp + '=' + r),
    t.converters['script json'] = function () {
      return s || _.error(r + ' was not called'),
      s[0]
    },
    t.dataTypes[0] = 'json',
    o = e[r],
    e[r] = function () {
      s = arguments
    },
    i.always(function () {
      void 0 === o ? _(e).removeProp(r)  : e[r] = o,
      t[r] && (t.jsonpCallback = n.jsonpCallback, qt.push(r)),
      s && m(o) && o(s[0]),
      s = o = void 0
    }),
    'script'
  }),
  p.createHTMLDocument = ((Wt = i.implementation.createHTMLDocument('').body).innerHTML = '<form></form><form></form>', 2 === Wt.childNodes.length),
  _.parseHTML = function (e, t, n) {
    return 'string' != typeof e ? [
    ] : ('boolean' == typeof t && (n = t, t = !1), t || (p.createHTMLDocument ? ((r = (t = i.implementation.createHTMLDocument('')).createElement('base')).href = i.location.href, t.head.appendChild(r))  : t = i), o = I.exec(e), s = !n && [
    ], o ? [
      t.createElement(o[1])
    ] : (o = ye([e], t, s), s && s.length && _(s).remove(), _.merge([], o.childNodes)));
    var r,
    o,
    s
  },
  _.fn.load = function (e, t, n) {
    var i,
    r,
    o,
    s = this,
    a = e.indexOf(' ');
    return a > - 1 && (i = dt(e.slice(a)), e = e.slice(0, a)),
    m(t) ? (n = t, t = void 0)  : t && 'object' == typeof t && (r = 'POST'),
    s.length > 0 && _.ajax({
      url: e,
      type: r || 'GET',
      dataType: 'html',
      data: t
    }).done(function (e) {
      o = arguments,
      s.html(i ? _('<div>').append(_.parseHTML(e)).find(i)  : e)
    }).always(n && function (e, t) {
      s.each(function () {
        n.apply(this, o || [
          e.responseText,
          t,
          e
        ])
      })
    }),
    this
  },
  _.each(['ajaxStart',
  'ajaxStop',
  'ajaxComplete',
  'ajaxError',
  'ajaxSuccess',
  'ajaxSend'], function (e, t) {
    _.fn[t] = function (e) {
      return this.on(t, e)
    }
  }),
  _.expr.pseudos.animated = function (e) {
    return _.grep(_.timers, function (t) {
      return e === t.elem
    }).length
  },
  _.offset = {
    setOffset: function (e, t, n) {
      var i,
      r,
      o,
      s,
      a,
      l,
      c = _.css(e, 'position'),
      u = _(e),
      f = {
      };
      'static' === c && (e.style.position = 'relative'),
      a = u.offset(),
      o = _.css(e, 'top'),
      l = _.css(e, 'left'),
      ('absolute' === c || 'fixed' === c) && (o + l).indexOf('auto') > - 1 ? (s = (i = u.position()).top, r = i.left)  : (s = parseFloat(o) || 0, r = parseFloat(l) || 0),
      m(t) && (t = t.call(e, n, _.extend({
      }, a))),
      null != t.top && (f.top = t.top - a.top + s),
      null != t.left && (f.left = t.left - a.left + r),
      'using' in t ? t.using.call(e, f)  : u.css(f)
    }
  },
  _.fn.extend({
    offset: function (e) {
      if (arguments.length) return void 0 === e ? this : this.each(function (t) {
        _.offset.setOffset(this, e, t)
      });
      var t,
      n,
      i = this[0];
      return i ? i.getClientRects().length ? {
        top: (t = i.getBoundingClientRect()).top + (n = i.ownerDocument.defaultView).pageYOffset,
        left: t.left + n.pageXOffset
      }
       : {
        top: 0,
        left: 0
      }
       : void 0
    },
    position: function () {
      if (this[0]) {
        var e,
        t,
        n,
        i = this[0],
        r = {
          top: 0,
          left: 0
        };
        if ('fixed' === _.css(i, 'position')) t = i.getBoundingClientRect();
         else {
          for (t = this.offset(), n = i.ownerDocument, e = i.offsetParent || n.documentElement; e && (e === n.body || e === n.documentElement) && 'static' === _.css(e, 'position'); ) e = e.parentNode;
          e && e !== i && 1 === e.nodeType && ((r = _(e).offset()).top += _.css(e, 'borderTopWidth', !0), r.left += _.css(e, 'borderLeftWidth', !0))
        }
        return {
          top: t.top - r.top - _.css(i, 'marginTop', !0),
          left: t.left - r.left - _.css(i, 'marginLeft', !0)
        }
      }
    },
    offsetParent: function () {
      return this.map(function () {
        for (var e = this.offsetParent; e && 'static' === _.css(e, 'position'); ) e = e.offsetParent;
        return e || be
      })
    }
  }),
  _.each({
    scrollLeft: 'pageXOffset',
    scrollTop: 'pageYOffset'
  }, function (e, t) {
    var n = 'pageYOffset' === t;
    _.fn[e] = function (i) {
      return q(this, function (e, i, r) {
        var o;
        if (g(e) ? o = e : 9 === e.nodeType && (o = e.defaultView), void 0 === r) return o ? o[t] : e[i];
        o ? o.scrollTo(n ? o.pageXOffset : r, n ? r : o.pageYOffset)  : e[i] = r
      }, e, i, arguments.length)
    }
  }),
  _.each(['top',
  'left'], function (e, t) {
    _.cssHooks[t] = We(p.pixelPosition, function (e, n) {
      if (n) return n = Re(e, t),
      Me.test(n) ? _(e).position() [t] + 'px' : n
    })
  }),
  _.each({
    Height: 'height',
    Width: 'width'
  }, function (e, t) {
    _.each({
      padding: 'inner' + e,
      content: t,
      '': 'outer' + e
    }, function (n, i) {
      _.fn[i] = function (r, o) {
        var s = arguments.length && (n || 'boolean' != typeof r),
        a = n || (!0 === r || !0 === o ? 'margin' : 'border');
        return q(this, function (t, n, r) {
          var o;
          return g(t) ? 0 === i.indexOf('outer') ? t['inner' + e] : t.document.documentElement['client' + e] : 9 === t.nodeType ? (o = t.documentElement, Math.max(t.body['scroll' + e], o['scroll' + e], t.body['offset' + e], o['offset' + e], o['client' + e]))  : void 0 === r ? _.css(t, n, a)  : _.style(t, n, r, a)
        }, t, s ? r : void 0, s)
      }
    })
  }),
  _.each('blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu'.split(' '), function (e, t) {
    _.fn[t] = function (e, n) {
      return arguments.length > 0 ? this.on(t, null, e, n)  : this.trigger(t)
    }
  }),
  _.fn.extend({
    hover: function (e, t) {
      return this.mouseenter(e).mouseleave(t || e)
    }
  }),
  _.fn.extend({
    bind: function (e, t, n) {
      return this.on(e, null, t, n)
    },
    unbind: function (e, t) {
      return this.off(e, null, t)
    },
    delegate: function (e, t, n, i) {
      return this.on(t, e, n, i)
    },
    undelegate: function (e, t, n) {
      return 1 === arguments.length ? this.off(e, '**')  : this.off(t, e || '**', n)
    }
  }),
  _.proxy = function (e, t) {
    var n,
    i,
    r;
    if ('string' == typeof t && (n = e[t], t = e, e = n), m(e)) return i = o.call(arguments, 2),
    (r = function () {
      return e.apply(t || this, i.concat(o.call(arguments)))
    }).guid = e.guid = e.guid || _.guid++,
    r
  },
  _.holdReady = function (e) {
    e ? _.readyWait++ : _.ready(!0)
  },
  _.isArray = Array.isArray,
  _.parseJSON = JSON.parse,
  _.nodeName = S,
  _.isFunction = m,
  _.isWindow = g,
  _.camelCase = G,
  _.type = b,
  _.now = Date.now,
  _.isNumeric = function (e) {
    var t = _.type(e);
    return ('number' === t || 'string' === t) && !isNaN(e - parseFloat(e))
  },
  'function' == typeof define && define.amd && define('jquery', [
  ], function () {
    return _
  });
  var Qt = e.jQuery,
  Ut = e.$;
  return _.noConflict = function (t) {
    return e.$ === _ && (e.$ = Ut),
    t && e.jQuery === _ && (e.jQuery = Qt),
    _
  },
  t || (e.jQuery = e.$ = _),
  _
}),
function (e, t) {
  'object' == typeof exports && 'undefined' != typeof module ? module.exports = t()  : 'function' == typeof define && define.amd ? define(t)  : e.Popper = t()
}(this, function () {
  'use strict';
  for (var e = 'undefined' != typeof window && 'undefined' != typeof document, t = [
    'Edge',
    'Trident',
    'Firefox'
  ], n = 0, i = 0; i < t.length; i += 1) if (e && navigator.userAgent.indexOf(t[i]) >= 0) {
    n = 1;
    break
  }
  var r = e && window.Promise ? function (e) {
    var t = !1;
    return function () {
      t || (t = !0, window.Promise.resolve().then(function () {
        t = !1,
        e()
      }))
    }
  }
   : function (e) {
    var t = !1;
    return function () {
      t || (t = !0, setTimeout(function () {
        t = !1,
        e()
      }, n))
    }
  };
  function o(e) {
    return e && '[object Function]' === {
    }.toString.call(e)
  }
  function s(e, t) {
    if (1 !== e.nodeType) return [];
    var n = getComputedStyle(e, null);
    return t ? n[t] : n
  }
  function a(e) {
    return 'HTML' === e.nodeName ? e : e.parentNode || e.host
  }
  function l(e) {
    if (!e) return document.body;
    switch (e.nodeName) {
      case 'HTML':
      case 'BODY':
        return e.ownerDocument.body;
      case '#document':
        return e.body
    }
    var t = s(e);
    return /(auto|scroll|overlay)/.test(t.overflow + t.overflowY + t.overflowX) ? e : l(a(e))
  }
  var c = e && !(!window.MSInputMethodContext || !document.documentMode),
  u = e && /MSIE 10/.test(navigator.userAgent);
  function f(e) {
    return 11 === e ? c : 10 === e ? u : c || u
  }
  function d(e) {
    if (!e) return document.documentElement;
    for (var t = f(10) ? document.body : null, n = e.offsetParent; n === t && e.nextElementSibling; ) n = (e = e.nextElementSibling).offsetParent;
    var i = n && n.nodeName;
    return i && 'BODY' !== i && 'HTML' !== i ? - 1 !== ['TD',
    'TABLE'].indexOf(n.nodeName) && 'static' === s(n, 'position') ? d(n)  : n : e ? e.ownerDocument.documentElement : document.documentElement
  }
  function h(e) {
    return null !== e.parentNode ? h(e.parentNode)  : e
  }
  function p(e, t) {
    if (!(e && e.nodeType && t && t.nodeType)) return document.documentElement;
    var n = e.compareDocumentPosition(t) & Node.DOCUMENT_POSITION_FOLLOWING,
    i = n ? e : t,
    r = n ? t : e,
    o = document.createRange();
    o.setStart(i, 0),
    o.setEnd(r, 0);
    var s,
    a,
    l = o.commonAncestorContainer;
    if (e !== l && t !== l || i.contains(r)) return 'BODY' === (a = (s = l).nodeName) || 'HTML' !== a && d(s.firstElementChild) !== s ? d(l)  : l;
    var c = h(e);
    return c.host ? p(c.host, t)  : p(e, h(t).host)
  }
  function m(e) {
    var t = 'top' === (arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : 'top') ? 'scrollTop' : 'scrollLeft',
    n = e.nodeName;
    return 'BODY' === n || 'HTML' === n ? (e.ownerDocument.scrollingElement || e.ownerDocument.documentElement) [t] : e[t]
  }
  function g(e, t) {
    var n = 'x' === t ? 'Left' : 'Top',
    i = 'Left' === n ? 'Right' : 'Bottom';
    return parseFloat(e['border' + n + 'Width'], 10) + parseFloat(e['border' + i + 'Width'], 10)
  }
  function v(e, t, n, i) {
    return Math.max(t['offset' + e], t['scroll' + e], n['client' + e], n['offset' + e], n['scroll' + e], f(10) ? parseInt(n['offset' + e]) + parseInt(i['margin' + ('Height' === e ? 'Top' : 'Left')]) + parseInt(i['margin' + ('Height' === e ? 'Bottom' : 'Right')])  : 0)
  }
  function y(e) {
    var t = e.body,
    n = e.documentElement,
    i = f(10) && getComputedStyle(n);
    return {
      height: v('Height', t, n, i),
      width: v('Width', t, n, i)
    }
  }
  var b = function (e, t) {
    if (!(e instanceof t)) throw new TypeError('Cannot call a class as a function')
  },
  _ = function () {
    function e(e, t) {
      for (var n = 0; n < t.length; n++) {
        var i = t[n];
        i.enumerable = i.enumerable || !1,
        i.configurable = !0,
        'value' in i && (i.writable = !0),
        Object.defineProperty(e, i.key, i)
      }
    }
    return function (t, n, i) {
      return n && e(t.prototype, n),
      i && e(t, i),
      t
    }
  }(),
  w = function (e, t, n) {
    return t in e ? Object.defineProperty(e, t, {
      value: n,
      enumerable: !0,
      configurable: !0,
      writable: !0
    })  : e[t] = n,
    e
  },
  E = Object.assign || function (e) {
    for (var t = 1; t < arguments.length; t++) {
      var n = arguments[t];
      for (var i in n) Object.prototype.hasOwnProperty.call(n, i) && (e[i] = n[i])
    }
    return e
  };
  function C(e) {
    return E({
    }, e, {
      right: e.left + e.width,
      bottom: e.top + e.height
    })
  }
  function T(e) {
    var t = {
    };
    try {
      if (f(10)) {
        t = e.getBoundingClientRect();
        var n = m(e, 'top'),
        i = m(e, 'left');
        t.top += n,
        t.left += i,
        t.bottom += n,
        t.right += i
      } else t = e.getBoundingClientRect()
    } catch (e) {
    }
    var r = {
      left: t.left,
      top: t.top,
      width: t.right - t.left,
      height: t.bottom - t.top
    },
    o = 'HTML' === e.nodeName ? y(e.ownerDocument)  : {
    },
    a = e.offsetWidth - (o.width || e.clientWidth || r.right - r.left),
    l = e.offsetHeight - (o.height || e.clientHeight || r.bottom - r.top);
    if (a || l) {
      var c = s(e);
      a -= g(c, 'x'),
      l -= g(c, 'y'),
      r.width -= a,
      r.height -= l
    }
    return C(r)
  }
  function x(e, t) {
    var n = arguments.length > 2 && void 0 !== arguments[2] && arguments[2],
    i = f(10),
    r = 'HTML' === t.nodeName,
    o = T(e),
    a = T(t),
    c = l(e),
    u = s(t),
    d = parseFloat(u.borderTopWidth, 10),
    h = parseFloat(u.borderLeftWidth, 10);
    n && r && (a.top = Math.max(a.top, 0), a.left = Math.max(a.left, 0));
    var p = C({
      top: o.top - a.top - d,
      left: o.left - a.left - h,
      width: o.width,
      height: o.height
    });
    if (p.marginTop = 0, p.marginLeft = 0, !i && r) {
      var g = parseFloat(u.marginTop, 10),
      v = parseFloat(u.marginLeft, 10);
      p.top -= d - g,
      p.bottom -= d - g,
      p.left -= h - v,
      p.right -= h - v,
      p.marginTop = g,
      p.marginLeft = v
    }
    return (i && !n ? t.contains(c)  : t === c && 'BODY' !== c.nodeName) && (p = function (e, t) {
      var n = arguments.length > 2 && void 0 !== arguments[2] && arguments[2],
      i = m(t, 'top'),
      r = m(t, 'left'),
      o = n ? - 1 : 1;
      return e.top += i * o,
      e.bottom += i * o,
      e.left += r * o,
      e.right += r * o,
      e
    }(p, t)),
    p
  }
  function A(e) {
    if (!e || !e.parentElement || f()) return document.documentElement;
    for (var t = e.parentElement; t && 'none' === s(t, 'transform'); ) t = t.parentElement;
    return t || document.documentElement
  }
  function S(e, t, n, i) {
    var r = arguments.length > 4 && void 0 !== arguments[4] && arguments[4],
    o = {
      top: 0,
      left: 0
    },
    c = r ? A(e)  : p(e, t);
    if ('viewport' === i) o = function (e) {
      var t = arguments.length > 1 && void 0 !== arguments[1] && arguments[1],
      n = e.ownerDocument.documentElement,
      i = x(e, n),
      r = Math.max(n.clientWidth, window.innerWidth || 0),
      o = Math.max(n.clientHeight, window.innerHeight || 0),
      s = t ? 0 : m(n),
      a = t ? 0 : m(n, 'left');
      return C({
        top: s - i.top + i.marginTop,
        left: a - i.left + i.marginLeft,
        width: r,
        height: o
      })
    }(c, r);
     else {
      var u = void 0;
      'scrollParent' === i ? 'BODY' === (u = l(a(t))).nodeName && (u = e.ownerDocument.documentElement)  : u = 'window' === i ? e.ownerDocument.documentElement : i;
      var f = x(u, c, r);
      if ('HTML' !== u.nodeName || function e(t) {
        var n = t.nodeName;
        return 'BODY' !== n && 'HTML' !== n && ('fixed' === s(t, 'position') || e(a(t)))
      }(c)) o = f;
       else {
        var d = y(e.ownerDocument),
        h = d.height,
        g = d.width;
        o.top += f.top - f.marginTop,
        o.bottom = h + f.top,
        o.left += f.left - f.marginLeft,
        o.right = g + f.left
      }
    }
    var v = 'number' == typeof (n = n || 0);
    return o.left += v ? n : n.left || 0,
    o.top += v ? n : n.top || 0,
    o.right -= v ? n : n.right || 0,
    o.bottom -= v ? n : n.bottom || 0,
    o
  }
  function I(e, t, n, i, r) {
    var o = arguments.length > 5 && void 0 !== arguments[5] ? arguments[5] : 0;
    if ( - 1 === e.indexOf('auto')) return e;
    var s = S(n, i, o, r),
    a = {
      top: {
        width: s.width,
        height: t.top - s.top
      },
      right: {
        width: s.right - t.right,
        height: s.height
      },
      bottom: {
        width: s.width,
        height: s.bottom - t.bottom
      },
      left: {
        width: t.left - s.left,
        height: s.height
      }
    },
    l = Object.keys(a).map(function (e) {
      return E({
        key: e
      }, a[e], {
        area: (t = a[e], t.width * t.height)
      });
      var t
    }).sort(function (e, t) {
      return t.area - e.area
    }),
    c = l.filter(function (e) {
      return e.width >= n.clientWidth && e.height >= n.clientHeight
    }),
    u = c.length > 0 ? c[0].key : l[0].key,
    f = e.split('-') [1];
    return u + (f ? '-' + f : '')
  }
  function D(e, t, n) {
    var i = arguments.length > 3 && void 0 !== arguments[3] ? arguments[3] : null;
    return x(n, i ? A(t)  : p(t, n), i)
  }
  function k(e) {
    var t = getComputedStyle(e),
    n = parseFloat(t.marginTop) + parseFloat(t.marginBottom),
    i = parseFloat(t.marginLeft) + parseFloat(t.marginRight);
    return {
      width: e.offsetWidth + i,
      height: e.offsetHeight + n
    }
  }
  function N(e) {
    var t = {
      left: 'right',
      right: 'left',
      bottom: 'top',
      top: 'bottom'
    };
    return e.replace(/left|right|bottom|top/g, function (e) {
      return t[e]
    })
  }
  function O(e, t, n) {
    n = n.split('-') [0];
    var i = k(e),
    r = {
      width: i.width,
      height: i.height
    },
    o = - 1 !== ['right',
    'left'].indexOf(n),
    s = o ? 'top' : 'left',
    a = o ? 'left' : 'top',
    l = o ? 'height' : 'width',
    c = o ? 'width' : 'height';
    return r[s] = t[s] + t[l] / 2 - i[l] / 2,
    r[a] = n === a ? t[a] - i[c] : t[N(a)],
    r
  }
  function j(e, t) {
    return Array.prototype.find ? e.find(t)  : e.filter(t) [0]
  }
  function L(e, t, n) {
    return (void 0 === n ? e : e.slice(0, function (e, t, n) {
      if (Array.prototype.findIndex) return e.findIndex(function (e) {
        return e.name === n
      });
      var i = j(e, function (e) {
        return e.name === n
      });
      return e.indexOf(i)
    }(e, 0, n))).forEach(function (e) {
      e.function && console.warn('`modifier.function` is deprecated, use `modifier.fn`!');
      var n = e.function || e.fn;
      e.enabled && o(n) && (t.offsets.popper = C(t.offsets.popper), t.offsets.reference = C(t.offsets.reference), t = n(t, e))
    }),
    t
  }
  function $(e, t) {
    return e.some(function (e) {
      return e.enabled && e.name === t
    })
  }
  function P(e) {
    for (var t = [
      !1,
      'ms',
      'Webkit',
      'Moz',
      'O'
    ], n = e.charAt(0).toUpperCase() + e.slice(1), i = 0; i < t.length; i++) {
      var r = t[i],
      o = r ? '' + r + n : e;
      if (void 0 !== document.body.style[o]) return o
    }
    return null
  }
  function M(e) {
    var t = e.ownerDocument;
    return t ? t.defaultView : window
  }
  function H(e) {
    return '' !== e && !isNaN(parseFloat(e)) && isFinite(e)
  }
  function F(e, t) {
    Object.keys(t).forEach(function (n) {
      var i = '';
      - 1 !== ['width',
      'height',
      'top',
      'right',
      'bottom',
      'left'].indexOf(n) && H(t[n]) && (i = 'px'),
      e.style[n] = t[n] + i
    })
  }
  function R(e, t, n) {
    var i = j(e, function (e) {
      return e.name === t
    }),
    r = !!i && e.some(function (e) {
      return e.name === n && e.enabled && e.order < i.order
    });
    if (!r) {
      var o = '`' + t + '`';
      console.warn('`' + n + '` modifier is required by ' + o + ' modifier in order to work, be sure to include it before ' + o + '!')
    }
    return r
  }
  var W = [
    'auto-start',
    'auto',
    'auto-end',
    'top-start',
    'top',
    'top-end',
    'right-start',
    'right',
    'right-end',
    'bottom-end',
    'bottom',
    'bottom-start',
    'left-end',
    'left',
    'left-start'
  ],
  q = W.slice(3);
  function B(e) {
    var t = arguments.length > 1 && void 0 !== arguments[1] && arguments[1],
    n = q.indexOf(e),
    i = q.slice(n + 1).concat(q.slice(0, n));
    return t ? i.reverse()  : i
  }
  var Q = {
    placement: 'bottom',
    positionFixed: !1,
    eventsEnabled: !0,
    removeOnDestroy: !1,
    onCreate: function () {
    },
    onUpdate: function () {
    },
    modifiers: {
      shift: {
        order: 100,
        enabled: !0,
        fn: function (e) {
          var t = e.placement,
          n = t.split('-') [0],
          i = t.split('-') [1];
          if (i) {
            var r = e.offsets,
            o = r.reference,
            s = r.popper,
            a = - 1 !== ['bottom',
            'top'].indexOf(n),
            l = a ? 'left' : 'top',
            c = a ? 'width' : 'height',
            u = {
              start: w({
              }, l, o[l]),
              end: w({
              }, l, o[l] + o[c] - s[c])
            };
            e.offsets.popper = E({
            }, s, u[i])
          }
          return e
        }
      },
      offset: {
        order: 200,
        enabled: !0,
        fn: function (e, t) {
          var n,
          i = t.offset,
          r = e.offsets,
          o = r.popper,
          s = r.reference,
          a = e.placement.split('-') [0];
          return n = H( + i) ? [
            + i,
            0
          ] : function (e, t, n, i) {
            var r = [
              0,
              0
            ],
            o = - 1 !== ['right',
            'left'].indexOf(i),
            s = e.split(/(\+|\-)/).map(function (e) {
              return e.trim()
            }),
            a = s.indexOf(j(s, function (e) {
              return - 1 !== e.search(/,|\s/)
            }));
            s[a] && - 1 === s[a].indexOf(',') && console.warn('Offsets separated by white space(s) are deprecated, use a comma (,) instead.');
            var l = /\s*,\s*|\s+/,
            c = - 1 !== a ? [
              s.slice(0, a).concat([s[a].split(l) [0]]),
              [
                s[a].split(l) [1]
              ].concat(s.slice(a + 1))
            ] : [
              s
            ];
            return (c = c.map(function (e, i) {
              var r = (1 === i ? !o : o) ? 'height' : 'width',
              s = !1;
              return e.reduce(function (e, t) {
                return '' === e[e.length - 1] && - 1 !== ['+',
                '-'].indexOf(t) ? (e[e.length - 1] = t, s = !0, e)  : s ? (e[e.length - 1] += t, s = !1, e)  : e.concat(t)
              }, [
              ]).map(function (e) {
                return function (e, t, n, i) {
                  var r = e.match(/((?:\-|\+)?\d*\.?\d*)(.*)/),
                  o = + r[1],
                  s = r[2];
                  if (!o) return e;
                  if (0 === s.indexOf('%')) {
                    var a = void 0;
                    switch (s) {
                      case '%p':
                        a = n;
                        break;
                      case '%':
                      case '%r':
                      default:
                        a = i
                    }
                    return C(a) [t] / 100 * o
                  }
                  return 'vh' === s || 'vw' === s ? ('vh' === s ? Math.max(document.documentElement.clientHeight, window.innerHeight || 0)  : Math.max(document.documentElement.clientWidth, window.innerWidth || 0)) / 100 * o : o
                }(e, r, t, n)
              })
            })).forEach(function (e, t) {
              e.forEach(function (n, i) {
                H(n) && (r[t] += n * ('-' === e[i - 1] ? - 1 : 1))
              })
            }), r
          }(i, o, s, a),
          'left' === a ? (o.top += n[0], o.left -= n[1])  : 'right' === a ? (o.top += n[0], o.left += n[1])  : 'top' === a ? (o.left += n[0], o.top -= n[1])  : 'bottom' === a && (o.left += n[0], o.top += n[1]),
          e.popper = o,
          e
        },
        offset: 0
      },
      preventOverflow: {
        order: 300,
        enabled: !0,
        fn: function (e, t) {
          var n = t.boundariesElement || d(e.instance.popper);
          e.instance.reference === n && (n = d(n));
          var i = P('transform'),
          r = e.instance.popper.style,
          o = r.top,
          s = r.left,
          a = r[i];
          r.top = '',
          r.left = '',
          r[i] = '';
          var l = S(e.instance.popper, e.instance.reference, t.padding, n, e.positionFixed);
          r.top = o,
          r.left = s,
          r[i] = a,
          t.boundaries = l;
          var c = e.offsets.popper,
          u = {
            primary: function (e) {
              var n = c[e];
              return c[e] < l[e] && !t.escapeWithReference && (n = Math.max(c[e], l[e])),
              w({
              }, e, n)
            },
            secondary: function (e) {
              var n = 'right' === e ? 'left' : 'top',
              i = c[n];
              return c[e] > l[e] && !t.escapeWithReference && (i = Math.min(c[n], l[e] - ('right' === e ? c.width : c.height))),
              w({
              }, n, i)
            }
          };
          return t.priority.forEach(function (e) {
            var t = - 1 !== ['left',
            'top'].indexOf(e) ? 'primary' : 'secondary';
            c = E({
            }, c, u[t](e))
          }),
          e.offsets.popper = c,
          e
        },
        priority: [
          'left',
          'right',
          'top',
          'bottom'
        ],
        padding: 5,
        boundariesElement: 'scrollParent'
      },
      keepTogether: {
        order: 400,
        enabled: !0,
        fn: function (e) {
          var t = e.offsets,
          n = t.popper,
          i = t.reference,
          r = e.placement.split('-') [0],
          o = Math.floor,
          s = - 1 !== ['top',
          'bottom'].indexOf(r),
          a = s ? 'right' : 'bottom',
          l = s ? 'left' : 'top',
          c = s ? 'width' : 'height';
          return n[a] < o(i[l]) && (e.offsets.popper[l] = o(i[l]) - n[c]),
          n[l] > o(i[a]) && (e.offsets.popper[l] = o(i[a])),
          e
        }
      },
      arrow: {
        order: 500,
        enabled: !0,
        fn: function (e, t) {
          var n;
          if (!R(e.instance.modifiers, 'arrow', 'keepTogether')) return e;
          var i = t.element;
          if ('string' == typeof i) {
            if (!(i = e.instance.popper.querySelector(i))) return e
          } else if (!e.instance.popper.contains(i)) return console.warn('WARNING: `arrow.element` must be child of its popper element!'),
          e;
          var r = e.placement.split('-') [0],
          o = e.offsets,
          a = o.popper,
          l = o.reference,
          c = - 1 !== ['left',
          'right'].indexOf(r),
          u = c ? 'height' : 'width',
          f = c ? 'Top' : 'Left',
          d = f.toLowerCase(),
          h = c ? 'left' : 'top',
          p = c ? 'bottom' : 'right',
          m = k(i) [u];
          l[p] - m < a[d] && (e.offsets.popper[d] -= a[d] - (l[p] - m)),
          l[d] + m > a[p] && (e.offsets.popper[d] += l[d] + m - a[p]),
          e.offsets.popper = C(e.offsets.popper);
          var g = l[d] + l[u] / 2 - m / 2,
          v = s(e.instance.popper),
          y = parseFloat(v['margin' + f], 10),
          b = parseFloat(v['border' + f + 'Width'], 10),
          _ = g - e.offsets.popper[d] - y - b;
          return _ = Math.max(Math.min(a[u] - m, _), 0),
          e.arrowElement = i,
          e.offsets.arrow = (w(n = {
          }, d, Math.round(_)), w(n, h, ''), n),
          e
        },
        element: '[x-arrow]'
      },
      flip: {
        order: 600,
        enabled: !0,
        fn: function (e, t) {
          if ($(e.instance.modifiers, 'inner')) return e;
          if (e.flipped && e.placement === e.originalPlacement) return e;
          var n = S(e.instance.popper, e.instance.reference, t.padding, t.boundariesElement, e.positionFixed),
          i = e.placement.split('-') [0],
          r = N(i),
          o = e.placement.split('-') [1] || '',
          s = [
          ];
          switch (t.behavior) {
            case 'flip':
              s = [
                i,
                r
              ];
              break;
            case 'clockwise':
              s = B(i);
              break;
            case 'counterclockwise':
              s = B(i, !0);
              break;
            default:
              s = t.behavior
          }
          return s.forEach(function (a, l) {
            if (i !== a || s.length === l + 1) return e;
            i = e.placement.split('-') [0],
            r = N(i);
            var c = e.offsets.popper,
            u = e.offsets.reference,
            f = Math.floor,
            d = 'left' === i && f(c.right) > f(u.left) || 'right' === i && f(c.left) < f(u.right) || 'top' === i && f(c.bottom) > f(u.top) || 'bottom' === i && f(c.top) < f(u.bottom),
            h = f(c.left) < f(n.left),
            p = f(c.right) > f(n.right),
            m = f(c.top) < f(n.top),
            g = f(c.bottom) > f(n.bottom),
            v = 'left' === i && h || 'right' === i && p || 'top' === i && m || 'bottom' === i && g,
            y = - 1 !== ['top',
            'bottom'].indexOf(i),
            b = !!t.flipVariations && (y && 'start' === o && h || y && 'end' === o && p || !y && 'start' === o && m || !y && 'end' === o && g);
            (d || v || b) && (e.flipped = !0, (d || v) && (i = s[l + 1]), b && (o = function (e) {
              return 'end' === e ? 'start' : 'start' === e ? 'end' : e
            }(o)), e.placement = i + (o ? '-' + o : ''), e.offsets.popper = E({
            }, e.offsets.popper, O(e.instance.popper, e.offsets.reference, e.placement)), e = L(e.instance.modifiers, e, 'flip'))
          }),
          e
        },
        behavior: 'flip',
        padding: 5,
        boundariesElement: 'viewport'
      },
      inner: {
        order: 700,
        enabled: !1,
        fn: function (e) {
          var t = e.placement,
          n = t.split('-') [0],
          i = e.offsets,
          r = i.popper,
          o = i.reference,
          s = - 1 !== ['left',
          'right'].indexOf(n),
          a = - 1 === ['top',
          'left'].indexOf(n);
          return r[s ? 'left' : 'top'] = o[n] - (a ? r[s ? 'width' : 'height'] : 0),
          e.placement = N(t),
          e.offsets.popper = C(r),
          e
        }
      },
      hide: {
        order: 800,
        enabled: !0,
        fn: function (e) {
          if (!R(e.instance.modifiers, 'hide', 'preventOverflow')) return e;
          var t = e.offsets.reference,
          n = j(e.instance.modifiers, function (e) {
            return 'preventOverflow' === e.name
          }).boundaries;
          if (t.bottom < n.top || t.left > n.right || t.top > n.bottom || t.right < n.left) {
            if (!0 === e.hide) return e;
            e.hide = !0,
            e.attributes['x-out-of-boundaries'] = ''
          } else {
            if (!1 === e.hide) return e;
            e.hide = !1,
            e.attributes['x-out-of-boundaries'] = !1
          }
          return e
        }
      },
      computeStyle: {
        order: 850,
        enabled: !0,
        fn: function (e, t) {
          var n = t.x,
          i = t.y,
          r = e.offsets.popper,
          o = j(e.instance.modifiers, function (e) {
            return 'applyStyle' === e.name
          }).gpuAcceleration;
          void 0 !== o && console.warn('WARNING: `gpuAcceleration` option moved to `computeStyle` modifier and will not be supported in future versions of Popper.js!');
          var s,
          a,
          l = void 0 !== o ? o : t.gpuAcceleration,
          c = d(e.instance.popper),
          u = T(c),
          f = {
            position: r.position
          },
          h = {
            left: Math.floor(r.left),
            top: Math.round(r.top),
            bottom: Math.round(r.bottom),
            right: Math.floor(r.right)
          },
          p = 'bottom' === n ? 'top' : 'bottom',
          m = 'right' === i ? 'left' : 'right',
          g = P('transform');
          if (a = 'bottom' === p ? 'HTML' === c.nodeName ? - c.clientHeight + h.bottom : - u.height + h.bottom : h.top, s = 'right' === m ? 'HTML' === c.nodeName ? - c.clientWidth + h.right : - u.width + h.right : h.left, l && g) f[g] = 'translate3d(' + s + 'px, ' + a + 'px, 0)',
          f[p] = 0,
          f[m] = 0,
          f.willChange = 'transform';
           else {
            var v = 'right' === m ? - 1 : 1;
            f[p] = a * ('bottom' === p ? - 1 : 1),
            f[m] = s * v,
            f.willChange = p + ', ' + m
          }
          return e.attributes = E({
          }, {
            'x-placement': e.placement
          }, e.attributes),
          e.styles = E({
          }, f, e.styles),
          e.arrowStyles = E({
          }, e.offsets.arrow, e.arrowStyles),
          e
        },
        gpuAcceleration: !0,
        x: 'bottom',
        y: 'right'
      },
      applyStyle: {
        order: 900,
        enabled: !0,
        fn: function (e) {
          var t,
          n;
          return F(e.instance.popper, e.styles),
          t = e.instance.popper,
          n = e.attributes,
          Object.keys(n).forEach(function (e) {
            !1 !== n[e] ? t.setAttribute(e, n[e])  : t.removeAttribute(e)
          }),
          e.arrowElement && Object.keys(e.arrowStyles).length && F(e.arrowElement, e.arrowStyles),
          e
        },
        onLoad: function (e, t, n, i, r) {
          var o = D(r, t, e, n.positionFixed),
          s = I(n.placement, o, t, e, n.modifiers.flip.boundariesElement, n.modifiers.flip.padding);
          return t.setAttribute('x-placement', s),
          F(t, {
            position: n.positionFixed ? 'fixed' : 'absolute'
          }),
          n
        },
        gpuAcceleration: void 0
      }
    }
  },
  U = function () {
    function e(t, n) {
      var i = this,
      s = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : {
      };
      b(this, e),
      this.scheduleUpdate = function () {
        return requestAnimationFrame(i.update)
      },
      this.update = r(this.update.bind(this)),
      this.options = E({
      }, e.Defaults, s),
      this.state = {
        isDestroyed: !1,
        isCreated: !1,
        scrollParents: [
        ]
      },
      this.reference = t && t.jquery ? t[0] : t,
      this.popper = n && n.jquery ? n[0] : n,
      this.options.modifiers = {
      },
      Object.keys(E({
      }, e.Defaults.modifiers, s.modifiers)).forEach(function (t) {
        i.options.modifiers[t] = E({
        }, e.Defaults.modifiers[t] || {
        }, s.modifiers ? s.modifiers[t] : {
        })
      }),
      this.modifiers = Object.keys(this.options.modifiers).map(function (e) {
        return E({
          name: e
        }, i.options.modifiers[e])
      }).sort(function (e, t) {
        return e.order - t.order
      }),
      this.modifiers.forEach(function (e) {
        e.enabled && o(e.onLoad) && e.onLoad(i.reference, i.popper, i.options, e, i.state)
      }),
      this.update();
      var a = this.options.eventsEnabled;
      a && this.enableEventListeners(),
      this.state.eventsEnabled = a
    }
    return _(e, [
      {
        key: 'update',
        value: function () {
          return (function () {
            if (!this.state.isDestroyed) {
              var e = {
                instance: this,
                styles: {
                },
                arrowStyles: {
                },
                attributes: {
                },
                flipped: !1,
                offsets: {
                }
              };
              e.offsets.reference = D(this.state, this.popper, this.reference, this.options.positionFixed),
              e.placement = I(this.options.placement, e.offsets.reference, this.popper, this.reference, this.options.modifiers.flip.boundariesElement, this.options.modifiers.flip.padding),
              e.originalPlacement = e.placement,
              e.positionFixed = this.options.positionFixed,
              e.offsets.popper = O(this.popper, e.offsets.reference, e.placement),
              e.offsets.popper.position = this.options.positionFixed ? 'fixed' : 'absolute',
              e = L(this.modifiers, e),
              this.state.isCreated ? this.options.onUpdate(e)  : (this.state.isCreated = !0, this.options.onCreate(e))
            }
          }).call(this)
        }
      },
      {
        key: 'destroy',
        value: function () {
          return (function () {
            return this.state.isDestroyed = !0,
            $(this.modifiers, 'applyStyle') && (this.popper.removeAttribute('x-placement'), this.popper.style.position = '', this.popper.style.top = '', this.popper.style.left = '', this.popper.style.right = '', this.popper.style.bottom = '', this.popper.style.willChange = '', this.popper.style[P('transform')] = ''),
            this.disableEventListeners(),
            this.options.removeOnDestroy && this.popper.parentNode.removeChild(this.popper),
            this
          }).call(this)
        }
      },
      {
        key: 'enableEventListeners',
        value: function () {
          return (function () {
            this.state.eventsEnabled || (this.state = function (e, t, n, i) {
              n.updateBound = i,
              M(e).addEventListener('resize', n.updateBound, {
                passive: !0
              });
              var r = l(e);
              return function e(t, n, i, r) {
                var o = 'BODY' === t.nodeName,
                s = o ? t.ownerDocument.defaultView : t;
                s.addEventListener(n, i, {
                  passive: !0
                }),
                o || e(l(s.parentNode), n, i, r),
                r.push(s)
              }(r, 'scroll', n.updateBound, n.scrollParents),
              n.scrollElement = r,
              n.eventsEnabled = !0,
              n
            }(this.reference, 0, this.state, this.scheduleUpdate))
          }).call(this)
        }
      },
      {
        key: 'disableEventListeners',
        value: function () {
          return (function () {
            var e;
            this.state.eventsEnabled && (cancelAnimationFrame(this.scheduleUpdate), this.state = (e = this.state, M(this.reference).removeEventListener('resize', e.updateBound), e.scrollParents.forEach(function (t) {
              t.removeEventListener('scroll', e.updateBound)
            }), e.updateBound = null, e.scrollParents = [
            ], e.scrollElement = null, e.eventsEnabled = !1, e))
          }).call(this)
        }
      }
    ]),
    e
  }();
  return U.Utils = ('undefined' != typeof window ? window : global).PopperUtils,
  U.placements = W,
  U.Defaults = Q,
  U
});
var Arrive = function (e, t, n) {
  'use strict';
  if (e.MutationObserver && 'undefined' != typeof HTMLElement) {
    var i,
    r = 0,
    o = (i = HTMLElement.prototype.matches || HTMLElement.prototype.webkitMatchesSelector || HTMLElement.prototype.mozMatchesSelector || HTMLElement.prototype.msMatchesSelector, {
      matchesSelector: function (e, t) {
        return e instanceof HTMLElement && i.call(e, t)
      },
      addMethod: function (e, t, n) {
        var i = e[t];
        e[t] = function () {
          return n.length == arguments.length ? n.apply(this, arguments)  : 'function' == typeof i ? i.apply(this, arguments)  : void 0
        }
      },
      callCallbacks: function (e, t) {
        t && t.options.onceOnly && 1 == t.firedElems.length && (e = [
          e[0]
        ]);
        for (var n, i = 0; n = e[i]; i++) n && n.callback && n.callback.call(n.elem, n.elem);
        t && t.options.onceOnly && 1 == t.firedElems.length && t.me.unbindEventWithSelectorAndCallback.call(t.target, t.selector, t.callback)
      },
      checkChildNodesRecursively: function (e, t, n, i) {
        for (var r, s = 0; r = e[s]; s++) n(r, t, i) && i.push({
          callback: t.callback,
          elem: r
        }),
        r.childNodes.length > 0 && o.checkChildNodesRecursively(r.childNodes, t, n, i)
      },
      mergeArrays: function (e, t) {
        var n,
        i = {
        };
        for (n in e) e.hasOwnProperty(n) && (i[n] = e[n]);
        for (n in t) t.hasOwnProperty(n) && (i[n] = t[n]);
        return i
      },
      toElementsArray: function (t) {
        return void 0 === t || 'number' == typeof t.length && t !== e || (t = [
          t
        ]),
        t
      }
    }),
    s = function () {
      var e = function () {
        this._eventsBucket = [
        ],
        this._beforeAdding = null,
        this._beforeRemoving = null
      };
      return e.prototype.addEvent = function (e, t, n, i) {
        var r = {
          target: e,
          selector: t,
          options: n,
          callback: i,
          firedElems: [
          ]
        };
        return this._beforeAdding && this._beforeAdding(r),
        this._eventsBucket.push(r),
        r
      },
      e.prototype.removeEvent = function (e) {
        for (var t, n = this._eventsBucket.length - 1; t = this._eventsBucket[n]; n--) if (e(t)) {
          this._beforeRemoving && this._beforeRemoving(t);
          var i = this._eventsBucket.splice(n, 1);
          i && i.length && (i[0].callback = null)
        }
      },
      e.prototype.beforeAdding = function (e) {
        this._beforeAdding = e
      },
      e.prototype.beforeRemoving = function (e) {
        this._beforeRemoving = e
      },
      e
    }(),
    a = function (t, i) {
      var r = new s,
      a = this,
      l = {
        fireOnAttributesModification: !1
      };
      return r.beforeAdding(function (n) {
        var r,
        o = n.target;
        o !== e.document && o !== e || (o = document.getElementsByTagName('html') [0]),
        r = new MutationObserver(function (e) {
          i.call(this, e, n)
        });
        var s = t(n.options);
        r.observe(o, s),
        n.observer = r,
        n.me = a
      }),
      r.beforeRemoving(function (e) {
        e.observer.disconnect()
      }),
      this.bindEvent = function (e, t, n) {
        t = o.mergeArrays(l, t);
        for (var i = o.toElementsArray(this), s = 0; s < i.length; s++) r.addEvent(i[s], e, t, n)
      },
      this.unbindEvent = function () {
        var e = o.toElementsArray(this);
        r.removeEvent(function (t) {
          for (var i = 0; i < e.length; i++) if (this === n || t.target === e[i]) return !0;
          return !1
        })
      },
      this.unbindEventWithSelectorOrCallback = function (e) {
        var t = o.toElementsArray(this),
        i = e;
        r.removeEvent('function' == typeof e ? function (e) {
          for (var r = 0; r < t.length; r++) if ((this === n || e.target === t[r]) && e.callback === i) return !0;
          return !1
        }
         : function (i) {
          for (var r = 0; r < t.length; r++) if ((this === n || i.target === t[r]) && i.selector === e) return !0;
          return !1
        })
      },
      this.unbindEventWithSelectorAndCallback = function (e, t) {
        var i = o.toElementsArray(this);
        r.removeEvent(function (r) {
          for (var o = 0; o < i.length; o++) if ((this === n || r.target === i[o]) && r.selector === e && r.callback === t) return !0;
          return !1
        })
      },
      this
    },
    l = new function () {
      var e = {
        fireOnAttributesModification: !1,
        onceOnly: !1,
        existing: !1
      };
      function t(e, t, i) {
        return !(!o.matchesSelector(e, t.selector) || (e._id === n && (e._id = r++), - 1 != t.firedElems.indexOf(e._id)) || (t.firedElems.push(e._id), 0))
      }
      var i = (l = new a(function (e) {
        var t = {
          attributes: !1,
          childList: !0,
          subtree: !0
        };
        return e.fireOnAttributesModification && (t.attributes = !0),
        t
      }, function (e, n) {
        e.forEach(function (e) {
          var i = e.addedNodes,
          r = e.target,
          s = [
          ];
          null !== i && i.length > 0 ? o.checkChildNodesRecursively(i, n, t, s)  : 'attributes' === e.type && t(r, n) && s.push({
            callback: n.callback,
            elem: r
          }),
          o.callCallbacks(s, n)
        })
      })).bindEvent;
      return l.bindEvent = function (t, n, r) {
        void 0 === r ? (r = n, n = e)  : n = o.mergeArrays(e, n);
        var s = o.toElementsArray(this);
        if (n.existing) {
          for (var a = [
          ], l = 0; l < s.length; l++) for (var c = s[l].querySelectorAll(t), u = 0; u < c.length; u++) a.push({
            callback: r,
            elem: c[u]
          });
          if (n.onceOnly && a.length) return r.call(a[0].elem, a[0].elem);
          setTimeout(o.callCallbacks, 1, a)
        }
        i.call(this, t, n, r)
      },
      l
    },
    c = new function () {
      var e = {
      };
      function t(e, t) {
        return o.matchesSelector(e, t.selector)
      }
      var n = (c = new a(function () {
        return {
          childList: !0,
          subtree: !0
        }
      }, function (e, n) {
        e.forEach(function (e) {
          var i = e.removedNodes,
          r = [
          ];
          null !== i && i.length > 0 && o.checkChildNodesRecursively(i, n, t, r),
          o.callCallbacks(r, n)
        })
      })).bindEvent;
      return c.bindEvent = function (t, i, r) {
        void 0 === r ? (r = i, i = e)  : i = o.mergeArrays(e, i),
        n.call(this, t, i, r)
      },
      c
    };
    t && d(t.fn),
    d(HTMLElement.prototype),
    d(NodeList.prototype),
    d(HTMLCollection.prototype),
    d(HTMLDocument.prototype),
    d(Window.prototype);
    var u = {
    };
    return f(l, u, 'unbindAllArrive'),
    f(c, u, 'unbindAllLeave'),
    u
  }
  function f(e, t, n) {
    o.addMethod(t, n, e.unbindEvent),
    o.addMethod(t, n, e.unbindEventWithSelectorOrCallback),
    o.addMethod(t, n, e.unbindEventWithSelectorAndCallback)
  }
  function d(e) {
    e.arrive = l.bindEvent,
    f(l, e, 'unbindArrive'),
    e.leave = c.bindEvent,
    f(c, e, 'unbindLeave')
  }
}(window, 'undefined' == typeof jQuery ? null : jQuery, void 0);
!function (e, t) {
  'object' == typeof exports && 'undefined' != typeof module ? t(require('jquery'), require('popper.js'))  : 'function' == typeof define && define.amd ? define(['jquery',
  'popper.js'], t)  : t(e.jQuery, e.Popper)
}(this, function (e, t) {
  'use strict';
  function n(e, t) {
    for (var n, i = 0; i < t.length; i++) (n = t[i]).enumerable = n.enumerable || !1,
    n.configurable = !0,
    'value' in n && (n.writable = !0),
    Object.defineProperty(e, n.key, n)
  }
  function i(e, t, i) {
    return t && n(e.prototype, t),
    i && n(e, i),
    e
  }
  function r() {
    return (r = Object.assign || function (e) {
      for (var t, n = 1; n < arguments.length; n++) for (var i in t = arguments[n]) Object.prototype.hasOwnProperty.call(t, i) && (e[i] = t[i]);
      return e
    }).apply(this, arguments)
  }
  function o(e, t) {
    e.prototype = Object.create(t.prototype),
    e.prototype.constructor = e,
    e.__proto__ = t
  }
  var s = Math.max;
  e = e && e.hasOwnProperty('default') ? e.default:
  e,
  t = t && t.hasOwnProperty('default') ? t.default:
  t;
  var a = function (e) {
    function t(e) {
      return {
      }.toString.call(e).match(/\s([a-zA-Z]+)/) [1].toLowerCase()
    }
    var n = !1,
    i = {
      TRANSITION_END: 'bsTransitionEnd',
      getUID: function (e) {
        do {
          e += ~~(1000000 * Math.random())
        } while (document.getElementById(e));
        return e
      },
      getSelectorFromElement: function (t) {
        var n = t.getAttribute('data-target');
        n && '#' !== n || (n = t.getAttribute('href') || ''),
        '#' === n.charAt(0) && (n = function (t) {
          return 'function' == typeof e.escapeSelector ? e.escapeSelector(t).substr(1)  : t.replace(/(:|\.|\[|\]|,|=|@)/g, '\\$1')
        }(n));
        try {
          return 0 < e(document).find(n).length ? n : null
        } catch (e) {
          return null
        }
      },
      reflow: function (e) {
        return e.offsetHeight
      },
      triggerTransitionEnd: function (t) {
        e(t).trigger(n.end)
      },
      supportsTransitionEnd: function () {
        return !!n
      },
      isElement: function (e) {
        return (e[0] || e).nodeType
      },
      typeCheckConfig: function (e, n, r) {
        for (var o in r) if (Object.prototype.hasOwnProperty.call(r, o)) {
          var s = r[o],
          a = n[o],
          l = a && i.isElement(a) ? 'element' : t(a);
          if (!new RegExp(s).test(l)) throw new Error(e.toUpperCase() + ': Option "' + o + '" provided type "' + l + '" but expected type "' + s + '".')
        }
      }
    };
    return n = ('undefined' == typeof window || !window.QUnit) && {
      end: 'transitionend'
    },
    e.fn.emulateTransitionEnd = function (t) {
      var n = this,
      r = !1;
      return e(this).one(i.TRANSITION_END, function () {
        r = !0
      }),
      setTimeout(function () {
        r || i.triggerTransitionEnd(n)
      }, t),
      this
    },
    i.supportsTransitionEnd() && (e.event.special[i.TRANSITION_END] = {
      bindType: n.end,
      delegateType: n.end,
      handle: function (t) {
        return e(t.target).is(this) ? t.handleObj.handler.apply(this, arguments)  : void 0
      }
    }),
    i
  }(e),
  l = (function (e) {
    var t = 'alert',
    n = 'bs.alert',
    r = '.' + n,
    o = e.fn[t],
    s = {
      CLOSE: 'close' + r,
      CLOSED: 'closed' + r,
      CLICK_DATA_API: 'click' + r + '.data-api'
    },
    l = function () {
      function t(e) {
        this._element = e
      }
      var r = t.prototype;
      return r.close = function (e) {
        var t = this._getRootElement(e = e || this._element);
        this._triggerCloseEvent(t).isDefaultPrevented() || this._removeElement(t)
      },
      r.dispose = function () {
        e.removeData(this._element, n),
        this._element = null
      },
      r._getRootElement = function (t) {
        var n = a.getSelectorFromElement(t),
        i = !1;
        return n && (i = e(n) [0]),
        i || (i = e(t).closest('.alert') [0]),
        i
      },
      r._triggerCloseEvent = function (t) {
        var n = e.Event(s.CLOSE);
        return e(t).trigger(n),
        n
      },
      r._removeElement = function (t) {
        var n = this;
        return e(t).removeClass('show'),
        a.supportsTransitionEnd() && e(t).hasClass('fade') ? void e(t).one(a.TRANSITION_END, function (e) {
          return n._destroyElement(t, e)
        }).emulateTransitionEnd(150)  : void this._destroyElement(t)
      },
      r._destroyElement = function (t) {
        e(t).detach().trigger(s.CLOSED).remove()
      },
      t._jQueryInterface = function (i) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new t(this), r.data(n, o)),
          'close' === i && o[i](this)
        })
      },
      t._handleDismiss = function (e) {
        return function (t) {
          t && t.preventDefault(),
          e.close(this)
        }
      },
      i(t, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        }
      ]),
      t
    }();
    e(document).on(s.CLICK_DATA_API, '[data-dismiss="alert"]', l._handleDismiss(new l)),
    e.fn[t] = l._jQueryInterface,
    e.fn[t].Constructor = l,
    e.fn[t].noConflict = function () {
      return e.fn[t] = o,
      l._jQueryInterface
    }
  }(e), function (e) {
    var t = 'button',
    n = 'bs.button',
    r = '.' + n,
    o = '.data-api',
    s = e.fn[t],
    a = {
      CLICK_DATA_API: 'click' + r + o,
      FOCUS_BLUR_DATA_API: 'focus' + r + o + ' blur' + r + o
    },
    l = function () {
      function t(e) {
        this._element = e
      }
      var r = t.prototype;
      return r.toggle = function () {
        var t = !0,
        n = !0,
        i = e(this._element).closest('[data-toggle="buttons"]') [0];
        if (i) {
          var r = e(this._element).find('input') [0];
          if (r) {
            if ('radio' === r.type) if (r.checked && e(this._element).hasClass('active')) t = !1;
             else {
              var o = e(i).find('.active') [0];
              o && e(o).removeClass('active')
            }
            if (t) {
              if (r.hasAttribute('disabled') || i.hasAttribute('disabled') || r.classList.contains('disabled') || i.classList.contains('disabled')) return;
              r.checked = !e(this._element).hasClass('active'),
              e(r).trigger('change')
            }
            r.focus(),
            n = !1
          }
        }
        n && this._element.setAttribute('aria-pressed', !e(this._element).hasClass('active')),
        t && e(this._element).toggleClass('active')
      },
      r.dispose = function () {
        e.removeData(this._element, n),
        this._element = null
      },
      t._jQueryInterface = function (i) {
        return this.each(function () {
          var r = e(this).data(n);
          r || (r = new t(this), e(this).data(n, r)),
          'toggle' === i && r[i]()
        })
      },
      i(t, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        }
      ]),
      t
    }();
    e(document).on(a.CLICK_DATA_API, '[data-toggle^="button"]', function (t) {
      t.preventDefault();
      var n = t.target;
      e(n).hasClass('btn') || (n = e(n).closest('.btn')),
      l._jQueryInterface.call(e(n), 'toggle')
    }).on(a.FOCUS_BLUR_DATA_API, '[data-toggle^="button"]', function (t) {
      var n = e(t.target).closest('.btn') [0];
      e(n).toggleClass('focus', /^focus(in)?$/.test(t.type))
    }),
    e.fn[t] = l._jQueryInterface,
    e.fn[t].Constructor = l,
    e.fn[t].noConflict = function () {
      return e.fn[t] = s,
      l._jQueryInterface
    }
  }(e), function (e) {
    var t = 'carousel',
    n = 'bs.carousel',
    o = '.' + n,
    s = '.data-api',
    l = e.fn[t],
    c = {
      interval: 5000,
      keyboard: !0,
      slide: !1,
      pause: 'hover',
      wrap: !0
    },
    u = {
      interval: '(number|boolean)',
      keyboard: 'boolean',
      slide: '(boolean|string)',
      pause: '(string|boolean)',
      wrap: 'boolean'
    },
    f = {
      SLIDE: 'slide' + o,
      SLID: 'slid' + o,
      KEYDOWN: 'keydown' + o,
      MOUSEENTER: 'mouseenter' + o,
      MOUSELEAVE: 'mouseleave' + o,
      TOUCHEND: 'touchend' + o,
      LOAD_DATA_API: 'load' + o + s,
      CLICK_DATA_API: 'click' + o + s
    },
    d = {
      ACTIVE: '.active',
      ACTIVE_ITEM: '.active.carousel-item',
      ITEM: '.carousel-item',
      NEXT_PREV: '.carousel-item-next, .carousel-item-prev',
      INDICATORS: '.carousel-indicators',
      DATA_SLIDE: '[data-slide], [data-slide-to]',
      DATA_RIDE: '[data-ride="carousel"]'
    },
    h = function () {
      function s(t, n) {
        this._items = null,
        this._interval = null,
        this._activeElement = null,
        this._isPaused = !1,
        this._isSliding = !1,
        this.touchTimeout = null,
        this._config = this._getConfig(n),
        this._element = e(t) [0],
        this._indicatorsElement = e(this._element).find(d.INDICATORS) [0],
        this._addEventListeners()
      }
      var l = s.prototype;
      return l.next = function () {
        this._isSliding || this._slide('next')
      },
      l.nextWhenVisible = function () {
        !document.hidden && e(this._element).is(':visible') && 'hidden' !== e(this._element).css('visibility') && this.next()
      },
      l.prev = function () {
        this._isSliding || this._slide('prev')
      },
      l.pause = function (t) {
        t || (this._isPaused = !0),
        e(this._element).find(d.NEXT_PREV) [0] && a.supportsTransitionEnd() && (a.triggerTransitionEnd(this._element), this.cycle(!0)),
        clearInterval(this._interval),
        this._interval = null
      },
      l.cycle = function (e) {
        e || (this._isPaused = !1),
        this._interval && (clearInterval(this._interval), this._interval = null),
        this._config.interval && !this._isPaused && (this._interval = setInterval((document.visibilityState ? this.nextWhenVisible : this.next).bind(this), this._config.interval))
      },
      l.to = function (t) {
        var n = this;
        this._activeElement = e(this._element).find(d.ACTIVE_ITEM) [0];
        var i = this._getItemIndex(this._activeElement);
        if (!(t > this._items.length - 1 || 0 > t)) {
          if (this._isSliding) return void e(this._element).one(f.SLID, function () {
            return n.to(t)
          });
          if (i === t) return this.pause(),
          void this.cycle();
          this._slide(t > i ? 'next' : 'prev', this._items[t])
        }
      },
      l.dispose = function () {
        e(this._element).off(o),
        e.removeData(this._element, n),
        this._items = null,
        this._config = null,
        this._element = null,
        this._interval = null,
        this._isPaused = null,
        this._isSliding = null,
        this._activeElement = null,
        this._indicatorsElement = null
      },
      l._getConfig = function (e) {
        return e = r({
        }, c, e),
        a.typeCheckConfig(t, e, u),
        e
      },
      l._addEventListeners = function () {
        var t = this;
        this._config.keyboard && e(this._element).on(f.KEYDOWN, function (e) {
          return t._keydown(e)
        }),
        'hover' === this._config.pause && (e(this._element).on(f.MOUSEENTER, function (e) {
          return t.pause(e)
        }).on(f.MOUSELEAVE, function (e) {
          return t.cycle(e)
        }), 'ontouchstart' in document.documentElement && e(this._element).on(f.TOUCHEND, function () {
          t.pause(),
          t.touchTimeout && clearTimeout(t.touchTimeout),
          t.touchTimeout = setTimeout(function (e) {
            return t.cycle(e)
          }, 500 + t._config.interval)
        }))
      },
      l._keydown = function (e) {
        if (!/input|textarea/i.test(e.target.tagName)) switch (e.which) {
          case 37:
            e.preventDefault(),
            this.prev();
            break;
          case 39:
            e.preventDefault(),
            this.next()
        }
      },
      l._getItemIndex = function (t) {
        return this._items = e.makeArray(e(t).parent().find(d.ITEM)),
        this._items.indexOf(t)
      },
      l._getItemByDirection = function (e, t) {
        var n = 'next' === e,
        i = 'prev' === e,
        r = this._getItemIndex(t);
        if ((i && 0 === r || n && r === this._items.length - 1) && !this._config.wrap) return t;
        var o = (r + ('prev' === e ? - 1 : 1)) % this._items.length;
        return - 1 == o ? this._items[this._items.length - 1] : this._items[o]
      },
      l._triggerSlideEvent = function (t, n) {
        var i = this._getItemIndex(t),
        r = this._getItemIndex(e(this._element).find(d.ACTIVE_ITEM) [0]),
        o = e.Event(f.SLIDE, {
          relatedTarget: t,
          direction: n,
          from: r,
          to: i
        });
        return e(this._element).trigger(o),
        o
      },
      l._setActiveIndicatorElement = function (t) {
        if (this._indicatorsElement) {
          e(this._indicatorsElement).find(d.ACTIVE).removeClass('active');
          var n = this._indicatorsElement.children[this._getItemIndex(t)];
          n && e(n).addClass('active')
        }
      },
      l._slide = function (t, n) {
        var i,
        r,
        o,
        s = this,
        l = e(this._element).find(d.ACTIVE_ITEM) [0],
        c = this._getItemIndex(l),
        u = n || l && this._getItemByDirection(t, l),
        h = this._getItemIndex(u),
        p = !!this._interval;
        if ('next' === t ? (i = 'carousel-item-left', r = 'carousel-item-next', o = 'left')  : (i = 'carousel-item-right', r = 'carousel-item-prev', o = 'right'), u && e(u).hasClass('active')) this._isSliding = !1;
         else if (!this._triggerSlideEvent(u, o).isDefaultPrevented() && l && u) {
          this._isSliding = !0,
          p && this.pause(),
          this._setActiveIndicatorElement(u);
          var m = e.Event(f.SLID, {
            relatedTarget: u,
            direction: o,
            from: c,
            to: h
          });
          a.supportsTransitionEnd() && e(this._element).hasClass('slide') ? (e(u).addClass(r), a.reflow(u), e(l).addClass(i), e(u).addClass(i), e(l).one(a.TRANSITION_END, function () {
            e(u).removeClass(i + ' ' + r).addClass('active'),
            e(l).removeClass('active ' + r + ' ' + i),
            s._isSliding = !1,
            setTimeout(function () {
              return e(s._element).trigger(m)
            }, 0)
          }).emulateTransitionEnd(600))  : (e(l).removeClass('active'), e(u).addClass('active'), this._isSliding = !1, e(this._element).trigger(m)),
          p && this.cycle()
        }
      },
      s._jQueryInterface = function (t) {
        return this.each(function () {
          var i = e(this).data(n),
          o = r({
          }, c, e(this).data());
          'object' == typeof t && (o = r({
          }, o, t));
          var a = 'string' == typeof t ? t : o.slide;
          if (i || (i = new s(this, o), e(this).data(n, i)), 'number' == typeof t) i.to(t);
           else if ('string' == typeof a) {
            if (void 0 === i[a]) throw new TypeError('No method named "' + a + '"');
            i[a]()
          } else o.interval && (i.pause(), i.cycle())
        })
      },
      s._dataApiClickHandler = function (t) {
        var i = a.getSelectorFromElement(this);
        if (i) {
          var o = e(i) [0];
          if (o && e(o).hasClass('carousel')) {
            var l = r({
            }, e(o).data(), e(this).data()),
            c = this.getAttribute('data-slide-to');
            c && (l.interval = !1),
            s._jQueryInterface.call(e(o), l),
            c && e(o).data(n).to(c),
            t.preventDefault()
          }
        }
      },
      i(s, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        },
        {
          key: 'Default',
          get: function () {
            return c
          }
        }
      ]),
      s
    }();
    e(document).on(f.CLICK_DATA_API, d.DATA_SLIDE, h._dataApiClickHandler),
    e(window).on(f.LOAD_DATA_API, function () {
      e(d.DATA_RIDE).each(function () {
        var t = e(this);
        h._jQueryInterface.call(t, t.data())
      })
    }),
    e.fn[t] = h._jQueryInterface,
    e.fn[t].Constructor = h,
    e.fn[t].noConflict = function () {
      return e.fn[t] = l,
      h._jQueryInterface
    }
  }(e),
  function (e) {
    var t = 'collapse',
    n = 'bs.collapse',
    o = '.' + n,
    s = e.fn[t],
    l = {
      toggle: !0,
      parent: ''
    },
    c = {
      toggle: 'boolean',
      parent: '(string|element)'
    },
    u = {
      SHOW: 'show' + o,
      SHOWN: 'shown' + o,
      HIDE: 'hide' + o,
      HIDDEN: 'hidden' + o,
      CLICK_DATA_API: 'click' + o + '.data-api'
    },
    f = {
      ACTIVES: '.show, .collapsing',
      DATA_TOGGLE: '[data-toggle="collapse"]'
    },
    d = function () {
      function o(t, n) {
        this._isTransitioning = !1,
        this._element = t,
        this._config = this._getConfig(n),
        this._triggerArray = e.makeArray(e('[data-toggle="collapse"][href="#' + t.id + '"],[data-toggle="collapse"][data-target="#' + t.id + '"]'));
        for (var i = e(f.DATA_TOGGLE), r = 0; r < i.length; r++) {
          var o = i[r],
          s = a.getSelectorFromElement(o);
          null !== s && 0 < e(s).filter(t).length && (this._selector = s, this._triggerArray.push(o))
        }
        this._parent = this._config.parent ? this._getParent()  : null,
        this._config.parent || this._addAriaAndCollapsedClass(this._element, this._triggerArray),
        this._config.toggle && this.toggle()
      }
      var s = o.prototype;
      return s.toggle = function () {
        e(this._element).hasClass('show') ? this.hide()  : this.show()
      },
      s.show = function () {
        var t,
        i,
        r = this;
        if (!(this._isTransitioning || e(this._element).hasClass('show') || (this._parent && 0 === (t = e.makeArray(e(this._parent).find(f.ACTIVES).filter('[data-parent="' + this._config.parent + '"]'))).length && (t = null), t && (i = e(t).not(this._selector).data(n), i && i._isTransitioning)))) {
          var s = e.Event(u.SHOW);
          if (e(this._element).trigger(s), !s.isDefaultPrevented()) {
            t && (o._jQueryInterface.call(e(t).not(this._selector), 'hide'), !i && e(t).data(n, null));
            var l = this._getDimension();
            e(this._element).removeClass('collapse').addClass('collapsing'),
            this._element.style[l] = 0,
            0 < this._triggerArray.length && e(this._triggerArray).removeClass('collapsed').attr('aria-expanded', !0),
            this.setTransitioning(!0);
            var c = function () {
              e(r._element).removeClass('collapsing').addClass('collapse').addClass('show'),
              r._element.style[l] = '',
              r.setTransitioning(!1),
              e(r._element).trigger(u.SHOWN)
            };
            if (!a.supportsTransitionEnd()) return void c();
            var d = l[0].toUpperCase() + l.slice(1);
            e(this._element).one(a.TRANSITION_END, c).emulateTransitionEnd(600),
            this._element.style[l] = this._element['scroll' + d] + 'px'
          }
        }
      },
      s.hide = function () {
        var t = this;
        if (!this._isTransitioning && e(this._element).hasClass('show')) {
          var n = e.Event(u.HIDE);
          if (e(this._element).trigger(n), !n.isDefaultPrevented()) {
            var i = this._getDimension();
            if (this._element.style[i] = this._element.getBoundingClientRect() [i] + 'px', a.reflow(this._element), e(this._element).addClass('collapsing').removeClass('collapse').removeClass('show'), 0 < this._triggerArray.length) for (var r = 0; r < this._triggerArray.length; r++) {
              var o = this._triggerArray[r],
              s = a.getSelectorFromElement(o);
              null !== s && (e(s).hasClass('show') || e(o).addClass('collapsed').attr('aria-expanded', !1))
            }
            this.setTransitioning(!0);
            var l = function () {
              t.setTransitioning(!1),
              e(t._element).removeClass('collapsing').addClass('collapse').trigger(u.HIDDEN)
            };
            return this._element.style[i] = '',
            a.supportsTransitionEnd() ? void e(this._element).one(a.TRANSITION_END, l).emulateTransitionEnd(600)  : void l()
          }
        }
      },
      s.setTransitioning = function (e) {
        this._isTransitioning = e
      },
      s.dispose = function () {
        e.removeData(this._element, n),
        this._config = null,
        this._parent = null,
        this._element = null,
        this._triggerArray = null,
        this._isTransitioning = null
      },
      s._getConfig = function (e) {
        return (e = r({
        }, l, e)).toggle = !!e.toggle,
        a.typeCheckConfig(t, e, c),
        e
      },
      s._getDimension = function () {
        return e(this._element).hasClass('width') ? 'width' : 'height'
      },
      s._getParent = function () {
        var t = this,
        n = null;
        a.isElement(this._config.parent) ? (n = this._config.parent, void 0 !== this._config.parent.jquery && (n = this._config.parent[0]))  : n = e(this._config.parent) [0];
        var i = '[data-toggle="collapse"][data-parent="' + this._config.parent + '"]';
        return e(n).find(i).each(function (e, n) {
          t._addAriaAndCollapsedClass(o._getTargetFromElement(n), [
            n
          ])
        }),
        n
      },
      s._addAriaAndCollapsedClass = function (t, n) {
        if (t) {
          var i = e(t).hasClass('show');
          0 < n.length && e(n).toggleClass('collapsed', !i).attr('aria-expanded', i)
        }
      },
      o._getTargetFromElement = function (t) {
        var n = a.getSelectorFromElement(t);
        return n ? e(n) [0] : null
      },
      o._jQueryInterface = function (t) {
        return this.each(function () {
          var i = e(this),
          s = i.data(n),
          a = r({
          }, l, i.data(), 'object' == typeof t && t);
          if (!s && a.toggle && /show|hide/.test(t) && (a.toggle = !1), s || (s = new o(this, a), i.data(n, s)), 'string' == typeof t) {
            if (void 0 === s[t]) throw new TypeError('No method named "' + t + '"');
            s[t]()
          }
        })
      },
      i(o, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        },
        {
          key: 'Default',
          get: function () {
            return l
          }
        }
      ]),
      o
    }();
    e(document).on(u.CLICK_DATA_API, f.DATA_TOGGLE, function (t) {
      'A' === t.currentTarget.tagName && t.preventDefault();
      var i = e(this),
      r = a.getSelectorFromElement(this);
      e(r).each(function () {
        var t = e(this),
        r = t.data(n) ? 'toggle' : i.data();
        d._jQueryInterface.call(t, r)
      })
    }),
    e.fn[t] = d._jQueryInterface,
    e.fn[t].Constructor = d,
    e.fn[t].noConflict = function () {
      return e.fn[t] = s,
      d._jQueryInterface
    }
  }(e),
  function (e) {
    var t = 'modal',
    n = 'bs.modal',
    o = '.' + n,
    s = e.fn[t],
    l = {
      backdrop: !0,
      keyboard: !0,
      focus: !0,
      show: !0
    },
    c = {
      backdrop: '(boolean|string)',
      keyboard: 'boolean',
      focus: 'boolean',
      show: 'boolean'
    },
    u = {
      HIDE: 'hide' + o,
      HIDDEN: 'hidden' + o,
      SHOW: 'show' + o,
      SHOWN: 'shown' + o,
      FOCUSIN: 'focusin' + o,
      RESIZE: 'resize' + o,
      CLICK_DISMISS: 'click.dismiss' + o,
      KEYDOWN_DISMISS: 'keydown.dismiss' + o,
      MOUSEUP_DISMISS: 'mouseup.dismiss' + o,
      MOUSEDOWN_DISMISS: 'mousedown.dismiss' + o,
      CLICK_DATA_API: 'click' + o + '.data-api'
    },
    f = {
      DIALOG: '.modal-dialog',
      DATA_TOGGLE: '[data-toggle="modal"]',
      DATA_DISMISS: '[data-dismiss="modal"]',
      FIXED_CONTENT: '.fixed-top, .fixed-bottom, .is-fixed, .sticky-top',
      STICKY_CONTENT: '.sticky-top',
      NAVBAR_TOGGLER: '.navbar-toggler'
    },
    d = function () {
      function s(t, n) {
        this._config = this._getConfig(n),
        this._element = t,
        this._dialog = e(t).find(f.DIALOG) [0],
        this._backdrop = null,
        this._isShown = !1,
        this._isBodyOverflowing = !1,
        this._ignoreBackdropClick = !1,
        this._originalBodyPadding = 0,
        this._scrollbarWidth = 0
      }
      var d = s.prototype;
      return d.toggle = function (e) {
        return this._isShown ? this.hide()  : this.show(e)
      },
      d.show = function (t) {
        var n = this;
        if (!this._isTransitioning && !this._isShown) {
          a.supportsTransitionEnd() && e(this._element).hasClass('fade') && (this._isTransitioning = !0);
          var i = e.Event(u.SHOW, {
            relatedTarget: t
          });
          e(this._element).trigger(i),
          this._isShown || i.isDefaultPrevented() || (this._isShown = !0, this._checkScrollbar(), this._setScrollbar(), this._adjustDialog(), e(document.body).addClass('modal-open'), this._setEscapeEvent(), this._setResizeEvent(), e(this._element).on(u.CLICK_DISMISS, f.DATA_DISMISS, function (e) {
            return n.hide(e)
          }), e(this._dialog).on(u.MOUSEDOWN_DISMISS, function () {
            e(n._element).one(u.MOUSEUP_DISMISS, function (t) {
              e(t.target).is(n._element) && (n._ignoreBackdropClick = !0)
            })
          }), this._showBackdrop(function () {
            return n._showElement(t)
          }))
        }
      },
      d.hide = function (t) {
        var n = this;
        if (t && t.preventDefault(), !this._isTransitioning && this._isShown) {
          var i = e.Event(u.HIDE);
          if (e(this._element).trigger(i), this._isShown && !i.isDefaultPrevented()) {
            this._isShown = !1;
            var r = a.supportsTransitionEnd() && e(this._element).hasClass('fade');
            r && (this._isTransitioning = !0),
            this._setEscapeEvent(),
            this._setResizeEvent(),
            e(document).off(u.FOCUSIN),
            e(this._element).removeClass('show'),
            e(this._element).off(u.CLICK_DISMISS),
            e(this._dialog).off(u.MOUSEDOWN_DISMISS),
            r ? e(this._element).one(a.TRANSITION_END, function (e) {
              return n._hideModal(e)
            }).emulateTransitionEnd(300)  : this._hideModal()
          }
        }
      },
      d.dispose = function () {
        e.removeData(this._element, n),
        e(window, document, this._element, this._backdrop).off(o),
        this._config = null,
        this._element = null,
        this._dialog = null,
        this._backdrop = null,
        this._isShown = null,
        this._isBodyOverflowing = null,
        this._ignoreBackdropClick = null,
        this._scrollbarWidth = null
      },
      d.handleUpdate = function () {
        this._adjustDialog()
      },
      d._getConfig = function (e) {
        return e = r({
        }, l, e),
        a.typeCheckConfig(t, e, c),
        e
      },
      d._showElement = function (t) {
        var n = this,
        i = a.supportsTransitionEnd() && e(this._element).hasClass('fade');
        this._element.parentNode && this._element.parentNode.nodeType === Node.ELEMENT_NODE || document.body.appendChild(this._element),
        this._element.style.display = 'block',
        this._element.removeAttribute('aria-hidden'),
        this._element.scrollTop = 0,
        i && a.reflow(this._element),
        e(this._element).addClass('show'),
        this._config.focus && this._enforceFocus();
        var r = e.Event(u.SHOWN, {
          relatedTarget: t
        }),
        o = function () {
          n._config.focus && n._element.focus(),
          n._isTransitioning = !1,
          e(n._element).trigger(r)
        };
        i ? e(this._dialog).one(a.TRANSITION_END, o).emulateTransitionEnd(300)  : o()
      },
      d._enforceFocus = function () {
        var t = this;
        e(document).off(u.FOCUSIN).on(u.FOCUSIN, function (n) {
          document !== n.target && t._element !== n.target && 0 === e(t._element).has(n.target).length && t._element.focus()
        })
      },
      d._setEscapeEvent = function () {
        var t = this;
        this._isShown && this._config.keyboard ? e(this._element).on(u.KEYDOWN_DISMISS, function (e) {
          27 === e.which && (e.preventDefault(), t.hide())
        })  : !this._isShown && e(this._element).off(u.KEYDOWN_DISMISS)
      },
      d._setResizeEvent = function () {
        var t = this;
        this._isShown ? e(window).on(u.RESIZE, function (e) {
          return t.handleUpdate(e)
        })  : e(window).off(u.RESIZE)
      },
      d._hideModal = function () {
        var t = this;
        this._element.style.display = 'none',
        this._element.setAttribute('aria-hidden', !0),
        this._isTransitioning = !1,
        this._showBackdrop(function () {
          e(document.body).removeClass('modal-open'),
          t._resetAdjustments(),
          t._resetScrollbar(),
          e(t._element).trigger(u.HIDDEN)
        })
      },
      d._removeBackdrop = function () {
        this._backdrop && (e(this._backdrop).remove(), this._backdrop = null)
      },
      d._showBackdrop = function (t) {
        var n = this,
        i = e(this._element).hasClass('fade') ? 'fade' : '';
        if (this._isShown && this._config.backdrop) {
          var r = a.supportsTransitionEnd() && i;
          if (this._backdrop = document.createElement('div'), this._backdrop.className = 'modal-backdrop', i && e(this._backdrop).addClass(i), e(this._backdrop).appendTo(document.body), e(this._element).on(u.CLICK_DISMISS, function (e) {
            return n._ignoreBackdropClick ? void (n._ignoreBackdropClick = !1)  : void (e.target !== e.currentTarget || ('static' === n._config.backdrop ? n._element.focus()  : n.hide()))
          }), r && a.reflow(this._backdrop), e(this._backdrop).addClass('show'), !t) return;
          if (!r) return void t();
          e(this._backdrop).one(a.TRANSITION_END, t).emulateTransitionEnd(150)
        } else if (!this._isShown && this._backdrop) {
          e(this._backdrop).removeClass('show');
          var o = function () {
            n._removeBackdrop(),
            t && t()
          };
          a.supportsTransitionEnd() && e(this._element).hasClass('fade') ? e(this._backdrop).one(a.TRANSITION_END, o).emulateTransitionEnd(150)  : o()
        } else t && t()
      },
      d._adjustDialog = function () {
        var e = this._element.scrollHeight > document.documentElement.clientHeight;
        !this._isBodyOverflowing && e && (this._element.style.paddingLeft = this._scrollbarWidth + 'px'),
        this._isBodyOverflowing && !e && (this._element.style.paddingRight = this._scrollbarWidth + 'px')
      },
      d._resetAdjustments = function () {
        this._element.style.paddingLeft = '',
        this._element.style.paddingRight = ''
      },
      d._checkScrollbar = function () {
        var e = document.body.getBoundingClientRect();
        this._isBodyOverflowing = e.left + e.right < window.innerWidth,
        this._scrollbarWidth = this._getScrollbarWidth()
      },
      d._setScrollbar = function () {
        var t = this;
        if (this._isBodyOverflowing) {
          e(f.FIXED_CONTENT).each(function (n, i) {
            var r = e(i) [0].style.paddingRight,
            o = e(i).css('padding-right');
            e(i).data('padding-right', r).css('padding-right', parseFloat(o) + t._scrollbarWidth + 'px')
          }),
          e(f.STICKY_CONTENT).each(function (n, i) {
            var r = e(i) [0].style.marginRight,
            o = e(i).css('margin-right');
            e(i).data('margin-right', r).css('margin-right', parseFloat(o) - t._scrollbarWidth + 'px')
          }),
          e(f.NAVBAR_TOGGLER).each(function (n, i) {
            var r = e(i) [0].style.marginRight,
            o = e(i).css('margin-right');
            e(i).data('margin-right', r).css('margin-right', parseFloat(o) + t._scrollbarWidth + 'px')
          });
          var n = document.body.style.paddingRight,
          i = e('body').css('padding-right');
          e('body').data('padding-right', n).css('padding-right', parseFloat(i) + this._scrollbarWidth + 'px')
        }
      },
      d._resetScrollbar = function () {
        e(f.FIXED_CONTENT).each(function (t, n) {
          var i = e(n).data('padding-right');
          void 0 !== i && e(n).css('padding-right', i).removeData('padding-right')
        }),
        e(f.STICKY_CONTENT + ', ' + f.NAVBAR_TOGGLER).each(function (t, n) {
          var i = e(n).data('margin-right');
          void 0 !== i && e(n).css('margin-right', i).removeData('margin-right')
        });
        var t = e('body').data('padding-right');
        void 0 !== t && e('body').css('padding-right', t).removeData('padding-right')
      },
      d._getScrollbarWidth = function () {
        var e = document.createElement('div');
        e.className = 'modal-scrollbar-measure',
        document.body.appendChild(e);
        var t = e.getBoundingClientRect().width - e.clientWidth;
        return document.body.removeChild(e),
        t
      },
      s._jQueryInterface = function (t, i) {
        return this.each(function () {
          var o = e(this).data(n),
          a = r({
          }, s.Default, e(this).data(), 'object' == typeof t && t);
          if (o || (o = new s(this, a), e(this).data(n, o)), 'string' == typeof t) {
            if (void 0 === o[t]) throw new TypeError('No method named "' + t + '"');
            o[t](i)
          } else a.show && o.show(i)
        })
      },
      i(s, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        },
        {
          key: 'Default',
          get: function () {
            return l
          }
        }
      ]),
      s
    }();
    e(document).on(u.CLICK_DATA_API, f.DATA_TOGGLE, function (t) {
      var i,
      o = this,
      s = a.getSelectorFromElement(this);
      s && (i = e(s) [0]);
      var l = e(i).data(n) ? 'toggle' : r({
      }, e(i).data(), e(this).data());
      ('A' === this.tagName || 'AREA' === this.tagName) && t.preventDefault();
      var c = e(i).one(u.SHOW, function (t) {
        t.isDefaultPrevented() || c.one(u.HIDDEN, function () {
          e(o).is(':visible') && o.focus()
        })
      });
      d._jQueryInterface.call(e(i), l, this)
    }),
    e.fn[t] = d._jQueryInterface,
    e.fn[t].Constructor = d,
    e.fn[t].noConflict = function () {
      return e.fn[t] = s,
      d._jQueryInterface
    }
  }(e),
  function (e) {
    var n = 'tooltip',
    o = 'bs.tooltip',
    s = '.' + o,
    l = e.fn[n],
    c = /(^|\s)bs-tooltip\S+/g,
    u = {
      animation: 'boolean',
      template: 'string',
      title: '(string|element|function)',
      trigger: 'string',
      delay: '(number|object)',
      html: 'boolean',
      selector: '(string|boolean)',
      placement: '(string|function)',
      offset: '(number|string)',
      container: '(string|element|boolean)',
      fallbackPlacement: '(string|array)',
      boundary: '(string|element)'
    },
    f = {
      AUTO: 'auto',
      TOP: 'top',
      RIGHT: 'right',
      BOTTOM: 'bottom',
      LEFT: 'left'
    },
    d = {
      animation: !0,
      template: '<div class="tooltip" role="tooltip"><div class="arrow"></div><div class="tooltip-inner"></div></div>',
      trigger: 'hover focus',
      title: '',
      delay: 0,
      html: !1,
      selector: !1,
      placement: 'top',
      offset: 0,
      container: !1,
      fallbackPlacement: 'flip',
      boundary: 'scrollParent'
    },
    h = {
      HIDE: 'hide' + s,
      HIDDEN: 'hidden' + s,
      SHOW: 'show' + s,
      SHOWN: 'shown' + s,
      INSERTED: 'inserted' + s,
      CLICK: 'click' + s,
      FOCUSIN: 'focusin' + s,
      FOCUSOUT: 'focusout' + s,
      MOUSEENTER: 'mouseenter' + s,
      MOUSELEAVE: 'mouseleave' + s
    },
    p = function () {
      function l(e, n) {
        if (void 0 === t) throw new TypeError('Bootstrap tooltips require Popper.js (https://popper.js.org)');
        this._isEnabled = !0,
        this._timeout = 0,
        this._hoverState = '',
        this._activeTrigger = {
        },
        this._popper = null,
        this.element = e,
        this.config = this._getConfig(n),
        this.tip = null,
        this._setListeners()
      }
      var p = l.prototype;
      return p.enable = function () {
        this._isEnabled = !0
      },
      p.disable = function () {
        this._isEnabled = !1
      },
      p.toggleEnabled = function () {
        this._isEnabled = !this._isEnabled
      },
      p.toggle = function (t) {
        if (this._isEnabled) if (t) {
          var n = this.constructor.DATA_KEY,
          i = e(t.currentTarget).data(n);
          i || (i = new this.constructor(t.currentTarget, this._getDelegateConfig()), e(t.currentTarget).data(n, i)),
          i._activeTrigger.click = !i._activeTrigger.click,
          i._isWithActiveTrigger() ? i._enter(null, i)  : i._leave(null, i)
        } else {
          if (e(this.getTipElement()).hasClass('show')) return void this._leave(null, this);
          this._enter(null, this)
        }
      },
      p.dispose = function () {
        clearTimeout(this._timeout),
        e.removeData(this.element, this.constructor.DATA_KEY),
        e(this.element).off(this.constructor.EVENT_KEY),
        e(this.element).closest('.modal').off('hide.bs.modal'),
        this.tip && e(this.tip).remove(),
        this._isEnabled = null,
        this._timeout = null,
        this._hoverState = null,
        this._activeTrigger = null,
        null !== this._popper && this._popper.destroy(),
        this._popper = null,
        this.element = null,
        this.config = null,
        this.tip = null
      },
      p.show = function () {
        var n = this;
        if ('none' === e(this.element).css('display')) throw new Error('Please use show on visible elements');
        var i = e.Event(this.constructor.Event.SHOW);
        if (this.isWithContent() && this._isEnabled) {
          e(this.element).trigger(i);
          var r = e.contains(this.element.ownerDocument.documentElement, this.element);
          if (i.isDefaultPrevented() || !r) return;
          var o = this.getTipElement(),
          s = a.getUID(this.constructor.NAME);
          o.setAttribute('id', s),
          this.element.setAttribute('aria-describedby', s),
          this.setContent(),
          this.config.animation && e(o).addClass('fade');
          var c = 'function' == typeof this.config.placement ? this.config.placement.call(this, o, this.element)  : this.config.placement,
          u = this._getAttachment(c);
          this.addAttachmentClass(u);
          var f = !1 === this.config.container ? document.body : e(this.config.container);
          e(o).data(this.constructor.DATA_KEY, this),
          e.contains(this.element.ownerDocument.documentElement, this.tip) || e(o).appendTo(f),
          e(this.element).trigger(this.constructor.Event.INSERTED),
          this._popper = new t(this.element, o, {
            placement: u,
            modifiers: {
              offset: {
                offset: this.config.offset
              },
              flip: {
                behavior: this.config.fallbackPlacement
              },
              arrow: {
                element: '.arrow'
              },
              preventOverflow: {
                boundariesElement: this.config.boundary
              }
            },
            onCreate: function (e) {
              e.originalPlacement !== e.placement && n._handlePopperPlacementChange(e)
            },
            onUpdate: function (e) {
              n._handlePopperPlacementChange(e)
            }
          }),
          e(o).addClass('show'),
          'ontouchstart' in document.documentElement && e('body').children().on('mouseover', null, e.noop);
          var d = function () {
            n.config.animation && n._fixTransition();
            var t = n._hoverState;
            n._hoverState = null,
            e(n.element).trigger(n.constructor.Event.SHOWN),
            'out' === t && n._leave(null, n)
          };
          a.supportsTransitionEnd() && e(this.tip).hasClass('fade') ? e(this.tip).one(a.TRANSITION_END, d).emulateTransitionEnd(l._TRANSITION_DURATION)  : d()
        }
      },
      p.hide = function (t) {
        var n = this,
        i = this.getTipElement(),
        r = e.Event(this.constructor.Event.HIDE),
        o = function () {
          'show' !== n._hoverState && i.parentNode && i.parentNode.removeChild(i),
          n._cleanTipClass(),
          n.element.removeAttribute('aria-describedby'),
          e(n.element).trigger(n.constructor.Event.HIDDEN),
          null !== n._popper && n._popper.destroy(),
          t && t()
        };
        e(this.element).trigger(r),
        r.isDefaultPrevented() || (e(i).removeClass('show'), 'ontouchstart' in document.documentElement && e('body').children().off('mouseover', null, e.noop), this._activeTrigger.click = !1, this._activeTrigger.focus = !1, this._activeTrigger.hover = !1, a.supportsTransitionEnd() && e(this.tip).hasClass('fade') ? e(i).one(a.TRANSITION_END, o).emulateTransitionEnd(150)  : o(), this._hoverState = '')
      },
      p.update = function () {
        null !== this._popper && this._popper.scheduleUpdate()
      },
      p.isWithContent = function () {
        return !!this.getTitle()
      },
      p.addAttachmentClass = function (t) {
        e(this.getTipElement()).addClass('bs-tooltip-' + t)
      },
      p.getTipElement = function () {
        return this.tip = this.tip || e(this.config.template) [0],
        this.tip
      },
      p.setContent = function () {
        var t = e(this.getTipElement());
        this.setElementContent(t.find('.tooltip-inner'), this.getTitle()),
        t.removeClass('fade show')
      },
      p.setElementContent = function (t, n) {
        var i = this.config.html;
        'object' == typeof n && (n.nodeType || n.jquery) ? i ? !e(n).parent().is(t) && t.empty().append(n)  : t.text(e(n).text())  : t[i ? 'html' : 'text'](n)
      },
      p.getTitle = function () {
        var e = this.element.getAttribute('data-original-title');
        return e || (e = 'function' == typeof this.config.title ? this.config.title.call(this.element)  : this.config.title),
        e
      },
      p._getAttachment = function (e) {
        return f[e.toUpperCase()]
      },
      p._setListeners = function () {
        var t = this;
        this.config.trigger.split(' ').forEach(function (n) {
          if ('click' === n) e(t.element).on(t.constructor.Event.CLICK, t.config.selector, function (e) {
            return t.toggle(e)
          });
           else if ('manual' !== n) {
            var i = 'hover' === n ? t.constructor.Event.MOUSEENTER : t.constructor.Event.FOCUSIN,
            r = 'hover' === n ? t.constructor.Event.MOUSELEAVE : t.constructor.Event.FOCUSOUT;
            e(t.element).on(i, t.config.selector, function (e) {
              return t._enter(e)
            }).on(r, t.config.selector, function (e) {
              return t._leave(e)
            })
          }
          e(t.element).closest('.modal').on('hide.bs.modal', function () {
            return t.hide()
          })
        }),
        this.config.selector ? this.config = r({
        }, this.config, {
          trigger: 'manual',
          selector: ''
        })  : this._fixTitle()
      },
      p._fixTitle = function () {
        var e = typeof this.element.getAttribute('data-original-title');
        (this.element.getAttribute('title') || 'string' != e) && (this.element.setAttribute('data-original-title', this.element.getAttribute('title') || ''), this.element.setAttribute('title', ''))
      },
      p._enter = function (t, n) {
        var i = this.constructor.DATA_KEY;
        return (n = n || e(t.currentTarget).data(i)) || (n = new this.constructor(t.currentTarget, this._getDelegateConfig()), e(t.currentTarget).data(i, n)),
        t && (n._activeTrigger['focusin' === t.type ? 'focus' : 'hover'] = !0),
        e(n.getTipElement()).hasClass('show') || 'show' === n._hoverState ? void (n._hoverState = 'show')  : (clearTimeout(n._timeout), n._hoverState = 'show', n.config.delay && n.config.delay.show ? void (n._timeout = setTimeout(function () {
          'show' === n._hoverState && n.show()
        }, n.config.delay.show))  : void n.show())
      },
      p._leave = function (t, n) {
        var i = this.constructor.DATA_KEY;
        if ((n = n || e(t.currentTarget).data(i)) || (n = new this.constructor(t.currentTarget, this._getDelegateConfig()), e(t.currentTarget).data(i, n)), t && (n._activeTrigger['focusout' === t.type ? 'focus' : 'hover'] = !1), !n._isWithActiveTrigger()) return clearTimeout(n._timeout),
        n._hoverState = 'out',
        n.config.delay && n.config.delay.hide ? void (n._timeout = setTimeout(function () {
          'out' === n._hoverState && n.hide()
        }, n.config.delay.hide))  : void n.hide()
      },
      p._isWithActiveTrigger = function () {
        for (var e in this._activeTrigger) if (this._activeTrigger[e]) return !0;
        return !1
      },
      p._getConfig = function (t) {
        return 'number' == typeof (t = r({
        }, this.constructor.Default, e(this.element).data(), t)).delay && (t.delay = {
          show: t.delay,
          hide: t.delay
        }),
        'number' == typeof t.title && (t.title = t.title.toString()),
        'number' == typeof t.content && (t.content = t.content.toString()),
        a.typeCheckConfig(n, t, this.constructor.DefaultType),
        t
      },
      p._getDelegateConfig = function () {
        var e = {
        };
        if (this.config) for (var t in this.config) this.constructor.Default[t] !== this.config[t] && (e[t] = this.config[t]);
        return e
      },
      p._cleanTipClass = function () {
        var t = e(this.getTipElement()),
        n = t.attr('class').match(c);
        null !== n && 0 < n.length && t.removeClass(n.join(''))
      },
      p._handlePopperPlacementChange = function (e) {
        this._cleanTipClass(),
        this.addAttachmentClass(this._getAttachment(e.placement))
      },
      p._fixTransition = function () {
        var t = this.getTipElement(),
        n = this.config.animation;
        null !== t.getAttribute('x-placement') || (e(t).removeClass('fade'), this.config.animation = !1, this.hide(), this.show(), this.config.animation = n)
      },
      l._jQueryInterface = function (t) {
        return this.each(function () {
          var n = e(this).data(o);
          if ((n || !/dispose|hide/.test(t)) && (n || (n = new l(this, 'object' == typeof t && t), e(this).data(o, n)), 'string' == typeof t)) {
            if (void 0 === n[t]) throw new TypeError('No method named "' + t + '"');
            n[t]()
          }
        })
      },
      i(l, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        },
        {
          key: 'Default',
          get: function () {
            return d
          }
        },
        {
          key: 'NAME',
          get: function () {
            return n
          }
        },
        {
          key: 'DATA_KEY',
          get: function () {
            return o
          }
        },
        {
          key: 'Event',
          get: function () {
            return h
          }
        },
        {
          key: 'EVENT_KEY',
          get: function () {
            return s
          }
        },
        {
          key: 'DefaultType',
          get: function () {
            return u
          }
        }
      ]),
      l
    }();
    return e.fn[n] = p._jQueryInterface,
    e.fn[n].Constructor = p,
    e.fn[n].noConflict = function () {
      return e.fn[n] = l,
      p._jQueryInterface
    },
    p
  }(e)), c = (function (e) {
    var t = 'popover',
    n = 'bs.popover',
    s = '.' + n,
    a = e.fn[t],
    c = /(^|\s)bs-popover\S+/g,
    u = r({
    }, l.Default, {
      placement: 'right',
      trigger: 'click',
      content: '',
      template: '<div class="popover" role="tooltip"><div class="arrow"></div><h3 class="popover-header"></h3><div class="popover-body"></div></div>'
    }),
    f = r({
    }, l.DefaultType, {
      content: '(string|element|function)'
    }),
    d = {
      HIDE: 'hide' + s,
      HIDDEN: 'hidden' + s,
      SHOW: 'show' + s,
      SHOWN: 'shown' + s,
      INSERTED: 'inserted' + s,
      CLICK: 'click' + s,
      FOCUSIN: 'focusin' + s,
      FOCUSOUT: 'focusout' + s,
      MOUSEENTER: 'mouseenter' + s,
      MOUSELEAVE: 'mouseleave' + s
    },
    h = function (r) {
      function a() {
        return r.apply(this, arguments) || this
      }
      o(a, r);
      var l = a.prototype;
      return l.isWithContent = function () {
        return this.getTitle() || this._getContent()
      },
      l.addAttachmentClass = function (t) {
        e(this.getTipElement()).addClass('bs-popover-' + t)
      },
      l.getTipElement = function () {
        return this.tip = this.tip || e(this.config.template) [0],
        this.tip
      },
      l.setContent = function () {
        var t = e(this.getTipElement());
        this.setElementContent(t.find('.popover-header'), this.getTitle());
        var n = this._getContent();
        'function' == typeof n && (n = n.call(this.element)),
        this.setElementContent(t.find('.popover-body'), n),
        t.removeClass('fade show')
      },
      l._getContent = function () {
        return this.element.getAttribute('data-content') || this.config.content
      },
      l._cleanTipClass = function () {
        var t = e(this.getTipElement()),
        n = t.attr('class').match(c);
        null !== n && 0 < n.length && t.removeClass(n.join(''))
      },
      a._jQueryInterface = function (t) {
        return this.each(function () {
          var i = e(this).data(n),
          r = 'object' == typeof t ? t : null;
          if ((i || !/destroy|hide/.test(t)) && (i || (i = new a(this, r), e(this).data(n, i)), 'string' == typeof t)) {
            if (void 0 === i[t]) throw new TypeError('No method named "' + t + '"');
            i[t]()
          }
        })
      },
      i(a, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        },
        {
          key: 'Default',
          get: function () {
            return u
          }
        },
        {
          key: 'NAME',
          get: function () {
            return t
          }
        },
        {
          key: 'DATA_KEY',
          get: function () {
            return n
          }
        },
        {
          key: 'Event',
          get: function () {
            return d
          }
        },
        {
          key: 'EVENT_KEY',
          get: function () {
            return s
          }
        },
        {
          key: 'DefaultType',
          get: function () {
            return f
          }
        }
      ]),
      a
    }(l);
    e.fn[t] = h._jQueryInterface,
    e.fn[t].Constructor = h,
    e.fn[t].noConflict = function () {
      return e.fn[t] = a,
      h._jQueryInterface
    }
  }(e), function (e) {
    var t = 'scrollspy',
    n = 'bs.scrollspy',
    o = '.' + n,
    l = e.fn[t],
    c = {
      offset: 10,
      method: 'auto',
      target: ''
    },
    u = {
      offset: 'number',
      method: 'string',
      target: '(string|element)'
    },
    f = {
      ACTIVATE: 'activate' + o,
      SCROLL: 'scroll' + o,
      LOAD_DATA_API: 'load' + o + '.data-api'
    },
    d = {
      DATA_SPY: '[data-spy="scroll"]',
      ACTIVE: '.active',
      NAV_LIST_GROUP: '.nav, .list-group',
      NAV_LINKS: '.nav-link',
      NAV_ITEMS: '.nav-item',
      LIST_ITEMS: '.list-group-item',
      DROPDOWN: '.dropdown',
      DROPDOWN_ITEMS: '.dropdown-item',
      DROPDOWN_TOGGLE: '.dropdown-toggle'
    },
    h = function () {
      function l(t, n) {
        var i = this;
        this._element = t,
        this._scrollElement = 'BODY' === t.tagName ? window : t,
        this._config = this._getConfig(n),
        this._selector = this._config.target + ' ' + d.NAV_LINKS + ',' + this._config.target + ' ' + d.LIST_ITEMS + ',' + this._config.target + ' ' + d.DROPDOWN_ITEMS,
        this._offsets = [
        ],
        this._targets = [
        ],
        this._activeTarget = null,
        this._scrollHeight = 0,
        e(this._scrollElement).on(f.SCROLL, function (e) {
          return i._process(e)
        }),
        this.refresh(),
        this._process()
      }
      var h = l.prototype;
      return h.refresh = function () {
        var t = this,
        n = 'auto' === this._config.method ? this._scrollElement === this._scrollElement.window ? 'offset' : 'position' : this._config.method,
        i = 'position' === n ? this._getScrollTop()  : 0;
        this._offsets = [
        ],
        this._targets = [
        ],
        this._scrollHeight = this._getScrollHeight(),
        e.makeArray(e(this._selector)).map(function (t) {
          var r,
          o = a.getSelectorFromElement(t);
          if (o && (r = e(o) [0]), r) {
            var s = r.getBoundingClientRect();
            if (s.width || s.height) return [e(r) [n]().top + i,
            o]
          }
          return null
        }).filter(function (e) {
          return e
        }).sort(function (e, t) {
          return e[0] - t[0]
        }).forEach(function (e) {
          t._offsets.push(e[0]),
          t._targets.push(e[1])
        })
      },
      h.dispose = function () {
        e.removeData(this._element, n),
        e(this._scrollElement).off(o),
        this._element = null,
        this._scrollElement = null,
        this._config = null,
        this._selector = null,
        this._offsets = null,
        this._targets = null,
        this._activeTarget = null,
        this._scrollHeight = null
      },
      h._getConfig = function (n) {
        if ('string' != typeof (n = r({
        }, c, n)).target) {
          var i = e(n.target).attr('id');
          i || (i = a.getUID(t), e(n.target).attr('id', i)),
          n.target = '#' + i
        }
        return a.typeCheckConfig(t, n, u),
        n
      },
      h._getScrollTop = function () {
        return this._scrollElement === window ? this._scrollElement.pageYOffset : this._scrollElement.scrollTop
      },
      h._getScrollHeight = function () {
        return this._scrollElement.scrollHeight || s(document.body.scrollHeight, document.documentElement.scrollHeight)
      },
      h._getOffsetHeight = function () {
        return this._scrollElement === window ? window.innerHeight : this._scrollElement.getBoundingClientRect().height
      },
      h._process = function () {
        var e = this._getScrollTop() + this._config.offset,
        t = this._getScrollHeight(),
        n = this._config.offset + t - this._getOffsetHeight();
        if (this._scrollHeight !== t && this.refresh(), e >= n) {
          var i = this._targets[this._targets.length - 1];
          this._activeTarget !== i && this._activate(i)
        } else {
          if (this._activeTarget && e < this._offsets[0] && 0 < this._offsets[0]) return this._activeTarget = null,
          void this._clear();
          for (var r = this._offsets.length; r--; ) this._activeTarget !== this._targets[r] && e >= this._offsets[r] && (void 0 === this._offsets[r + 1] || e < this._offsets[r + 1]) && this._activate(this._targets[r])
        }
      },
      h._activate = function (t) {
        this._activeTarget = t,
        this._clear();
        var n = this._selector.split(',');
        n = n.map(function (e) {
          return e + '[data-target="' + t + '"],' + e + '[href="' + t + '"]'
        });
        var i = e(n.join(','));
        i.hasClass('dropdown-item') ? (i.closest(d.DROPDOWN).find(d.DROPDOWN_TOGGLE).addClass('active'), i.addClass('active'))  : (i.addClass('active'), i.parents(d.NAV_LIST_GROUP).prev(d.NAV_LINKS + ', ' + d.LIST_ITEMS).addClass('active'), i.parents(d.NAV_LIST_GROUP).prev(d.NAV_ITEMS).children(d.NAV_LINKS).addClass('active')),
        e(this._scrollElement).trigger(f.ACTIVATE, {
          relatedTarget: t
        })
      },
      h._clear = function () {
        e(this._selector).filter(d.ACTIVE).removeClass('active')
      },
      l._jQueryInterface = function (t) {
        return this.each(function () {
          var i = e(this).data(n);
          if (i || (i = new l(this, 'object' == typeof t && t), e(this).data(n, i)), 'string' == typeof t) {
            if (void 0 === i[t]) throw new TypeError('No method named "' + t + '"');
            i[t]()
          }
        })
      },
      i(l, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        },
        {
          key: 'Default',
          get: function () {
            return c
          }
        }
      ]),
      l
    }();
    e(window).on(f.LOAD_DATA_API, function () {
      for (var t, n = e.makeArray(e(d.DATA_SPY)), i = n.length; i--; ) t = e(n[i]),
      h._jQueryInterface.call(t, t.data())
    }),
    e.fn[t] = h._jQueryInterface,
    e.fn[t].Constructor = h,
    e.fn[t].noConflict = function () {
      return e.fn[t] = l,
      h._jQueryInterface
    }
  }(e), function (e) {
    var t = 'tab',
    n = 'bs.tab',
    r = '.' + n,
    o = e.fn[t],
    s = {
      HIDE: 'hide' + r,
      HIDDEN: 'hidden' + r,
      SHOW: 'show' + r,
      SHOWN: 'shown' + r,
      CLICK_DATA_API: 'click' + r + '.data-api'
    },
    l = function () {
      function t(e) {
        this._element = e
      }
      var r = t.prototype;
      return r.show = function () {
        var t = this;
        if (!(this._element.parentNode && this._element.parentNode.nodeType === Node.ELEMENT_NODE && e(this._element).hasClass('active') || e(this._element).hasClass('disabled'))) {
          var n,
          i,
          r = e(this._element).closest('.nav, .list-group') [0],
          o = a.getSelectorFromElement(this._element);
          if (r) {
            var l = 'UL' === r.nodeName ? '> li > .active' : '.active';
            i = (i = e.makeArray(e(r).find(l))) [i.length - 1]
          }
          var c = e.Event(s.HIDE, {
            relatedTarget: this._element
          }),
          u = e.Event(s.SHOW, {
            relatedTarget: i
          });
          if (i && e(i).trigger(c), e(this._element).trigger(u), !u.isDefaultPrevented() && !c.isDefaultPrevented()) {
            o && (n = e(o) [0]),
            this._activate(this._element, r);
            var f = function () {
              var n = e.Event(s.HIDDEN, {
                relatedTarget: t._element
              }),
              r = e.Event(s.SHOWN, {
                relatedTarget: i
              });
              e(i).trigger(n),
              e(t._element).trigger(r)
            };
            n ? this._activate(n, n.parentNode, f)  : f()
          }
        }
      },
      r.dispose = function () {
        e.removeData(this._element, n),
        this._element = null
      },
      r._activate = function (t, n, i) {
        var r = this,
        o = ('UL' === n.nodeName ? e(n).find('> li > .active')  : e(n).children('.active')) [0],
        s = i && a.supportsTransitionEnd() && o && e(o).hasClass('fade'),
        l = function () {
          return r._transitionComplete(t, o, i)
        };
        o && s ? e(o).one(a.TRANSITION_END, l).emulateTransitionEnd(150)  : l()
      },
      r._transitionComplete = function (t, n, i) {
        if (n) {
          e(n).removeClass('show active');
          var r = e(n.parentNode).find('> .dropdown-menu .active') [0];
          r && e(r).removeClass('active'),
          'tab' === n.getAttribute('role') && n.setAttribute('aria-selected', !1)
        }
        if (e(t).addClass('active'), 'tab' === t.getAttribute('role') && t.setAttribute('aria-selected', !0), a.reflow(t), e(t).addClass('show'), t.parentNode && e(t.parentNode).hasClass('dropdown-menu')) {
          var o = e(t).closest('.dropdown') [0];
          o && e(o).find('.dropdown-toggle').addClass('active'),
          t.setAttribute('aria-expanded', !0)
        }
        i && i()
      },
      t._jQueryInterface = function (i) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          if (o || (o = new t(this), r.data(n, o)), 'string' == typeof i) {
            if (void 0 === o[i]) throw new TypeError('No method named "' + i + '"');
            o[i]()
          }
        })
      },
      i(t, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.0.0'
          }
        }
      ]),
      t
    }();
    e(document).on(s.CLICK_DATA_API, '[data-toggle="tab"], [data-toggle="pill"], [data-toggle="list"]', function (t) {
      t.preventDefault(),
      l._jQueryInterface.call(e(this), 'show')
    }),
    e.fn[t] = l._jQueryInterface,
    e.fn[t].Constructor = l,
    e.fn[t].noConflict = function () {
      return e.fn[t] = o,
      l._jQueryInterface
    }
  }(e), function () {
    var e = !1,
    t = '',
    n = {
      WebkitTransition: 'webkitTransitionEnd',
      MozTransition: 'transitionend',
      OTransition: 'oTransitionEnd otransitionend',
      transition: 'transitionend'
    };
    return function () {
      for (var i in e = function () {
        if (window.QUnit) return !1;
        var e = document.createElement('bmd');
        for (var t in n) if (void 0 !== e.style[t]) return n[t];
        return !1
      }(), n) t += ' ' + n[i]
    }(),
    {
      transitionEndSupported: function () {
        return e
      },
      transitionEndSelector: function () {
        return t
      },
      isChar: function (e) {
        return !(void 0 !== e.which) || 'number' == typeof e.which && 0 < e.which && !e.ctrlKey && !e.metaKey && !e.altKey && 8 !== e.which && 9 !== e.which && 13 !== e.which && 16 !== e.which && 17 !== e.which && 20 !== e.which && 27 !== e.which
      },
      assert: function (e, t, n) {
        if (t) throw void 0 === !e && e.css('border', '1px solid red'),
        console.error(n, e),
        n
      },
      describe: function (e) {
        return void 0 === e ? 'undefined' : 0 === e.length ? '(no matching elements)' : e[0].outerHTML.split('>') [0] + '>'
      }
    }
  }(jQuery)), u = function (e) {
    var t = {
    };
    return function () {
      function n(n, i, r) {
        for (var o in void 0 === r && (r = {
        }), this.$element = n, this.config = e.extend(!0, {
        }, t, i), r) this[o] = r[o]
      }
      var i = n.prototype;
      return i.dispose = function (e) {
        this.$element.data(e, null),
        this.$element = null,
        this.config = null
      },
      i.addFormGroupFocus = function () {
        this.$element.prop('disabled') || this.$bmdFormGroup.addClass('is-focused')
      },
      i.removeFormGroupFocus = function () {
        this.$bmdFormGroup.removeClass('is-focused')
      },
      i.removeIsFilled = function () {
        this.$bmdFormGroup.removeClass('is-filled')
      },
      i.addIsFilled = function () {
        this.$bmdFormGroup.addClass('is-filled')
      },
      i.findMdbFormGroup = function (t) {
        void 0 === t && (t = !0);
        var n = this.$element.closest('.bmd-form-group');
        return 0 === n.length && t && e.error('Failed to find .bmd-form-group for ' + c.describe(this.$element)),
        n
      },
      n
    }()
  }(jQuery), f = function (e) {
    var t = '.form-group',
    n = 'label[class^=\'bmd-label\'], label[class*=\' bmd-label\']',
    i = {
      validate: !1,
      formGroup: {
        required: !1
      },
      bmdFormGroup: {
        template: '<span class=\'bmd-form-group\'></span>',
        create: !0,
        required: !0
      },
      label: {
        required: !1,
        selectors: [
          '.form-control-label',
          '> label'
        ],
        className: 'bmd-label-static'
      },
      requiredClasses: [
      ],
      invalidComponentMatches: [
      ],
      convertInputSizeVariations: !0
    },
    r = {
      'form-control-lg': 'bmd-form-group-lg',
      'form-control-sm': 'bmd-form-group-sm'
    };
    return function (s) {
      function a(t, n, r) {
        var o;
        return void 0 === r && (r = {
        }),
        (o = s.call(this, t, e.extend(!0, {
        }, i, n), r) || this)._rejectInvalidComponentMatches(),
        o.rejectWithoutRequiredStructure(),
        o._rejectWithoutRequiredClasses(),
        o.$formGroup = o.findFormGroup(o.config.formGroup.required),
        o.$bmdFormGroup = o.resolveMdbFormGroup(),
        o.$bmdLabel = o.resolveMdbLabel(),
        o.resolveMdbFormGroupSizing(),
        o.addFocusListener(),
        o.addChangeListener(),
        '' != o.$element.val() && o.addIsFilled(),
        o
      }
      o(a, s);
      var l = a.prototype;
      return l.dispose = function (e) {
        s.prototype.dispose.call(this, e),
        this.$bmdFormGroup = null,
        this.$formGroup = null
      },
      l.rejectWithoutRequiredStructure = function () {
      },
      l.addFocusListener = function () {
        var e = this;
        this.$element.on('focus', function () {
          e.addFormGroupFocus()
        }).on('blur', function () {
          e.removeFormGroupFocus()
        })
      },
      l.addChangeListener = function () {
        var e = this;
        this.$element.on('keydown paste', function (t) {
          c.isChar(t) && e.addIsFilled()
        }).on('keyup change', function () {
          e.isEmpty() ? e.removeIsFilled()  : e.addIsFilled(),
          e.config.validate && (void 0 === e.$element[0].checkValidity || e.$element[0].checkValidity() ? e.removeHasDanger()  : e.addHasDanger())
        })
      },
      l.addHasDanger = function () {
        this.$bmdFormGroup.addClass('has-danger')
      },
      l.removeHasDanger = function () {
        this.$bmdFormGroup.removeClass('has-danger')
      },
      l.isEmpty = function () {
        return null === this.$element.val() || void 0 === this.$element.val() || '' === this.$element.val()
      },
      l.resolveMdbFormGroup = function () {
        var e = this.findMdbFormGroup(!1);
        return (void 0 === e || 0 === e.length) && (!this.config.bmdFormGroup.create || void 0 !== this.$formGroup && 0 !== this.$formGroup.length ? this.$formGroup.addClass('bmd-form-group')  : this.outerElement().parent().hasClass('input-group') ? this.outerElement().parent().wrap(this.config.bmdFormGroup.template)  : this.outerElement().wrap(this.config.bmdFormGroup.template), e = this.findMdbFormGroup(this.config.bmdFormGroup.required)),
        e
      },
      l.outerElement = function () {
        return this.$element
      },
      l.resolveMdbLabel = function () {
        var e = this.$bmdFormGroup.find(n);
        return (void 0 === e || 0 === e.length) && (void 0 === (e = this.findMdbLabel(this.config.label.required)) || 0 === e.length || e.addClass(this.config.label.className)),
        e
      },
      l.findMdbLabel = function (t) {
        void 0 === t && (t = !0);
        var i = null,
        r = this.config.label.selectors,
        o = Array.isArray(r),
        s = 0;
        for (r = o ? r : r[Symbol.iterator](); ; ) {
          var a;
          if (o) {
            if (s >= r.length) break;
            a = r[s++]
          } else {
            if ((s = r.next()).done) break;
            a = s.value
          }
          var l = a;
          if (void 0 !== (i = e.isFunction(l) ? l(this)  : this.$bmdFormGroup.find(l)) && 0 < i.length) break
        }
        return 0 === i.length && t && e.error('Failed to find ' + n + ' within form-group for ' + c.describe(this.$element)),
        i
      },
      l.findFormGroup = function (n) {
        void 0 === n && (n = !0);
        var i = this.$element.closest(t);
        return 0 === i.length && n && e.error('Failed to find ' + t + ' for ' + c.describe(this.$element)),
        i
      },
      l.resolveMdbFormGroupSizing = function () {
        if (this.config.convertInputSizeVariations) for (var e in r) this.$element.hasClass(e) && this.$bmdFormGroup.addClass(r[e])
      },
      l._rejectInvalidComponentMatches = function () {
        var e = this.config.invalidComponentMatches,
        t = Array.isArray(e),
        n = 0;
        for (e = t ? e : e[Symbol.iterator](); ; ) {
          var i;
          if (t) {
            if (n >= e.length) break;
            i = e[n++]
          } else {
            if ((n = e.next()).done) break;
            i = n.value
          }
          i.rejectMatch(this.constructor.name, this.$element)
        }
      },
      l._rejectWithoutRequiredClasses = function () {
        var e = this.config.requiredClasses,
        t = Array.isArray(e),
        n = 0;
        for (e = t ? e : e[Symbol.iterator](); ; ) {
          var i;
          if (t) {
            if (n >= e.length) break;
            i = e[n++]
          } else {
            if ((n = e.next()).done) break;
            i = n.value
          }
          var r = i;
          if ( - 1 !== r.indexOf('||')) {
            var o = r.split('||'),
            s = Array.isArray(o),
            a = 0;
            for (o = s ? o : o[Symbol.iterator](); ; ) {
              var l;
              if (s) {
                if (a >= o.length) break;
                l = o[a++]
              } else {
                if ((a = o.next()).done) break;
                l = a.value
              }
              if (this.$element.hasClass(l)) break
            }
          } else this.$element.hasClass(r)
        }
      },
      a
    }(u)
  }(jQuery), d = function (e) {
    var t = {
      label: {
        required: !1
      }
    };
    return function (n) {
      function i(i, r, o) {
        var s;
        return (s = n.call(this, i, e.extend(!0, {
        }, t, r), o) || this).decorateMarkup(),
        s
      }
      o(i, n);
      var r = i.prototype;
      return r.decorateMarkup = function () {
        var t = e(this.config.template);
        this.$element.after(t),
        !1 !== this.config.ripples && t.bmdRipples()
      },
      r.outerElement = function () {
        return this.$element.parent().closest('.' + this.outerClass)
      },
      r.rejectWithoutRequiredStructure = function () {
        c.assert(this.$element, 'label' === !this.$element.parent().prop('tagName'), this.constructor.name + '\'s ' + c.describe(this.$element) + ' parent element should be <label>.'),
        c.assert(this.$element, !this.outerElement().hasClass(this.outerClass), this.constructor.name + '\'s ' + c.describe(this.$element) + ' outer element should have class ' + this.outerClass + '.')
      },
      r.addFocusListener = function () {
        var e = this;
        this.$element.closest('label').hover(function () {
          e.addFormGroupFocus()
        }, function () {
          e.removeFormGroupFocus()
        })
      },
      r.addChangeListener = function () {
        var e = this;
        this.$element.change(function () {
          e.$element.blur()
        })
      },
      i
    }(f)
  }(jQuery), h = function (e) {
    var t = 'checkbox',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
      template: '<span class=\'checkbox-decorator\'><span class=\'check\'></span></span>'
    },
    a = function (i) {
      function r(n, r, o) {
        return void 0 === o && (o = {
          inputType: t,
          outerClass: t
        }),
        i.call(this, n, e.extend(!0, s, r), o) || this
      }
      return o(r, i),
      r.prototype.dispose = function (e) {
        void 0 === e && (e = n),
        i.prototype.dispose.call(this, e)
      },
      r.matches = function (e) {
        return 'checkbox' === e.attr('type')
      },
      r.rejectMatch = function (e, t) {
        c.assert(this.$element, this.matches(t), e + ' component element ' + c.describe(t) + ' is invalid for type=\'checkbox\'.')
      },
      r._jQueryInterface = function (t) {
        return this.each(function () {
          var i = e(this),
          o = i.data(n);
          o || (o = new r(i, t), i.data(n, o))
        })
      },
      r
    }(d);
    return e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    },
    a
  }(jQuery), p = (function (e) {
    var t = 'checkboxInline',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
      bmdFormGroup: {
        create: !1,
        required: !1
      }
    },
    a = function (t) {
      function i(n, i, r) {
        return void 0 === r && (r = {
          inputType: 'checkbox',
          outerClass: 'checkbox-inline'
        }),
        t.call(this, n, e.extend(!0, {
        }, s, i), r) || this
      }
      return o(i, t),
      i.prototype.dispose = function () {
        t.prototype.dispose.call(this, n)
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(h);
    e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = 'collapseInline',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
      ANY_INPUT: 'input, select, textarea'
    },
    a = {
      IN: 'in',
      COLLAPSE: 'collapse',
      COLLAPSING: 'collapsing',
      COLLAPSED: 'collapsed',
      WIDTH: 'width'
    },
    l = {
    },
    f = function (t) {
      function i(n, i) {
        var r;
        (r = t.call(this, n, e.extend(!0, {
        }, l, i)) || this).$bmdFormGroup = r.findMdbFormGroup(!0);
        var o = n.data('target');
        r.$collapse = e(o),
        c.assert(n, 0 === r.$collapse.length, 'Cannot find collapse target for ' + c.describe(n)),
        c.assert(r.$collapse, !r.$collapse.hasClass(a.COLLAPSE), c.describe(r.$collapse) + ' is expected to have the \'' + a.COLLAPSE + '\' class.  It is being targeted by ' + c.describe(n));
        var u = r.$bmdFormGroup.find(s.ANY_INPUT);
        return 0 < u.length && (r.$input = u.first()),
        r.$collapse.hasClass(a.WIDTH) || r.$collapse.addClass(a.WIDTH),
        r.$input && (r.$collapse.on('shown.bs.collapse', function () {
          r.$input.focus()
        }), r.$input.blur(function () {
          r.$collapse.collapse('hide')
        })),
        r
      }
      return o(i, t),
      i.prototype.dispose = function () {
        t.prototype.dispose.call(this, n),
        this.$bmdFormGroup = null,
        this.$collapse = null,
        this.$input = null
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(u);
    e.fn[i] = f._jQueryInterface,
    e.fn[i].Constructor = f,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      f._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = 'file',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
    },
    a = {
      FILE: t,
      IS_FILE: 'is-file'
    },
    l = function (t) {
      function i(n, i) {
        var r;
        return (r = t.call(this, n, e.extend(!0, s, i)) || this).$bmdFormGroup.addClass(a.IS_FILE),
        r
      }
      o(i, t);
      var r = i.prototype;
      return r.dispose = function () {
        t.prototype.dispose.call(this, n)
      },
      i.matches = function (e) {
        return 'file' === e.attr('type')
      },
      i.rejectMatch = function (e, t) {
        c.assert(this.$element, this.matches(t), e + ' component element ' + c.describe(t) + ' is invalid for type=\'file\'.')
      },
      r.outerElement = function () {
        return this.$element.parent().closest('.' + a.FILE)
      },
      r.rejectWithoutRequiredStructure = function () {
        c.assert(this.$element, 'label' === !this.outerElement().prop('tagName'), this.constructor.name + '\'s ' + c.describe(this.$element) + ' parent element ' + c.describe(this.outerElement()) + ' should be <label>.'),
        c.assert(this.$element, !this.outerElement().hasClass(a.FILE), this.constructor.name + '\'s ' + c.describe(this.$element) + ' parent element ' + c.describe(this.outerElement()) + ' should have class .' + a.FILE + '.')
      },
      r.addFocusListener = function () {
        var e = this;
        this.$bmdFormGroup.on('focus', function () {
          e.addFormGroupFocus()
        }).on('blur', function () {
          e.removeFormGroupFocus()
        })
      },
      r.addChangeListener = function () {
        var t = this;
        this.$element.on('change', function () {
          var n = '';
          e.each(t.$element.files, function (e, t) {
            n += t.name + '  , '
          }),
          (n = n.substring(0, n.length - 2)) ? t.addIsFilled()  : t.removeIsFilled(),
          t.$bmdFormGroup.find('input.form-control[readonly]').val(n)
        })
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(f);
    e.fn[i] = l._jQueryInterface,
    e.fn[i].Constructor = l,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      l._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = 'radio',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
      template: '<span class=\'bmd-radio\'></span>'
    },
    a = function (i) {
      function r(n, r, o) {
        return void 0 === o && (o = {
          inputType: t,
          outerClass: t
        }),
        i.call(this, n, e.extend(!0, s, r), o) || this
      }
      return o(r, i),
      r.prototype.dispose = function (e) {
        void 0 === e && (e = n),
        i.prototype.dispose.call(this, e)
      },
      r.matches = function (e) {
        return 'radio' === e.attr('type')
      },
      r.rejectMatch = function (e, t) {
        c.assert(this.$element, this.matches(t), e + ' component element ' + c.describe(t) + ' is invalid for type=\'radio\'.')
      },
      r._jQueryInterface = function (t) {
        return this.each(function () {
          var i = e(this),
          o = i.data(n);
          o || (o = new r(i, t), i.data(n, o))
        })
      },
      r
    }(d);
    return e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    },
    a
  }(jQuery)), m = (function (e) {
    var t = 'radioInline',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
      bmdFormGroup: {
        create: !1,
        required: !1
      }
    },
    a = function (t) {
      function i(n, i, r) {
        return void 0 === r && (r = {
          inputType: 'radio',
          outerClass: 'radio-inline'
        }),
        t.call(this, n, e.extend(!0, {
        }, s, i), r) || this
      }
      return o(i, t),
      i.prototype.dispose = function () {
        t.prototype.dispose.call(this, n)
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(p);
    e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = {
      requiredClasses: [
        'form-control'
      ]
    };
    return function (n) {
      function i(i, r) {
        var o;
        return (o = n.call(this, i, e.extend(!0, t, r)) || this).isEmpty() && o.removeIsFilled(),
        o
      }
      return o(i, n),
      i
    }(f)
  }(jQuery)), g = (function (e) {
    var t = 'select',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
      requiredClasses: [
        'form-control||custom-select'
      ]
    },
    a = function (t) {
      function i(n, i) {
        var r;
        return (r = t.call(this, n, e.extend(!0, s, i)) || this).addIsFilled(),
        r
      }
      return o(i, t),
      i.prototype.dispose = function () {
        t.prototype.dispose.call(this, n)
      },
      i.matches = function (e) {
        return 'select' === e.prop('tagName')
      },
      i.rejectMatch = function (e, t) {
        c.assert(this.$element, this.matches(t), e + ' component element ' + c.describe(t) + ' is invalid for <select>.')
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(m);
    e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = 'switch',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
      template: '<span class=\'bmd-switch-track\'></span>'
    },
    a = function (t) {
      function i(n, i, r) {
        return void 0 === r && (r = {
          inputType: 'checkbox',
          outerClass: 'switch'
        }),
        t.call(this, n, e.extend(!0, {
        }, s, i), r) || this
      }
      return o(i, t),
      i.prototype.dispose = function () {
        t.prototype.dispose.call(this, n)
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(h);
    e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = 'text',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
    },
    a = function (t) {
      function i(n, i) {
        return t.call(this, n, e.extend(!0, s, i)) || this
      }
      return o(i, t),
      i.prototype.dispose = function (e) {
        void 0 === e && (e = n),
        t.prototype.dispose.call(this, e)
      },
      i.matches = function (e) {
        return 'text' === e.attr('type')
      },
      i.rejectMatch = function (e, t) {
        c.assert(this.$element, this.matches(t), e + ' component element ' + c.describe(t) + ' is invalid for type=\'text\'.')
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(m);
    e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = 'textarea',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
    },
    a = function (t) {
      function i(n, i) {
        return t.call(this, n, e.extend(!0, s, i)) || this
      }
      return o(i, t),
      i.prototype.dispose = function () {
        t.prototype.dispose.call(this, n)
      },
      i.matches = function (e) {
        return 'textarea' === e.prop('tagName')
      },
      i.rejectMatch = function (e, t) {
        c.assert(this.$element, this.matches(t), e + ' component element ' + c.describe(t) + ' is invalid for <textarea>.')
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(m);
    e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    }
  }(jQuery), function (e) {
    if ('undefined' == typeof Popper) throw new Error('Bootstrap dropdown require Popper.js (https://popper.js.org)');
    var t = 'dropdown',
    n = 'bs.dropdown',
    r = '.' + n,
    o = '.data-api',
    s = e.fn[t],
    l = /38|40|27/,
    c = {
      HIDE: 'hide' + r,
      HIDDEN: 'hidden' + r,
      SHOW: 'show' + r,
      SHOWN: 'shown' + r,
      CLICK: 'click' + r,
      CLICK_DATA_API: 'click' + r + o,
      KEYDOWN_DATA_API: 'keydown' + r + o,
      KEYUP_DATA_API: 'keyup' + r + o,
      TRANSITION_END: 'transitionend webkitTransitionEnd oTransitionEnd animationend webkitAnimationEnd oAnimationEnd'
    },
    u = '[data-toggle="dropdown"]',
    f = {
      TOP: 'top-start',
      TOPEND: 'top-end',
      BOTTOM: 'bottom-start',
      BOTTOMEND: 'bottom-end'
    },
    d = {
      placement: f.BOTTOM,
      offset: 0,
      flip: !0
    },
    h = {
      placement: 'string',
      offset: '(number|string)',
      flip: 'boolean'
    },
    p = function () {
      function o(e, t) {
        this._element = e,
        this._popper = null,
        this._config = this._getConfig(t),
        this._menu = this._getMenuElement(),
        this._inNavbar = this._detectNavbar(),
        this._addEventListeners()
      }
      var s = o.prototype;
      return s.toggle = function () {
        var t = this;
        if (!this._element.disabled && !e(this._element).hasClass('disabled')) {
          var n = o._getParentFromElement(this._element),
          i = e(this._menu).hasClass('show');
          if (o._clearMenus(), !i) {
            var r = {
              relatedTarget: this._element
            },
            s = e.Event(c.SHOW, r);
            if (e(n).trigger(s), !s.isDefaultPrevented()) {
              var a = this._element;
              e(n).hasClass('dropup') && (e(this._menu).hasClass('dropdown-menu-left') || e(this._menu).hasClass('dropdown-menu-right')) && (a = n),
              this._popper = new Popper(a, this._menu, this._getPopperConfig()),
              'ontouchstart' in document.documentElement && !e(n).closest('.navbar-nav').length && e('body').children().on('mouseover', null, e.noop),
              this._element.focus(),
              this._element.setAttribute('aria-expanded', !0),
              e(this._menu).one(c.TRANSITION_END, function () {
                e(n).trigger(e.Event(c.SHOWN, r)),
                e(t._menu).removeClass('showing')
              }),
              e(this._menu).addClass('show showing'),
              e(n).addClass('show')
            }
          }
        }
      },
      s.dispose = function () {
        e.removeData(this._element, n),
        e(this._element).off(r),
        this._element = null,
        this._menu = null,
        null !== this._popper && this._popper.destroy(),
        this._popper = null
      },
      s.update = function () {
        this._inNavbar = this._detectNavbar(),
        null !== this._popper && this._popper.scheduleUpdate()
      },
      s._addEventListeners = function () {
        var t = this;
        e(this._element).on(c.CLICK, function (e) {
          e.preventDefault(),
          e.stopPropagation(),
          t.toggle()
        })
      },
      s._getConfig = function (n) {
        var i = e(this._element).data();
        return void 0 !== i.placement && (i.placement = f[i.placement.toUpperCase()]),
        n = e.extend({
        }, this.constructor.Default, e(this._element).data(), n),
        a.typeCheckConfig(t, n, this.constructor.DefaultType),
        n
      },
      s._getMenuElement = function () {
        if (!this._menu) {
          var t = o._getParentFromElement(this._element);
          this._menu = e(t).find('.dropdown-menu') [0]
        }
        return this._menu
      },
      s._getPlacement = function () {
        var t = e(this._element).parent(),
        n = this._config.placement;
        return t.hasClass('dropup') || this._config.placement === f.TOP ? (n = f.TOP, e(this._menu).hasClass('dropdown-menu-right') && (n = f.TOPEND))  : e(this._menu).hasClass('dropdown-menu-right') && (n = f.BOTTOMEND),
        n
      },
      s._detectNavbar = function () {
        return 0 < e(this._element).closest('.navbar').length
      },
      s._getPopperConfig = function () {
        var e = {
          placement: this._getPlacement(),
          modifiers: {
            offset: {
              offset: this._config.offset
            },
            flip: {
              enabled: this._config.flip
            }
          }
        };
        return this._inNavbar && (e.modifiers.applyStyle = {
          enabled: !this._inNavbar
        }),
        e
      },
      o._jQueryInterface = function (t) {
        return this.each(function () {
          var i = e(this).data(n);
          if (i || (i = new o(this, 'object' == typeof t ? t : null), e(this).data(n, i)), 'string' == typeof t) {
            if (void 0 === i[t]) throw new Error('No method named "' + t + '"');
            i[t]()
          }
        })
      },
      o._clearMenus = function (t) {
        if (!t || 3 !== t.which && ('keyup' !== t.type || 9 === t.which)) for (var i = e.makeArray(e(u)), r = function (r) {
          var s = o._getParentFromElement(i[r]),
          a = e(i[r]).data(n),
          l = {
            relatedTarget: i[r]
          };
          if (!a) return 'continue';
          var u = a._menu;
          if (!e(s).hasClass('show')) return 'continue';
          if (t && ('click' === t.type && /input|textarea/i.test(t.target.tagName) || 'keyup' === t.type && 9 === t.which) && e.contains(s, t.target)) return 'continue';
          var f = e.Event(c.HIDE, l);
          return e(s).trigger(f),
          f.isDefaultPrevented() ? 'continue' : ('ontouchstart' in document.documentElement && e('body').children().off('mouseover', null, e.noop), i[r].setAttribute('aria-expanded', 'false'), e(u).addClass('hiding').removeClass('show'), e(s).removeClass('show'), void e(u).one(c.TRANSITION_END, function () {
            e(s).trigger(e.Event(c.HIDDEN, l)),
            e(u).removeClass('hiding')
          }))
        }, s = 0; s < i.length; s++) r(s)
      },
      o._getParentFromElement = function (t) {
        var n,
        i = a.getSelectorFromElement(t);
        return i && (n = e(i) [0]),
        n || t.parentNode
      },
      o._dataApiKeydownHandler = function (t) {
        if (!(!l.test(t.which) || /button/i.test(t.target.tagName) && 32 === t.which || /input|textarea/i.test(t.target.tagName) || (t.preventDefault(), t.stopPropagation(), this.disabled || e(this).hasClass('disabled')))) {
          var n = o._getParentFromElement(this),
          i = e(n).hasClass('show');
          if (!i && (27 !== t.which || 32 !== t.which) || i && (27 === t.which || 32 === t.which)) {
            if (27 === t.which) {
              var r = e(n).find(u) [0];
              e(r).trigger('focus')
            }
            return void e(this).trigger('click')
          }
          var s = e(n).find('.dropdown-menu .dropdown-item:not(.disabled)').get();
          if (s.length) {
            var a = s.indexOf(t.target);
            38 === t.which && 0 < a && a--,
            40 === t.which && a < s.length - 1 && a++,
            0 > a && (a = 0),
            s[a].focus()
          }
        }
      },
      i(o, null, [
        {
          key: 'VERSION',
          get: function () {
            return '4.1.0'
          }
        },
        {
          key: 'Default',
          get: function () {
            return d
          }
        },
        {
          key: 'DefaultType',
          get: function () {
            return h
          }
        }
      ]),
      o
    }();
    e(document).on(c.KEYDOWN_DATA_API, u, p._dataApiKeydownHandler).on(c.KEYDOWN_DATA_API, '.dropdown-menu', p._dataApiKeydownHandler).on(c.CLICK_DATA_API + ' ' + c.KEYUP_DATA_API, p._clearMenus).on(c.CLICK_DATA_API, u, function (t) {
      t.preventDefault(),
      t.stopPropagation(),
      p._jQueryInterface.call(e(this), 'toggle')
    }).on(c.CLICK_DATA_API, '.dropdown form', function (e) {
      e.stopPropagation()
    }),
    e.fn[t] = p._jQueryInterface,
    e.fn[t].Constructor = p,
    e.fn[t].noConflict = function () {
      return e.fn[t] = s,
      p._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = '.bmd-layout-canvas',
    n = '.bmd-layout-container',
    i = '.bmd-layout-backdrop',
    r = {
      canvas: {
        create: !0,
        required: !0,
        template: '<div class="bmd-layout-canvas"></div>'
      },
      backdrop: {
        create: !0,
        required: !0,
        template: '<div class="bmd-layout-backdrop"></div>'
      }
    };
    return function (s) {
      function a(t, n, i) {
        var o;
        return void 0 === i && (i = {
        }),
        (o = s.call(this, t, e.extend(!0, {
        }, r, n), i) || this).$container = o.findContainer(!0),
        o.$backdrop = o.resolveBackdrop(),
        o.resolveCanvas(),
        o
      }
      o(a, s);
      var l = a.prototype;
      return l.dispose = function (e) {
        s.prototype.dispose.call(this, e),
        this.$container = null,
        this.$backdrop = null
      },
      l.resolveCanvas = function () {
        var e = this.findCanvas(!1);
        return (void 0 === e || 0 === e.length) && (this.config.canvas.create && this.$container.wrap(this.config.canvas.template), e = this.findCanvas(this.config.canvas.required)),
        e
      },
      l.findCanvas = function (n, i) {
        void 0 === n && (n = !0),
        void 0 === i && (i = this.$container);
        var r = i.closest(t);
        return 0 === r.length && n && e.error('Failed to find ' + t + ' for ' + c.describe(i)),
        r
      },
      l.resolveBackdrop = function () {
        var e = this.findBackdrop(!1);
        return (void 0 === e || 0 === e.length) && (this.config.backdrop.create && this.$container.append(this.config.backdrop.template), e = this.findBackdrop(this.config.backdrop.required)),
        e
      },
      l.findBackdrop = function (t, n) {
        void 0 === t && (t = !0),
        void 0 === n && (n = this.$container);
        var r = n.find('> ' + i);
        return 0 === r.length && t && e.error('Failed to find ' + i + ' for ' + c.describe(n)),
        r
      },
      l.findContainer = function (t, i) {
        void 0 === t && (t = !0),
        void 0 === i && (i = this.$element);
        var r = i.closest(n);
        return 0 === r.length && t && e.error('Failed to find ' + n + ' for ' + c.describe(i)),
        r
      },
      a
    }(u)
  }(jQuery)); (function (e) {
    var t = 'drawer',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
      ESCAPE: 27
    },
    a = {
      focusSelector: 'a, button, input'
    },
    l = function (t) {
      function i(n, i) {
        var r;
        return (r = t.call(this, n, e.extend(!0, {
        }, a, i)) || this).$toggles = e('[data-toggle="drawer"][href="#' + r.$element[0].id + '"], [data-toggle="drawer"][data-target="#' + r.$element[0].id + '"]'),
        r._addAria(),
        r.$backdrop.keydown(function (e) {
          e.which === s.ESCAPE && r.hide()
        }).click(function () {
          r.hide()
        }),
        r.$element.keydown(function (e) {
          e.which === s.ESCAPE && r.hide()
        }),
        r.$toggles.click(function () {
          r.toggle()
        }),
        r
      }
      o(i, t);
      var r = i.prototype;
      return r.dispose = function () {
        t.prototype.dispose.call(this, n),
        this.$toggles = null
      },
      r.toggle = function () {
        this._isOpen() ? this.hide()  : this.show()
      },
      r.show = function () {
        if (!this._isForcedClosed() && !this._isOpen()) {
          this.$toggles.attr('aria-expanded', !0),
          this.$element.attr('aria-expanded', !0),
          this.$element.attr('aria-hidden', !1);
          var e = this.$element.find(this.config.focusSelector);
          0 < e.length && e.first().focus(),
          this.$container.addClass('bmd-drawer-in'),
          this.$backdrop.addClass('in')
        }
      },
      r.hide = function () {
        this._isOpen() && (this.$toggles.attr('aria-expanded', !1), this.$element.attr('aria-expanded', !1), this.$element.attr('aria-hidden', !0), this.$container.removeClass('bmd-drawer-in'), this.$backdrop.removeClass('in'))
      },
      r._isOpen = function () {
        return this.$container.hasClass('bmd-drawer-in')
      },
      r._isForcedClosed = function () {
        return this.$container.hasClass('bmd-drawer-out')
      },
      r._addAria = function () {
        var e = this._isOpen();
        this.$element.attr('aria-expanded', e),
        this.$element.attr('aria-hidden', e),
        this.$toggles.length && this.$toggles.attr('aria-expanded', e)
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(g);
    e.fn[i] = l._jQueryInterface,
    e.fn[i].Constructor = l,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      l._jQueryInterface
    }
  }) (jQuery), function (e) {
    var t = 'ripples',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    o = '.ripple-container',
    a = '.ripple-decorator',
    l = {
      container: {
        template: '<div class=\'ripple-container\'></div>'
      },
      decorator: {
        template: '<div class=\'ripple-decorator\'></div>'
      },
      trigger: {
        start: 'mousedown touchstart',
        end: 'mouseup mouseleave touchend'
      },
      touchUserAgentRegex: /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i,
      duration: 500
    },
    u = function () {
      function t(t, n) {
        var i = this;
        this.$element = t,
        this.config = e.extend(!0, {
        }, l, n),
        this.$element.on(this.config.trigger.start, function (e) {
          i._onStartRipple(e)
        })
      }
      var i = t.prototype;
      return i.dispose = function () {
        this.$element.data(n, null),
        this.$element = null,
        this.$container = null,
        this.$decorator = null,
        this.config = null
      },
      i._onStartRipple = function (e) {
        var t = this;
        if (!this._isTouch() || 'mousedown' !== e.type) {
          this._findOrCreateContainer();
          var n = this._getRelY(e),
          i = this._getRelX(e);
          (n || i) && (this.$decorator.css({
            left: i,
            top: n,
            'background-color': this._getRipplesColor()
          }), this._forceStyleApplication(), this.rippleOn(), setTimeout(function () {
            t.rippleEnd()
          }, this.config.duration), this.$element.on(this.config.trigger.end, function () {
            t.$decorator && (t.$decorator.data('mousedown', 'off'), 'off' === t.$decorator.data('animating') && t.rippleOut())
          }))
        }
      },
      i._findOrCreateContainer = function () {
        (!this.$container || 0 < !this.$container.length) && (this.$element.append(this.config.container.template), this.$container = this.$element.find(o)),
        this.$container.append(this.config.decorator.template),
        this.$decorator = this.$container.find(a)
      },
      i._forceStyleApplication = function () {
        return window.getComputedStyle(this.$decorator[0]).opacity
      },
      i._getRelX = function (e) {
        var t = this.$container.offset();
        return this._isTouch() ? 1 === (e = e.originalEvent).touches.length && e.touches[0].pageX - t.left : e.pageX - t.left
      },
      i._getRelY = function (e) {
        var t = this.$container.offset();
        return this._isTouch() ? 1 === (e = e.originalEvent).touches.length && e.touches[0].pageY - t.top : e.pageY - t.top
      },
      i._getRipplesColor = function () {
        return this.$element.data('ripple-color') ? this.$element.data('ripple-color')  : window.getComputedStyle(this.$element[0]).color
      },
      i._isTouch = function () {
        return this.config.touchUserAgentRegex.test(navigator.userAgent)
      },
      i.rippleEnd = function () {
        this.$decorator && (this.$decorator.data('animating', 'off'), 'off' === this.$decorator.data('mousedown') && this.rippleOut(this.$decorator))
      },
      i.rippleOut = function () {
        var e = this;
        this.$decorator.off(),
        c.transitionEndSupported() ? this.$decorator.addClass('ripple-out')  : this.$decorator.animate({
          opacity: 0
        }, 100, function () {
          e.$decorator.trigger('transitionend')
        }),
        this.$decorator.on(c.transitionEndSelector(), function () {
          e.$decorator && (e.$decorator.remove(), e.$decorator = null)
        })
      },
      i.rippleOn = function () {
        var e = this,
        t = this._getNewSize();
        c.transitionEndSupported() ? this.$decorator.css({
          '-ms-transform': 'scale(' + t + ')',
          '-moz-transform': 'scale(' + t + ')',
          '-webkit-transform': 'scale(' + t + ')',
          transform: 'scale(' + t + ')'
        }).addClass('ripple-on').data('animating', 'on').data('mousedown', 'on')  : this.$decorator.animate({
          width: 2 * s(this.$element.outerWidth(), this.$element.outerHeight()),
          height: 2 * s(this.$element.outerWidth(), this.$element.outerHeight()),
          'margin-left': - 1 * s(this.$element.outerWidth(), this.$element.outerHeight()),
          'margin-top': - 1 * s(this.$element.outerWidth(), this.$element.outerHeight()),
          opacity: 0.2
        }, this.config.duration, function () {
          e.$decorator.trigger('transitionend')
        })
      },
      i._getNewSize = function () {
        return s(this.$element.outerWidth(), this.$element.outerHeight()) / this.$decorator.outerWidth() * 2.5
      },
      t._jQueryInterface = function (i) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new t(r, i), r.data(n, o))
        })
      },
      t
    }();
    e.fn[i] = u._jQueryInterface,
    e.fn[i].Constructor = u,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      u._jQueryInterface
    }
  }(jQuery), function (e) {
    var t = 'autofill',
    n = 'bmd.' + t,
    i = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1)),
    r = e.fn[i],
    s = {
    },
    a = function (t) {
      function i(n, i) {
        var r;
        return (r = t.call(this, n, e.extend(!0, {
        }, s, i)) || this)._watchLoading(),
        r._attachEventHandlers(),
        r
      }
      o(i, t);
      var r = i.prototype;
      return r.dispose = function () {
        t.prototype.dispose.call(this, n)
      },
      r._watchLoading = function () {
        var e = this;
        setTimeout(function () {
          clearInterval(e._onLoading)
        }, 10000)
      },
      r._onLoading = function () {
        setInterval(function () {
          e('input[type!=checkbox]').each(function (t, n) {
            var i = e(n);
            i.val() && i.val() !== i.attr('value') && i.trigger('change')
          })
        }, 100)
      },
      r._attachEventHandlers = function () {
        var t = null;
        e(document).on('focus', 'input', function (n) {
          var i = e(n.currentTarget).closest('form').find('input').not('[type=file]');
          t = setInterval(function () {
            i.each(function (t, n) {
              var i = e(n);
              i.val() !== i.attr('value') && i.trigger('change')
            })
          }, 100)
        }).on('blur', '.form-group input', function () {
          clearInterval(t)
        })
      },
      i._jQueryInterface = function (t) {
        return this.each(function () {
          var r = e(this),
          o = r.data(n);
          o || (o = new i(r, t), r.data(n, o))
        })
      },
      i
    }(u);
    e.fn[i] = a._jQueryInterface,
    e.fn[i].Constructor = a,
    e.fn[i].noConflict = function () {
      return e.fn[i] = r,
      a._jQueryInterface
    }
  }(jQuery), Popper.Defaults.modifiers.computeStyle.gpuAcceleration = !1, function (e) {
    var t = 'bootstrapMaterialDesign',
    n = 'bmd.' + t,
    i = t,
    r = e.fn[i],
    o = {
      global: {
        validate: !1,
        label: {
          className: 'bmd-label-static'
        }
      },
      autofill: {
        selector: 'body'
      },
      checkbox: {
        selector: '.checkbox > label > input[type=checkbox]'
      },
      checkboxInline: {
        selector: 'label.checkbox-inline > input[type=checkbox]'
      },
      collapseInline: {
        selector: '.bmd-collapse-inline [data-toggle="collapse"]'
      },
      drawer: {
        selector: '.bmd-layout-drawer'
      },
      file: {
        selector: 'input[type=file]'
      },
      radio: {
        selector: '.radio > label > input[type=radio]'
      },
      radioInline: {
        selector: 'label.radio-inline > input[type=radio]'
      },
      ripples: {
        selector: [
          '.btn:not(.btn-link):not(.ripple-none)',
          '.card-image:not(.ripple-none)',
          '.navbar a:not(.ripple-none)',
          '.dropdown-menu a:not(.ripple-none)',
          '.nav-tabs a:not(.ripple-none)',
          '.pagination li:not(.active):not(.disabled) a:not(.ripple-none)',
          '.ripple'
        ]
      },
      select: {
        selector: [
          'select'
        ]
      },
      switch : {
          selector: '.switch > label > input[type=checkbox]'
      },
      text: {
        selector: [
          'input:not([type=hidden]):not([type=checkbox]):not([type=radio]):not([type=file]):not([type=button]):not([type=submit]):not([type=reset])'
        ]
    },
    textarea: {
      selector: [
        'textarea'
      ]
  },
  arrive: !0,
  instantiation: [
    'ripples',
    'checkbox',
    'checkboxInline',
    'collapseInline',
    'drawer',
    'radio',
    'radioInline',
    'switch',
    'text',
    'textarea',
    'select',
    'autofill'
  ]
},
s = function () {
  function t(t, n) {
    var i = this;
    this.$element = t,
    this.config = e.extend(!0, {
    }, o, n);
    var r = e(document),
    s = function (t) {
      var n = i.config[t];
      if (n) {
        var o = i._resolveSelector(n);
        n = e.extend(!0, {
        }, i.config.global, n);
        var s = 'bmd' + (t.charAt(0).toUpperCase() + t.slice(1));
        try {
          e(o) [s](n),
          document.arrive && i.config.arrive && r.arrive(o, function () {
            e(this) [s](n)
          })
        } catch (t) {
          throw console.error('Failed to instantiate component: $(\'' + o + '\')[' + s + '](' + n + ')', t, '\nSelected elements: ', e(o)),
          t
        }
      }
    },
    a = this.config.instantiation,
    l = Array.isArray(a),
    c = 0;
    for (a = l ? a : a[Symbol.iterator](); ; ) {
      var u;
      if (l) {
        if (c >= a.length) break;
        u = a[c++]
      } else {
        if ((c = a.next()).done) break;
        u = c.value
      }
      s(u)
    }
  }
  var i = t.prototype;
  return i.dispose = function () {
    this.$element.data(n, null),
    this.$element = null,
    this.config = null
  },
  i._resolveSelector = function (e) {
    var t = e.selector;
    return Array.isArray(t) && (t = t.join(', ')),
    t
  },
  t._jQueryInterface = function (i) {
    return this.each(function () {
      var r = e(this),
      o = r.data(n);
      o || (o = new t(r, i), r.data(n, o))
    })
  },
  t
}();
e.fn[i] = s._jQueryInterface,
e.fn[i].Constructor = s,
e.fn[i].noConflict = function () {
  return e.fn[i] = r,
  s._jQueryInterface
}
}(jQuery)
});
