{
  description = ''Amazon Web Services Signature Version 4'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sigv4-1_2_0.flake = false;
  inputs.src-sigv4-1_2_0.owner = "disruptek";
  inputs.src-sigv4-1_2_0.ref   = "refs/tags/1.2.0";
  inputs.src-sigv4-1_2_0.repo  = "sigv4";
  inputs.src-sigv4-1_2_0.type  = "github";
  
  inputs."https://github.com/jangko/nimsha2".owner = "nim-nix-pkgs";
  inputs."https://github.com/jangko/nimsha2".ref   = "master";
  inputs."https://github.com/jangko/nimsha2".repo  = "https://github.com/jangko/nimsha2";
  inputs."https://github.com/jangko/nimsha2".type  = "github";
  inputs."https://github.com/jangko/nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/jangko/nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/balls".owner = "nim-nix-pkgs";
  inputs."https://github.com/disruptek/balls".ref   = "master";
  inputs."https://github.com/disruptek/balls".repo  = "https://github.com/disruptek/balls";
  inputs."https://github.com/disruptek/balls".type  = "github";
  inputs."https://github.com/disruptek/balls".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sigv4-1_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sigv4-1_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}