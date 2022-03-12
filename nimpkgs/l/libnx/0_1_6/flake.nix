{
  description = ''A port of libnx to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libnx-0_1_6.flake = false;
  inputs.src-libnx-0_1_6.owner = "jyapayne";
  inputs.src-libnx-0_1_6.ref   = "refs/tags/0.1.6";
  inputs.src-libnx-0_1_6.repo  = "nim-libnx";
  inputs.src-libnx-0_1_6.type  = "github";
  
  inputs."https://github.com/genotrance/nimgen".owner = "nim-nix-pkgs";
  inputs."https://github.com/genotrance/nimgen".ref   = "master";
  inputs."https://github.com/genotrance/nimgen".repo  = "https://github.com/genotrance/nimgen";
  inputs."https://github.com/genotrance/nimgen".type  = "github";
  inputs."https://github.com/genotrance/nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/genotrance/nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/jyapayne/switch-build".owner = "nim-nix-pkgs";
  inputs."https://github.com/jyapayne/switch-build".ref   = "master";
  inputs."https://github.com/jyapayne/switch-build".repo  = "https://github.com/jyapayne/switch-build";
  inputs."https://github.com/jyapayne/switch-build".type  = "github";
  inputs."https://github.com/jyapayne/switch-build".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/jyapayne/switch-build".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libnx-0_1_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libnx-0_1_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}