{
  description = ''Microsoft Azure Cloud Computing Platform and Services (MAC) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bluu-0_0_5.flake = false;
  inputs.src-bluu-0_0_5.owner = "disruptek";
  inputs.src-bluu-0_0_5.ref   = "refs/tags/0.0.5";
  inputs.src-bluu-0_0_5.repo  = "bluu";
  inputs.src-bluu-0_0_5.type  = "github";
  
  inputs."https://github.com/disruptek/rest.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/disruptek/rest.git".ref   = "master";
  inputs."https://github.com/disruptek/rest.git".repo  = "https://github.com/disruptek/rest.git";
  inputs."https://github.com/disruptek/rest.git".type  = "github";
  inputs."https://github.com/disruptek/rest.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/rest.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bluu-0_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bluu-0_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}