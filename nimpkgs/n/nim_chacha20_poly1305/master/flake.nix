{
  description = ''xchacha20_poly1305, chacha20, poly1305'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nim_chacha20_poly1305-master.flake = false;
  inputs.src-nim_chacha20_poly1305-master.type = "github";
  inputs.src-nim_chacha20_poly1305-master.owner = "lantos-lgtm";
  inputs.src-nim_chacha20_poly1305-master.repo = "nim_chacha20_poly1305";
  inputs.src-nim_chacha20_poly1305-master.ref = "refs/heads/master";
  
  
  inputs."stint".type = "github";
  inputs."stint".owner = "riinr";
  inputs."stint".repo = "flake-nimble";
  inputs."stint".ref = "flake-pinning";
  inputs."stint".dir = "nimpkgs/s/stint";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nim_chacha20_poly1305-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_chacha20_poly1305-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nim_chacha20_poly1305-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}