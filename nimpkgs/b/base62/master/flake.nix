{
  description = ''Arbitrary base encoding-decoding functions, defaulting to Base-62.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-base62-master.flake = false;
  inputs.src-base62-master.owner = "singularperturbation";
  inputs.src-base62-master.ref   = "refs/heads/master";
  inputs.src-base62-master.repo  = "base62-encode";
  inputs.src-base62-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-base62-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-base62-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}