{
  description = ''Directory listing tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lq-master.flake = false;
  inputs.src-lq-master.owner = "madprops";
  inputs.src-lq-master.ref   = "refs/heads/master";
  inputs.src-lq-master.repo  = "lq";
  inputs.src-lq-master.type  = "github";
  
  inputs."nap".dir   = "nimpkgs/n/nap";
  inputs."nap".owner = "riinr";
  inputs."nap".ref   = "flake-pinning";
  inputs."nap".repo  = "flake-nimble";
  inputs."nap".type  = "github";
  inputs."nap".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nap".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml".dir   = "nimpkgs/p/parsetoml";
  inputs."parsetoml".owner = "riinr";
  inputs."parsetoml".ref   = "flake-pinning";
  inputs."parsetoml".repo  = "flake-nimble";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lq-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lq-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}