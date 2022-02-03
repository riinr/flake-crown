{
  description = ''A pure nim port of the open simplex noise algorithm from Kurt Spencer'';
  inputs.src-opensimplexnoise-0_2_0.flake = false;
  inputs.src-opensimplexnoise-0_2_0.type = "github";
  inputs.src-opensimplexnoise-0_2_0.owner = "betofloresbaca";
  inputs.src-opensimplexnoise-0_2_0.repo = "nim-opensimplexnoise";
  inputs.src-opensimplexnoise-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-opensimplexnoise-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opensimplexnoise-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opensimplexnoise-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}