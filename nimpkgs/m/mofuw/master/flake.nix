{
  description = ''mofuw is *MO*re *F*aster, *U*ltra *W*ebserver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mofuw-master.flake = false;
  inputs.src-mofuw-master.owner = "2vg";
  inputs.src-mofuw-master.ref   = "refs/heads/master";
  inputs.src-mofuw-master.repo  = "mofuw";
  inputs.src-mofuw-master.type  = "github";
  
  inputs."https://github.com/2vg/mofuparser".owner = "nim-nix-pkgs";
  inputs."https://github.com/2vg/mofuparser".ref   = "master";
  inputs."https://github.com/2vg/mofuparser".repo  = "https://github.com/2vg/mofuparser";
  inputs."https://github.com/2vg/mofuparser".type  = "github";
  inputs."https://github.com/2vg/mofuparser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/2vg/mofuparser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/2vg/mofuhttputils".owner = "nim-nix-pkgs";
  inputs."https://github.com/2vg/mofuhttputils".ref   = "master";
  inputs."https://github.com/2vg/mofuhttputils".repo  = "https://github.com/2vg/mofuhttputils";
  inputs."https://github.com/2vg/mofuhttputils".type  = "github";
  inputs."https://github.com/2vg/mofuhttputils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/2vg/mofuhttputils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mofuw-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mofuw-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}