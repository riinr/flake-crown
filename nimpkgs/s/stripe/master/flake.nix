{
  description = ''Stripe SDK'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stripe-master.flake = false;
  inputs.src-stripe-master.ref   = "refs/heads/master";
  inputs.src-stripe-master.owner = "iffy";
  inputs.src-stripe-master.repo  = "nim-stripe";
  inputs.src-stripe-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stripe-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stripe-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}