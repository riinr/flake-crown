{
  inputs.nimrevs.url     = "github:riinr/flake-crown?dir=pkgsRev";
  inputs.nixpkgsMast.url = "github:NixOS/nixpkgs";
  inputs.nixpkgs2205.url = "github:NixOS/nixpkgs/22.05";
  inputs.nixpkgs2211.url = "github:NixOS/nixpkgs/22.11";
  inputs.nixpkgsClin.url = "github:vbgl/nixpkgs/clasp-is-clingo";

  outputs = inputs:
  let mkPkg  = nixpkgsVersion:
    let
      pkgs   = nixpkgsVersion.legacyPackages.x86_64-linux;
      toFlag = builtins.map (src: "-p:${src}");
      deps   = inputs.nimrevs.lib.srcs {
        inherit pkgs;
        nimPkgs = [
          "hcparse"     # this is nice http://www.plantuml.com/plantuml/uml/xPLH3i8W38RVFGKNy0YQ7S4hC22ZEWgX9OintbrmSs5UO9ZunDylVVXI6kY8PUJaneCG6eOeWnMNso0UkLOUbK6Eais9Op8PMHLa92EEvq_yWWv85LJE0iYQSQp1bJpUQz0RL7P34eBoskY-Xawgw1F3I3MTWEtM0C5bO-3IjkOTrROEkPB4fMrEpOY5407VOdFQyp8hWuRcLMlfA2V0eT0bjh7yJSshqc9QtuebDYBsN_iVNVldeJEeyx_r0W==
          "libp2p"      # this is cool http://www.plantuml.com/plantuml/uml/xLR1RiCW3BttA_Y17HPfkstg9-mF9aAyXeK0mewgTjg_3ogM4f8sgRPJr1EFvsTRnfQJBH9trBLgmrWbTuxRchqrE_Rbxy9e0PeS9tWXru6db2njOTd3QqG3gWLoKg3d8Wgag9tH9f0H1R8ciXr95UWU1qEd9H4W5Ra12VQU2qUkI-9Ue9Svby0TOdY8Y7BjkT9fzagQiqZBLhY39JDWRyYzoWVTGub6D9wBwD-BIk8kKwMDIkZPeXBjYbgLLoM5WhwmqoMOWlgtjXvFfkrTFj7eTmGdkP97Jj9eBncJCwLSSCZ2ZWHfY5lIZRGV70d90Mz3wSajzynCLt9aodNEqj6l0C-4O_46hJGA9Vs7QRXyGTZYwRbvFBKdujas9hhfnNmVzlkm_s7OlpTRq9N_lVe1
          # top nim packages
          "unittest2"   # 1
          "stew"        # 2
          "unicodedb"   # 3
          "regex"       # 4
          "bearssl"     # 5
          "cligen"      # 6
          "httputils"   # 7
          "chronos"     # 8
          "nimcrypto"   # 9
          "faststreams" # 10
        ];
        verbose = true;
      };
    in
    pkgs.nimPackages.buildNimPackage {
      nimBinOnly  = true;
      nimFlags    = toFlag deps;
      pname       = "cligen-example";
      src         = ./.;
      version     = "0.1.0";
      meta.ref     = "master";
      meta.version = "0.1.0";
      meta.name    = "cligen-example";
      meta.desc    = "Example of cligen";
    };
  in
  {
    packages.x86_64-linux.default     = mkPkg inputs.nixpkgs2205;
    packages.x86_64-linux.nixpkgs2211 = mkPkg inputs.nixpkgs2211;
    packages.x86_64-linux.nixpkgsMast = mkPkg inputs.nixpkgsMast;
    packages.x86_64-linux.nixpkgs2205 = mkPkg inputs.nixpkgs2205;
    packages.x86_64-linux.nixpkgsClin = mkPkg inputs.nixpkgsClin;
  };
}
