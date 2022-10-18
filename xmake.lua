add_rules("mode.debug", "mode.release")

target("hello")
    set_kind("static")
    set_targetdir(path.translate("~/tmpdir/with space"))
    add_files("lib/*.c")

target("main")
    set_kind("binary")
    add_files("src/*.c")
    add_includedirs("lib")
    add_ldflags(path.translate("~/tmpdir/with space/libhello.a"), {force = true})

target("hello2")
    set_kind("static")
    set_targetdir(path.translate("~/tmpdir/nospace"))
    add_files("lib/*.c")

target("main2")
    set_kind("binary")
    add_files("src/*.c")
    add_includedirs("lib")
    add_ldflags(path.translate("~/tmpdir/nospace/libhello2.a"), {force = true})
