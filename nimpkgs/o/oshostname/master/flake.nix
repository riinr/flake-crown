{
  description = ''Get the current hostname with gethostname(2)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oshostname-master.flake = false;
  inputs.src-oshostname-master.ref   = "refs/heads/master";
  inputs.src-oshostname-master.owner = "jrfondren";
  inputs.src-oshostname-master.repo  = "nim-oshostname";
  inputs.src-oshostname-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oshostname-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oshostname-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}